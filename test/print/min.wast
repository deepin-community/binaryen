(module
  (type $0 (func (param f32) (result f32)))
  (type $1 (func (param i32 i32) (result f32)))
  (type $2 (func (param i32) (result i32)))
  (type $3 (func (param i32 i32 i32) (result i32)))
  (memory $0 256 256)
  (export "floats" (func $floats))
  (func $floats (type $0) (param $f f32) (result f32)
    (local $t f32)
    (f32.add
      (local.get $t)
      (local.get $f)
    )
  )
  (func $neg (type $1) (param $k i32) (param $p i32) (result f32)
    (local $n f32)
    (local.tee $n
      (f32.neg
        (block $block0 (result f32)
          (i32.store
            (local.get $k)
            (local.get $p)
          )
          (f32.load
            (local.get $k)
          )
        )
      )
    )
  )
  (func $littleswitch (type $2) (param $x i32) (result i32)
    (block $topmost (result i32)
      (block $switch-case$2
        (block $switch-case$1
          (br_table $switch-case$1 $switch-case$2 $switch-case$1
            (i32.sub
              (local.get $x)
              (i32.const 1)
            )
          )
        )
        (br $topmost
          (i32.const 1)
        )
      )
      (br $topmost
        (i32.const 2)
      )
      (i32.const 0)
    )
  )
  (func $f1 (type $3) (param $i1 i32) (param $i2 i32) (param $i3 i32) (result i32)
    (block $topmost (result i32)
      (local.get $i3)
    )
  )
)
