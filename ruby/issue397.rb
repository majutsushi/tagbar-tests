# Exuberant Ctags incorrectly reports the LowMethods module to be inside the
# copy_entry function, with scope 'class'.

module FileUtils
  def copy_entry(src, dest, preserve = false, dereference_root = false, remove_destination = false)
    Entry_.new(src, nil, dereference_root).wrap_traverse(proc do |ent|
      destent = Entry_.new(dest, ent.rel, false)
      File.unlink destent.path if remove_destination && File.file?(destent.path)
      ent.copy destent.path
    end, proc do |ent|
      destent = Entry_.new(dest, ent.rel, false)
      ent.copy_metadata destent.path if preserve
    end)
  end
  module_function :copy_entry

  LOW_METHODS = singleton_methods(false) - collect_method(:noop).map(&:intern)
  module LowMethods
    private
    def _do_nothing(*)end
    ::FileUtils::LOW_METHODS.map {|name| alias_method name, :_do_nothing}
  end
end
