class Test1
  def meth1
    def meth2
      puts "Yay"
    end
    meth2
  end
end

Test1.new.meth1

def meth3
  def meth4
    puts "Yay"
  end
  meth4
end
