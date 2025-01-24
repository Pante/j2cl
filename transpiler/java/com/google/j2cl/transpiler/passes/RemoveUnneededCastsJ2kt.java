/*
 * Copyright 2024 Google Inc.
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
package com.google.j2cl.transpiler.passes;

import com.google.j2cl.transpiler.ast.AbstractRewriter;
import com.google.j2cl.transpiler.ast.CastExpression;
import com.google.j2cl.transpiler.ast.CompilationUnit;
import com.google.j2cl.transpiler.ast.Expression;
import com.google.j2cl.transpiler.ast.Node;

/** Removes casts which are unneeded in J2KT. */
public class RemoveUnneededCastsJ2kt extends NormalizationPass {

  @Override
  public void applyTo(CompilationUnit compilationUnit) {
    compilationUnit.accept(
        new AbstractRewriter() {
          @Override
          public Node rewriteCastExpression(CastExpression castExpression) {
            Expression innerExpression = castExpression.getExpression();
            if (!(innerExpression instanceof CastExpression)) {
              return castExpression;
            }

            // Deduplicate casts of the same base type.
            CastExpression innerCastExpression = (CastExpression) innerExpression;
            if (!castExpression
                .getCastTypeDescriptor()
                .toRawTypeDescriptor()
                .isSameBaseType(
                    innerCastExpression.getCastTypeDescriptor().toRawTypeDescriptor())) {
              return castExpression;
            }

            return CastExpression.Builder.from(castExpression)
                .setExpression(innerCastExpression.getExpression())
                .build();
          }
        });
  }
}
