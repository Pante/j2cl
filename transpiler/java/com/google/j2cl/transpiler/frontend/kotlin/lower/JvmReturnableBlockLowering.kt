/*
 * Copyright 2010-2024 JetBrains s.r.o. and Kotlin Programming Language contributors.
 * Use of this source code is governed by the Apache 2.0 license that can be found in the license/LICENSE.txt file.
 */

package com.google.j2cl.transpiler.frontend.kotlin.lower

import org.jetbrains.kotlin.backend.common.BodyLoweringPass
import org.jetbrains.kotlin.backend.common.lower.ReturnableBlockTransformer
import org.jetbrains.kotlin.backend.jvm.JvmBackendContext
import org.jetbrains.kotlin.ir.declarations.IrDeclaration
import org.jetbrains.kotlin.ir.declarations.IrSymbolOwner
import org.jetbrains.kotlin.ir.expressions.IrBody

/**
 * Replaces returnable blocks with do-while(false) loops.
 *
 * Based on org.jetbrains.kotlin.backend.jvm.lower.JvmReturnableBlockLowering
 */
internal class J2CLReturnableBlockLowering(val context: JvmBackendContext) : BodyLoweringPass {
  override fun lower(irBody: IrBody, container: IrDeclaration) {
    val unused =
      container.transform(
        ReturnableBlockTransformer(context, (container as IrSymbolOwner).symbol),
        null,
      )
  }
}
