;;; See Line ~526 for actual benchmark code.

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmarkLauncher.itable (ref $itable) (global.get $itable.empty))

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo.itable (ref $itable) (global.get $itable.empty))

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar.itable (ref $itable) (global.get $itable.empty))

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz.itable (ref $itable) (global.get $itable.empty))

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo.itable (ref $itable) (global.get $itable.empty))

(global $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.itable (ref $itable) (global.get $itable.empty))

;;; String Baz.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_13__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; String Zoo.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_14__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; String DynamicClassDispatchRandomBenchmark.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_15__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; String Bar.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_16__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; String DynamicClassDispatchRandomBenchmarkLauncher.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmarkLauncher
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_17__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; String Foo.$getString_|com.google.j...|()
(func $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (result (ref null $java.lang.String))
 (block
  (return (call $$getString_|com.google.j...|_18__java_lang_String_<once>_@wasm.stringLiteral.StringLiteralHolder ))
 )
)


;;; Code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo [methods]

;;; Foo Foo.$create()
(func $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (result (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
 (local $$instance (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (local.set $$instance (struct.new $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (global.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo.vtable) (global.get $itable.empty) (i32.const 0) (i32.const 0)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (call $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Foo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (ref.as_non_null (local.get $$instance)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (return (local.get $$instance))
 )
)

;;; void Foo.$ctor()
(func $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Foo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (call $$ctor__void_$p_java_lang_Object@java.lang.Object (ref.as_non_null (local.get $this)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (call $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Foo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (ref.as_non_null (local.get $this)))
 )
)

;;; int Foo.hashCode()
(func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (type $function.m_hashCode__int)
 (param $this.untyped (ref $java.lang.Object))
 (result i32)
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:71:15
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:72:6
  (return (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (local.get $this)))
 )
)
(elem declare func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo)

;;; void Foo.$init()
(func $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Foo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:68:4
  (struct.set $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (local.get $this) (if (result i32) (f64.gt (call $m_random__double@java.lang.Math ) (f64.const 0.0)) (then (i32.const 42)) (else (i32.const 0))))
 )
)

;;; void Foo.$clinit()
(func $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (if (global.get $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo)
   (then
    ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
    (return )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (global.set $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (i32.const 1))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:67:15
  (call $$clinit__void_<once>_@java.lang.Object )
 )
)

;;; Class<T> Foo.$getClassMetadata()
(func $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (result (ref null $java.lang.Class))
 (block
  (if (i32.eqz (ref.is_null (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo)))
   (then
    (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
   )
  )
  (global.set $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo (call $m_createForClass__java_lang_String__java_lang_Class__java_lang_Class@java.lang.Class (call $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo )(call $$getClassMetadata__java_lang_Class_<once>_@java.lang.Object )))
  (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 )
)

;;; Class<?> Foo.$getClassImpl()
(func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo
 (type $function.$getClassImpl__java_lang_Class)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Class))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo) (local.get $this.untyped)))
 (block
  (return (call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo ))
 )
)
(elem declare func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo)
;;; End of code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo [methods]
;;; Code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar [methods]

;;; Bar Bar.$create()
(func $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (result (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
 (local $$instance (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (local.set $$instance (struct.new $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (global.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar.vtable) (global.get $itable.empty) (i32.const 0) (i32.const 0)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (call $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Bar@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (ref.as_non_null (local.get $$instance)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (return (local.get $$instance))
 )
)

;;; void Bar.$ctor()
(func $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Bar@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (call $$ctor__void_$p_java_lang_Object@java.lang.Object (ref.as_non_null (local.get $this)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (call $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Bar@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (ref.as_non_null (local.get $this)))
 )
)

;;; int Bar.hashCode()
(func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (type $function.m_hashCode__int)
 (param $this.untyped (ref $java.lang.Object))
 (result i32)
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:80:15
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:81:6
  (return (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (local.get $this)))
 )
)
(elem declare func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar)

;;; void Bar.$init()
(func $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Bar@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:77:4
  (struct.set $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (local.get $this) (if (result i32) (f64.gt (call $m_random__double@java.lang.Math ) (f64.const 0.0)) (then (i32.const 43)) (else (i32.const 0))))
 )
)

;;; void Bar.$clinit()
(func $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (if (global.get $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar)
   (then
    ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
    (return )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (global.set $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (i32.const 1))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:76:15
  (call $$clinit__void_<once>_@java.lang.Object )
 )
)

;;; Class<T> Bar.$getClassMetadata()
(func $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (result (ref null $java.lang.Class))
 (block
  (if (i32.eqz (ref.is_null (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar)))
   (then
    (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
   )
  )
  (global.set $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar (call $m_createForClass__java_lang_String__java_lang_Class__java_lang_Class@java.lang.Class (call $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar )(call $$getClassMetadata__java_lang_Class_<once>_@java.lang.Object )))
  (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 )
)

;;; Class<?> Bar.$getClassImpl()
(func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar
 (type $function.$getClassImpl__java_lang_Class)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Class))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar) (local.get $this.untyped)))
 (block
  (return (call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar ))
 )
)
(elem declare func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar)
;;; End of code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar [methods]
;;; Code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz [methods]

;;; Baz Baz.$create()
(func $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (result (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
 (local $$instance (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (local.set $$instance (struct.new $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (global.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz.vtable) (global.get $itable.empty) (i32.const 0) (i32.const 0)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (call $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Baz@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (ref.as_non_null (local.get $$instance)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (return (local.get $$instance))
 )
)

;;; void Baz.$ctor()
(func $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Baz@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (call $$ctor__void_$p_java_lang_Object@java.lang.Object (ref.as_non_null (local.get $this)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (call $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Baz@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (ref.as_non_null (local.get $this)))
 )
)

;;; int Baz.hashCode()
(func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (type $function.m_hashCode__int)
 (param $this.untyped (ref $java.lang.Object))
 (result i32)
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:89:15
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:90:6
  (return (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (local.get $this)))
 )
)
(elem declare func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz)

;;; void Baz.$init()
(func $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Baz@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:86:4
  (struct.set $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (local.get $this) (if (result i32) (f64.gt (call $m_random__double@java.lang.Math ) (f64.const 0.0)) (then (i32.const 44)) (else (i32.const 0))))
 )
)

;;; void Baz.$clinit()
(func $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (if (global.get $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz)
   (then
    ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
    (return )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (global.set $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (i32.const 1))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:85:15
  (call $$clinit__void_<once>_@java.lang.Object )
 )
)

;;; Class<T> Baz.$getClassMetadata()
(func $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (result (ref null $java.lang.Class))
 (block
  (if (i32.eqz (ref.is_null (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz)))
   (then
    (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
   )
  )
  (global.set $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz (call $m_createForClass__java_lang_String__java_lang_Class__java_lang_Class@java.lang.Class (call $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz )(call $$getClassMetadata__java_lang_Class_<once>_@java.lang.Object )))
  (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 )
)

;;; Class<?> Baz.$getClassImpl()
(func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz
 (type $function.$getClassImpl__java_lang_Class)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Class))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz) (local.get $this.untyped)))
 (block
  (return (call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz ))
 )
)
(elem declare func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz)
;;; End of code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz [methods]
;;; Code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo [methods]

;;; Zoo Zoo.$create()
(func $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (result (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
 (local $$instance (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (local.set $$instance (struct.new $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (global.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo.vtable) (global.get $itable.empty) (i32.const 0) (i32.const 0)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (call $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Zoo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (ref.as_non_null (local.get $$instance)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (return (local.get $$instance))
 )
)

;;; void Zoo.$ctor()
(func $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Zoo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (call $$ctor__void_$p_java_lang_Object@java.lang.Object (ref.as_non_null (local.get $this)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (call $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Zoo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (ref.as_non_null (local.get $this)))
 )
)

;;; int Zoo.hashCode()
(func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (type $function.m_hashCode__int)
 (param $this.untyped (ref $java.lang.Object))
 (result i32)
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:98:15
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:99:6
  (return (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (local.get $this)))
 )
)
(elem declare func $m_hashCode__int@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo)

;;; void Zoo.$init()
(func $$init__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark_Zoo@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:95:4
  (struct.set $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo $number@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (local.get $this) (if (result i32) (f64.gt (call $m_random__double@java.lang.Math ) (f64.const 0.0)) (then (i32.const 45)) (else (i32.const 0))))
 )
)

;;; void Zoo.$clinit()
(func $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (if (global.get $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo)
   (then
    ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
    (return )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (global.set $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (i32.const 1))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:94:15
  (call $$clinit__void_<once>_@java.lang.Object )
 )
)

;;; Class<T> Zoo.$getClassMetadata()
(func $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (result (ref null $java.lang.Class))
 (block
  (if (i32.eqz (ref.is_null (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo)))
   (then
    (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
   )
  )
  (global.set $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo (call $m_createForClass__java_lang_String__java_lang_Class__java_lang_Class@java.lang.Class (call $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo )(call $$getClassMetadata__java_lang_Class_<once>_@java.lang.Object )))
  (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 )
)

;;; Class<?> Zoo.$getClassImpl()
(func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo
 (type $function.$getClassImpl__java_lang_Class)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Class))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo) (local.get $this.untyped)))
 (block
  (return (call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo ))
 )
)
(elem declare func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo)
;;; End of code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo [methods]
;;; Code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark [methods]

;;; DynamicClassDispatchRandomBenchmark DynamicClassDispatchRandomBenchmark.$create()
(func $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (result (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
 (local $$instance (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (local.set $$instance (struct.new $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (global.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.vtable) (global.get $itable.empty) (i32.const 0) (ref.null $javaemul.internal.WasmArray.OfObject)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (call $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (ref.as_non_null (local.get $$instance)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (return (local.get $$instance))
 )
)

;;; void DynamicClassDispatchRandomBenchmark.$ctor()
(func $$ctor__void_$p_com_google_j2cl_benchmarks_jre_DynamicClassDispatchRandomBenchmark@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (param $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (call $$ctor__void_$p_com_google_j2cl_benchmarking_framework_AbstractBenchmark@com.google.j2cl.benchmarking.framework.AbstractBenchmark (ref.as_non_null (local.get $this)))
 )
)

;;; Object DynamicClassDispatchRandomBenchmark.run()
(func $m_run__java_lang_Object@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (type $function.m_run__java_lang_Object)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Object))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:30:16
 (local $count i32)
 (local $i i32)
 (local $$qualifier (ref null $java.lang.Object))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:31:4
  (local.set $count (i32.const 0))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:32:4
  (local.set $i (i32.const 0))
  (block $LOOP.BREAK
   (loop
    (br_if 1 (i32.eqz (i32.lt_s (local.get $i) (array.len (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this)))))))
    (block $LOOP.CONTINUE
     (block
      ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:35:6
      (local.set $count (i32.add (local.get $count) (block (result i32)
       (local.set $$qualifier (array.get $java.lang.Object.array (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this))) (local.get $i)))
       (call_ref $function.m_hashCode__int (ref.as_non_null (local.get $$qualifier))(struct.get $java.lang.Object.vtable $m_hashCode__int (struct.get $java.lang.Object $vtable(local.get $$qualifier))))
      )))
     )
    )
    (local.set $i (i32.add (local.get $i) (i32.const 1)))
    (br 0)
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:38:4
  (if (i32.eq (local.get $count) (i32.const 43500))
   (then
    (block
     ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:39:6
     (throw $exception.event (call $m_toJs__java_lang_Throwable__javaemul_internal_ThrowableUtils_JsObject@javaemul.internal.Exceptions (call $$create__@java.lang.AssertionError )))
    )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:42:4
  (return (ref.null $java.lang.Object))
 )
)
(elem declare func $m_run__java_lang_Object@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)

;;; void DynamicClassDispatchRandomBenchmark.setupOneTime()
(func $m_setupOneTime__void@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (type $function.m_setupOneTime__void)
 (param $this.untyped (ref $java.lang.Object))
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:46:14
 (local $i i32)
 (local $$expression i32)
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark) (local.get $this.untyped)))
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:47:4
  (struct.set $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this) (call $m_newWithLength__int__javaemul_internal_WasmArray_OfObject@javaemul.internal.WasmArray.OfObject (i32.const 1000)))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:48:4
  (local.set $i (i32.const 0))
  (block $LOOP.BREAK
   (loop
    (br_if 1 (i32.eqz (i32.lt_s (local.get $i) (array.len (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this)))))))
    (block $LOOP.CONTINUE
     (block
      ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:49:6
      (block $SWITCH.BREAK
       (block
        ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:49:6
        (local.set $$expression (call_ref $function.m_nextInt__int__int (ref.as_non_null (global.get $random@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))(i32.const 4)(struct.get $java.util.Random.vtable $m_nextInt__int__int (struct.get $java.util.Random $vtable(global.get $random@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)))))
        ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:49:6
        (block
         (block
          (block
           (block
            (block
             (block ;; evaluate expression and jump
              (br_table 0 1 2 3 4 (local.get $$expression))
             )
             ;; case 0:
             ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:51:10
             (array.set $java.lang.Object.array (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this))) (local.get $i) (call $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Foo ))
             ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:52:10
             (br $SWITCH.BREAK)
            )
            ;; case 1:
            ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:54:10
            (array.set $java.lang.Object.array (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this))) (local.get $i) (call $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Bar ))
            ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:55:10
            (br $SWITCH.BREAK)
           )
           ;; case 2:
           ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:57:10
           (array.set $java.lang.Object.array (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this))) (local.get $i) (call $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Baz ))
           ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:58:10
           (br $SWITCH.BREAK)
          )
          ;; case 3:
          ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:60:10
          (array.set $java.lang.Object.array (struct.get $javaemul.internal.WasmArray.OfObject $elements@javaemul.internal.WasmArray.OfObject (struct.get $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark $array@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (local.get $this))) (local.get $i) (call $$create__@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark.Zoo ))
          ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:61:10
          (br $SWITCH.BREAK)
         )
         ;; default:
        )
       )
      )
     )
    )
    (local.set $i (i32.add (local.get $i) (i32.const 1)))
    (br 0)
   )
  )
 )
)
(elem declare func $m_setupOneTime__void@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)

;;; void DynamicClassDispatchRandomBenchmark.$clinit()
(func $$clinit__void_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
 (block
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (if (global.get $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)
   (then
    ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
    (return )
   )
  )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (global.set $$class-initialized@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (i32.const 1))
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:23:19
  (call $$clinit__void_<once>_@com.google.j2cl.benchmarking.framework.AbstractBenchmark )
  ;;@ benchmarking/java/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark_lib-j2wasm.js/com/google/j2cl/benchmarks/jre/DynamicClassDispatchRandomBenchmark.java:25:2
  (global.set $random@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (call $$create__long@java.util.Random (i64.const 42)))
 )
)

;;; Class<T> DynamicClassDispatchRandomBenchmark.$getClassMetadata()
(func $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (result (ref null $java.lang.Class))
 (block
  (if (i32.eqz (ref.is_null (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)))
   (then
    (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
   )
  )
  (global.set $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark (call $m_createForClass__java_lang_String__java_lang_Class__java_lang_Class@java.lang.Class (call $$getString_|com.google.j...|__java_lang_String_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark )(call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarking.framework.AbstractBenchmark )))
  (return (global.get $$class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 )
)

;;; Class<?> DynamicClassDispatchRandomBenchmark.$getClassImpl()
(func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark
 (type $function.$getClassImpl__java_lang_Class)
 (param $this.untyped (ref $java.lang.Object))
 (result (ref null $java.lang.Class))
 (local $this (ref null $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark))
 (local.set $this (ref.cast (ref $com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark) (local.get $this.untyped)))
 (block
  (return (call $$getClassMetadata__java_lang_Class_<once>_@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark ))
 )
)
(elem declare func $$getClassImpl__java_lang_Class@com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark)
;;; End of code for com.google.j2cl.benchmarks.jre.DynamicClassDispatchRandomBenchmark [methods]