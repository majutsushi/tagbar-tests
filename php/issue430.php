<?php

namespace AAA
{
    interface AnInterface
    {
        public function aMethod(string $param);
    }
}

namespace AAA\BBB
{
    use ZZZ\Qlass;
    use AAA\AnInterface;
    class BClass implements AnInterface
    {
        private $a;
        use Qlass;
        public function aMethod(string $param)
        {
        }
    }
}

namespace ZZZ
{
    trait Qlass
    {
        public function traitMethod()
        {
        }
    }
}
