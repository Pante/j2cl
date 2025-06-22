/*
 * Copyright 2022 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.AbstractBenchmark;

import javax.annotation.Nullable;
import java.util.*;

/** A benchmark that measures downcasting performance. */
public final class CastBenchmark extends AbstractBenchmark {

  private static final Random random = new Random(42);
  private Object[] array;

  @Nullable
  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      var object = array[i];
      if (object instanceof Foo) {
        count += ((Foo) object).foo();
      } else if (object instanceof Far) {
        count += ((Far) object).far();
      } else if (object instanceof Bar) {
        count += ((Bar) object).bar();
      } else if (object instanceof Baz) {
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
      switch (random.nextInt(4)) {
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