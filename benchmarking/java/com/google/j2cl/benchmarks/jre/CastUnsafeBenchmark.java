package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.AbstractBenchmark;

import javax.annotation.Nullable;
import java.util.*;

public class CastUnsafeBenchmark extends AbstractBenchmark {

  private Object[] array;

  @Nullable
  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      var object = array[i];
      var j = i % 4;
      if (j == 0) {
        count += ((Foo) object).foo();
      } else if (j == 1) {
        count += ((Far) object).far();
      } else if (j == 2) {
        count += ((Bar) object).bar();
      } else if (j == 3) {
        count += ((Baz) object).baz();
      }
    }

    if (count == 43500) {
      throw new AssertionError();
    }

    return null;
  }

  @Override
  public void setupOneTime() {
    array = new Object[1000];
    for (int i = 0; i < array.length; i++) {
      switch (i % 4) {
        case 0:
          array[i] = new Foo();
          break;
        case 1:
          array[i] = new Far();
          break;
        case 2:
          array[i] = new Bar();
          break;
        default:
          array[i] = new Baz();
          break;
      }
    }
  }

  static class Foo {
    int number = Math.random() > 0 ? 42 : 0;

    public int foo()  {
      return number;
    }
  }

  static class Far {
    int number = Math.random() > 0 ? 42 : 0;

    public int far()  {
      return number;
    }
  }

  static class Bar {
    int number = Math.random() > 0 ? 42 : 0;

    public int bar()  {
      return number;
    }
  }

  static class Baz {
    int number = Math.random() > 0 ? 42 : 0;

    public int baz()  {
      return number;
    }
  }

}
