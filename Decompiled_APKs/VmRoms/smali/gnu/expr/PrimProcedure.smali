.class public Lgnu/expr/PrimProcedure;
.super Lgnu/mapping/MethodProc;
.source "PrimProcedure.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field member:Ljava/lang/reflect/Member;

.field method:Lgnu/bytecode/Method;

.field mode:C

.field op_code:I

.field retType:Lgnu/bytecode/Type;

.field sideEffectFree:Z

.field source:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 756
    const-class v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 3
    .parameter "op_code"
    .parameter "classtype"
    .parameter "name"
    .parameter "retType"
    .parameter "argTypes"

    .prologue
    const/16 v2, 0xb8

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 429
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 430
    if-ne p1, v2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, p3, v0, p5, p4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 432
    iput-object p4, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 433
    iput-object p5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 434
    if-ne p1, v2, :cond_1

    move v0, v1

    :goto_1
    iput-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 435
    return-void

    :cond_0
    move v0, v1

    .line 430
    goto :goto_0

    .line 434
    :cond_1
    const/16 v0, 0x56

    goto :goto_1
.end method

.method public constructor <init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "opcode"
    .parameter "retType"
    .parameter "argTypes"

    .prologue
    .line 403
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 404
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 405
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 406
    iput-object p3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 407
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 308
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 309
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 310
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 312
    return-void

    .line 310
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V
    .locals 7
    .parameter "method"
    .parameter "mode"
    .parameter "language"

    .prologue
    const/4 v6, 0x0

    .line 320
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 321
    iput-char p2, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 323
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 327
    iget-object v4, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 328
    .local v4, pTypes:[Lgnu/bytecode/Type;
    array-length v3, v4

    .line 329
    .local v3, nTypes:I
    const/4 v5, 0x0

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 330
    move v0, v3

    .local v0, i:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 332
    aget-object v1, v4, v0

    .line 333
    .local v1, javaType:Lgnu/bytecode/Type;
    invoke-virtual {p3, v1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 334
    .local v2, langType:Lgnu/bytecode/Type;
    if-eq v1, v2, :cond_0

    .line 336
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_1

    .line 338
    new-array v5, v3, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 339
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v4, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_1
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aput-object v2, v5, v0

    goto :goto_0

    .line 344
    .end local v1           #javaType:Lgnu/bytecode/Type;
    .end local v2           #langType:Lgnu/bytecode/Type;
    :cond_2
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_3

    .line 345
    iput-object v4, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 346
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 347
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 360
    :cond_4
    :goto_1
    return-void

    .line 348
    :cond_5
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 349
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1

    .line 352
    :cond_6
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {p3, v5}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v5

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 357
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v5, v6, :cond_4

    .line 358
    sget-object v5, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    iput-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V
    .locals 1
    .parameter "method"
    .parameter "source"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 398
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 399
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    .line 400
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V
    .locals 1
    .parameter "method"
    .parameter "language"

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "className"
    .parameter "methodName"
    .parameter "numArgs"

    .prologue
    .line 298
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Lgnu/expr/Language;)V
    .locals 1
    .parameter "method"
    .parameter "language"

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 305
    return-void
.end method

.method private compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 25
    .parameter "args"
    .parameter "startArg"
    .parameter "thisType"
    .parameter "comp"

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v21

    .line 460
    .local v21, variable:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->getName()Ljava/lang/String;

    move-result-object v17

    .line 461
    .local v17, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 462
    .local v7, arg_type:Lgnu/bytecode/Type;
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    .line 463
    .local v8, code:Lgnu/bytecode/CodeAttr;
    sget-object v22, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    move/from16 v19, v22

    .line 464
    .local v19, skipArg:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    sub-int v6, v22, v19

    .line 465
    .local v6, arg_count:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 466
    add-int/lit8 v6, v6, -0x1

    .line 467
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v18, v22, p2

    .line 468
    .local v18, nargs:I
    if-eqz p3, :cond_1

    if-eqz v19, :cond_8

    :cond_1
    const/16 v22, 0x1

    move/from16 v14, v22

    .line 474
    .local v14, is_static:Z
    :goto_1
    const/4 v9, 0x0

    .line 475
    .local v9, createVarargsArrayIfNeeded:Z
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_3

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_3

    if-eqz v14, :cond_9

    const/16 v22, 0x0

    :goto_2
    add-int v22, v22, v6

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 479
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    aget-object v22, p1, v22

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v16

    .line 480
    .local v16, lastType:Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v15, v22, v23

    .line 481
    .local v15, lastParam:Lgnu/bytecode/Type;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object v0, v15

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    check-cast v15, Lgnu/bytecode/ArrayType;

    .end local v15           #lastParam:Lgnu/bytecode/Type;
    invoke-virtual {v15}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 486
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 487
    const/4 v9, 0x1

    .line 488
    :cond_2
    const/16 v21, 0x0

    .line 491
    .end local v16           #lastType:Lgnu/bytecode/Type;
    :cond_3
    if-eqz v21, :cond_b

    if-eqz v14, :cond_a

    const/16 v22, 0x1

    :goto_3
    sub-int v22, v6, v22

    move/from16 v12, v22

    .line 492
    .local v12, fix_arg_count:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const/16 v22, 0x0

    move-object/from16 v4, v22

    .line 493
    .local v4, argDecl:Lgnu/expr/Declaration;
    :goto_5
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 494
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 495
    :cond_4
    const/4 v13, 0x0

    .line 497
    .local v13, i:I
    :goto_6
    if-eqz v21, :cond_e

    if-ne v13, v12, :cond_e

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v23, v6, v23

    add-int v23, v23, v19

    aget-object v7, v22, v23

    .line 500
    sget-object v22, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_5

    sget-object v22, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v7

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 502
    :cond_5
    add-int v22, p2, v13

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 553
    :cond_6
    return-void

    .line 463
    .end local v4           #argDecl:Lgnu/expr/Declaration;
    .end local v6           #arg_count:I
    .end local v9           #createVarargsArrayIfNeeded:Z
    .end local v12           #fix_arg_count:I
    .end local v13           #i:I
    .end local v14           #is_static:Z
    .end local v18           #nargs:I
    .end local v19           #skipArg:I
    :cond_7
    const/16 v22, 0x0

    move/from16 v19, v22

    goto/16 :goto_0

    .line 468
    .restart local v6       #arg_count:I
    .restart local v18       #nargs:I
    .restart local v19       #skipArg:I
    :cond_8
    const/16 v22, 0x0

    move/from16 v14, v22

    goto/16 :goto_1

    .line 475
    .restart local v9       #createVarargsArrayIfNeeded:Z
    .restart local v14       #is_static:Z
    :cond_9
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 491
    :cond_a
    const/16 v22, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, p2

    move/from16 v12, v22

    goto :goto_4

    .line 492
    .restart local v12       #fix_arg_count:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v22

    move-object/from16 v4, v22

    goto :goto_5

    .line 505
    .restart local v4       #argDecl:Lgnu/expr/Declaration;
    .restart local v13       #i:I
    :cond_d
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, p2

    sub-int v22, v22, v12

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 506
    check-cast v7, Lgnu/bytecode/ArrayType;

    .end local v7           #arg_type:Lgnu/bytecode/Type;
    invoke-virtual {v7}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 507
    .restart local v7       #arg_type:Lgnu/bytecode/Type;
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 509
    :cond_e
    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 511
    if-eqz v9, :cond_13

    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    move/from16 v10, v22

    .line 512
    .local v10, createVarargsNow:Z
    :goto_7
    if-lt v13, v12, :cond_14

    .line 514
    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 515
    sub-int v22, v13, v12

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 522
    :goto_8
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 523
    if-eqz v10, :cond_19

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v5, v22

    .line 524
    .local v5, argTypeForTarget:Lgnu/bytecode/Type;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    if-nez v22, :cond_1a

    add-int/lit8 v22, v13, 0x1

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v22

    move-object/from16 v20, v22

    .line 527
    .local v20, target:Lgnu/expr/Target;
    :goto_a
    add-int v22, p2, v13

    aget-object v22, p1, v22

    add-int v23, p2, v13

    aget-object v23, p1, v23

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 528
    if-eqz v10, :cond_f

    .line 532
    move-object v0, v7

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v10, v0

    .end local v10           #createVarargsNow:Z
    invoke-virtual {v10}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v11

    .line 533
    .local v11, eltype:Lgnu/bytecode/Type;
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 534
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 535
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 536
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 537
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 538
    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 539
    invoke-virtual {v8, v11}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 541
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 542
    const/16 v22, 0x0

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 543
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 544
    invoke-virtual {v11, v8}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 545
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 546
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 548
    .end local v11           #eltype:Lgnu/bytecode/Type;
    :cond_f
    if-lt v13, v12, :cond_10

    .line 549
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 550
    :cond_10
    if-eqz v4, :cond_12

    if-nez v14, :cond_11

    if-lez v13, :cond_12

    .line 551
    :cond_11
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 495
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 511
    .end local v5           #argTypeForTarget:Lgnu/bytecode/Type;
    .end local v20           #target:Lgnu/expr/Target;
    :cond_13
    const/16 v22, 0x0

    move/from16 v10, v22

    goto/16 :goto_7

    .line 518
    .restart local v10       #createVarargsNow:Z
    :cond_14
    if-eqz v4, :cond_16

    if-nez v14, :cond_15

    if-lez v13, :cond_16

    :cond_15
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v22

    move-object/from16 v7, v22

    :goto_b
    goto/16 :goto_8

    :cond_16
    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    add-int v23, v13, v19

    aget-object v22, v22, v23

    move-object/from16 v7, v22

    goto :goto_b

    :cond_17
    if-nez v13, :cond_18

    move-object/from16 v7, p3

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v23, v13, v23

    aget-object v22, v22, v23

    move-object/from16 v7, v22

    goto :goto_b

    :cond_19
    move-object v5, v7

    .line 523
    goto/16 :goto_9

    .line 524
    .restart local v5       #argTypeForTarget:Lgnu/bytecode/Type;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v13

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;

    move-result-object v22

    move-object/from16 v20, v22

    goto/16 :goto_a
.end method

.method public static compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V
    .locals 10
    .parameter "comp"
    .parameter "method"
    .parameter "target"
    .parameter "isTailCall"
    .parameter "op_code"
    .parameter "stackType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 657
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 658
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 659
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 660
    invoke-static {p1}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 662
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 729
    :goto_0
    invoke-virtual {p2, p0, p5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 730
    :cond_0
    :goto_1
    return-void

    .line 664
    :cond_1
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-nez v6, :cond_2

    instance-of v6, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v6, :cond_5

    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 668
    :cond_2
    const/4 v2, 0x0

    .line 669
    .local v2, consumerFld:Lgnu/bytecode/Field;
    const/4 v3, 0x0

    .line 670
    .local v3, saveCallContext:Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 671
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_3

    .line 673
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 674
    .local v5, typeCallContext:Lgnu/bytecode/ClassType;
    const-string v6, "consumer"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    .line 678
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 679
    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 680
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 681
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 682
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 683
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 684
    const-string v6, "gnu.lists.VoidConsumer"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    const-string v7, "instance"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 686
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 688
    .end local v5           #typeCallContext:Lgnu/bytecode/ClassType;
    :cond_3
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 689
    if-eqz p3, :cond_4

    .line 691
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 692
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "runUntilDone"

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 695
    :cond_4
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_0

    .line 698
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 699
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 700
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 701
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto :goto_1

    .line 707
    .end local v2           #consumerFld:Lgnu/bytecode/Field;
    .end local v3           #saveCallContext:Lgnu/bytecode/Variable;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 708
    sget-object p5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 709
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 710
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 711
    .local v4, saveIndex:Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 712
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "startFromContext"

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 714
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 715
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitWithCleanupStart()V

    .line 716
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 717
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitWithCleanupCatch(Lgnu/bytecode/Variable;)V

    .line 718
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 719
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 720
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "cleanupFromContext"

    invoke-virtual {v6, v7, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 722
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitWithCleanupDone()V

    .line 723
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 724
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 725
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "getFromContext"

    invoke-virtual {v6, v7, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 727
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 8
    .parameter "proc"
    .parameter "cwriter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 825
    instance-of v1, p0, Lgnu/expr/GenericProc;

    if-eqz v1, :cond_2

    .line 827
    check-cast p0, Lgnu/expr/GenericProc;

    .line 828
    .local p0, gproc:Lgnu/expr/GenericProc;
    invoke-virtual {p0}, Lgnu/expr/GenericProc;->getMethodCount()I

    move-result v3

    .line 829
    .local v3, n:I
    const-string v1, "Generic procedure with "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 831
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1

    const-string v1, " method."

    :goto_0
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 832
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 834
    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->getMethod(I)Lgnu/mapping/MethodProc;

    move-result-object v2

    .line 835
    .local v2, mproc:Lgnu/mapping/Procedure;
    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 838
    invoke-static {v2, p1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 832
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 831
    .end local v1           #i:I
    .end local v2           #mproc:Lgnu/mapping/Procedure;
    :cond_1
    const-string v1, "methods."

    goto :goto_0

    .line 843
    .end local v3           #n:I
    .local p0, proc:Lgnu/mapping/Procedure;
    :cond_2
    const/4 v3, 0x0

    .line 844
    .local v3, pname:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 845
    .local v1, cl:Ljava/lang/Class;
    instance-of v2, p0, Lgnu/expr/ModuleMethod;

    if-eqz v2, :cond_3

    .line 846
    move-object v0, p0

    check-cast v0, Lgnu/expr/ModuleMethod;

    move-object v1, v0

    .end local v1           #cl:Ljava/lang/Class;
    iget-object v1, v1, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1       #cl:Ljava/lang/Class;
    move-object v5, v3

    .line 856
    .end local v3           #pname:Ljava/lang/String;
    .local v5, pname:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 857
    .local v4, loader:Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, cname:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #cl:Ljava/lang/Class;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".class"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, rname:Ljava/lang/String;
    new-instance v3, Lgnu/bytecode/ClassType;

    invoke-direct {v3}, Lgnu/bytecode/ClassType;-><init>()V

    .line 860
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 861
    .local v6, rin:Ljava/io/InputStream;
    if-nez v6, :cond_4

    .line 862
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #proc:Lgnu/mapping/Procedure;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing resource "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 847
    .end local v2           #cname:Ljava/lang/String;
    .end local v4           #loader:Ljava/lang/ClassLoader;
    .end local v5           #pname:Ljava/lang/String;
    .end local v6           #rin:Ljava/io/InputStream;
    .end local v7           #rname:Ljava/lang/String;
    .restart local v1       #cl:Ljava/lang/Class;
    .local v3, pname:Ljava/lang/String;
    .restart local p0       #proc:Lgnu/mapping/Procedure;
    .restart local p1
    :cond_3
    instance-of v2, p0, Lgnu/expr/PrimProcedure;

    if-eqz v2, :cond_b

    .line 849
    move-object v0, p0

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 850
    .local v2, pmethod:Lgnu/bytecode/Method;
    if-eqz v2, :cond_b

    .line 852
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .end local v1           #cl:Ljava/lang/Class;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 853
    .restart local v1       #cl:Ljava/lang/Class;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .end local v3           #pname:Ljava/lang/String;
    .local v2, pname:Ljava/lang/String;
    move-object v5, v2

    .end local v2           #pname:Ljava/lang/String;
    .restart local v5       #pname:Ljava/lang/String;
    goto :goto_2

    .line 863
    .end local v1           #cl:Ljava/lang/Class;
    .local v2, cname:Ljava/lang/String;
    .local v3, ctype:Lgnu/bytecode/ClassType;
    .restart local v4       #loader:Ljava/lang/ClassLoader;
    .restart local v6       #rin:Ljava/io/InputStream;
    .restart local v7       #rname:Ljava/lang/String;
    :cond_4
    new-instance v1, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v1, v3, v6}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 864
    .local v1, cinput:Lgnu/bytecode/ClassFileInput;
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->setClass(Lgnu/bytecode/ClassType;)V

    .line 865
    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 866
    .local v1, resource:Ljava/net/URL;
    const-string v4, "In class "

    .end local v4           #loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 868
    if-eqz v1, :cond_5

    .line 870
    const-string v2, " at "

    .end local v2           #cname:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    .line 873
    :cond_5
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 874
    if-nez v5, :cond_a

    .line 876
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p0

    .line 877
    .end local v5           #pname:Ljava/lang/String;
    .local p0, pname:Ljava/lang/String;
    if-nez p0, :cond_7

    .line 879
    const-string p0, "Anonymous function - unknown method."

    .end local p0           #pname:Ljava/lang/String;
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 893
    .end local v1           #resource:Ljava/net/URL;
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .end local v6           #rin:Ljava/io/InputStream;
    .end local v7           #rname:Ljava/lang/String;
    :cond_6
    :goto_3
    return-void

    .line 882
    .restart local v1       #resource:Ljava/net/URL;
    .restart local v3       #ctype:Lgnu/bytecode/ClassType;
    .restart local v6       #rin:Ljava/io/InputStream;
    .restart local v7       #rname:Ljava/lang/String;
    .restart local p0       #pname:Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    .line 884
    .end local p0           #pname:Ljava/lang/String;
    .local v2, pname:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getMethods()Lgnu/bytecode/Method;

    move-result-object p0

    .line 885
    .end local v1           #resource:Ljava/net/URL;
    .local p0, method:Lgnu/bytecode/Method;
    :goto_5
    if-eqz p0, :cond_9

    .line 887
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, mname:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #mname:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 889
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 885
    :cond_8
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object p0

    goto :goto_5

    .line 892
    :cond_9
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    goto :goto_3

    .end local v2           #pname:Ljava/lang/String;
    .local v1, resource:Ljava/net/URL;
    .restart local v5       #pname:Ljava/lang/String;
    .local p0, proc:Lgnu/mapping/Procedure;
    :cond_a
    move-object v2, v5

    .end local v5           #pname:Ljava/lang/String;
    .restart local v2       #pname:Ljava/lang/String;
    goto :goto_4

    .end local v2           #pname:Ljava/lang/String;
    .end local v6           #rin:Ljava/io/InputStream;
    .end local v7           #rname:Ljava/lang/String;
    .local v1, cl:Ljava/lang/Class;
    .local v3, pname:Ljava/lang/String;
    :cond_b
    move-object v5, v3

    .end local v3           #pname:Ljava/lang/String;
    .restart local v5       #pname:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V
    .locals 3
    .parameter "proc"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, v0}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Lgnu/bytecode/ClassTypeWriter;)V

    .line 820
    return-void
.end method

.method public static disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "pproc"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 813
    .local v0, cons:Lgnu/lists/Consumer;
    instance-of v1, v0, Ljava/io/Writer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/Writer;

    .end local v0           #cons:Lgnu/lists/Consumer;
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1}, Lgnu/expr/PrimProcedure;->disassemble(Lgnu/mapping/Procedure;Ljava/io/Writer;)V

    .line 814
    return-void

    .line 813
    .restart local v0       #cons:Lgnu/lists/Consumer;
    :cond_0
    new-instance v1, Lgnu/lists/ConsumerWriter;

    invoke-direct {v1, v0}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 14
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "atypes"
    .parameter "language"

    .prologue
    .line 936
    const/4 v4, 0x0

    .line 937
    .local v4, best:Lgnu/expr/PrimProcedure;
    const/4 v5, -0x1

    .line 938
    .local v5, bestCode:I
    const/4 v6, 0x0

    .line 941
    .local v6, bestIsApply:Z
    if-nez p1, :cond_0

    .line 942
    const/4 p0, 0x0

    .end local p0
    move/from16 p2, v6

    .end local v6           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v5

    .end local v5           #bestCode:I
    .local p1, bestCode:I
    move-object/from16 p3, p0

    move-object p0, v4

    .line 1010
    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .end local p3
    .local p0, best:Lgnu/expr/PrimProcedure;
    :goto_0
    return-object p3

    .line 943
    .restart local v4       #best:Lgnu/expr/PrimProcedure;
    .restart local v5       #bestCode:I
    .restart local v6       #bestIsApply:Z
    .local p0, procClass:Lgnu/bytecode/ClassType;
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 944
    .local v8, mangledName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$V"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 945
    .local v9, mangledNameV:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$V$X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 946
    .local v10, mangledNameVX:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 947
    .local v11, mangledNameX:Ljava/lang/String;
    const/4 v3, 0x1

    .line 948
    .local v3, applyOk:Z
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .local p0, meth:Lgnu/bytecode/Method;
    move-object v12, p0

    .end local p0           #meth:Lgnu/bytecode/Method;
    .local v12, meth:Lgnu/bytecode/Method;
    move p0, v3

    .end local v3           #applyOk:Z
    .local p0, applyOk:Z
    move-object v3, v4

    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .local v3, best:Lgnu/expr/PrimProcedure;
    move v4, v5

    .end local v5           #bestCode:I
    .local v4, bestCode:I
    move v5, v6

    .line 949
    .end local v6           #bestIsApply:Z
    .local v5, bestIsApply:Z
    :goto_1
    if-eqz v12, :cond_9

    .line 951
    :try_start_1
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v6

    .line 952
    .local v6, mods:I
    and-int/lit8 v6, v6, 0x9

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    .line 955
    .end local v6           #mods:I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v6, v0

    if-nez v6, :cond_2

    .line 949
    :cond_1
    :goto_2
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v6

    .end local v12           #meth:Lgnu/bytecode/Method;
    .local v6, meth:Lgnu/bytecode/Method;
    move-object v12, v6

    .end local v6           #meth:Lgnu/bytecode/Method;
    .restart local v12       #meth:Lgnu/bytecode/Method;
    goto :goto_1

    .line 958
    :cond_2
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 960
    .local v6, mname:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 965
    :cond_3
    const/4 v6, 0x0

    .local v6, isApply:Z
    move v7, v6

    .line 974
    .end local v6           #isApply:Z
    .local v7, isApply:Z
    :goto_3
    if-nez v7, :cond_4

    .line 977
    const/4 p0, 0x0

    .line 978
    if-eqz v5, :cond_4

    .line 980
    const/4 v3, 0x0

    .line 981
    const/4 v4, -0x1

    .line 982
    const/4 v5, 0x0

    .line 985
    :cond_4
    new-instance v13, Lgnu/expr/PrimProcedure;

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 986
    .local v13, prproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v13, p1}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    .line 987
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v6

    .line 988
    .local v6, code:I
    if-ltz v6, :cond_1

    if-lt v6, v4, :cond_1

    .line 990
    if-le v6, v4, :cond_8

    .line 992
    move-object v3, v13

    .line 1003
    .end local v13           #prproc:Lgnu/expr/PrimProcedure;
    :cond_5
    move v4, v6

    .line 1004
    move v5, v7

    goto :goto_2

    .line 967
    .end local v7           #isApply:Z
    .local v6, mname:Ljava/lang/String;
    :cond_6
    if-eqz p0, :cond_1

    const-string v7, "apply"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "apply$V"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #mname:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 970
    :cond_7
    const/4 v6, 0x1

    .local v6, isApply:Z
    move v7, v6

    .end local v6           #isApply:Z
    .restart local v7       #isApply:Z
    goto :goto_3

    .line 994
    .local v6, code:I
    .restart local v13       #prproc:Lgnu/expr/PrimProcedure;
    :cond_8
    if-eqz v3, :cond_5

    .line 996
    invoke-static {v3, v13}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v13

    .end local v13           #prproc:Lgnu/expr/PrimProcedure;
    move-object v0, v13

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 997
    if-nez v3, :cond_5

    .line 999
    if-lez v4, :cond_5

    .line 1000
    const/4 p0, 0x0

    .end local p0           #applyOk:Z
    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object/from16 p3, p0

    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto/16 :goto_0

    .end local v6           #code:I
    .end local v7           #isApply:Z
    .restart local v3       #best:Lgnu/expr/PrimProcedure;
    .restart local v4       #bestCode:I
    .restart local v5       #bestIsApply:Z
    .local p0, applyOk:Z
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :cond_9
    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .end local v8           #mangledName:Ljava/lang/String;
    .end local v9           #mangledNameV:Ljava/lang/String;
    .end local v10           #mangledNameVX:Ljava/lang/String;
    .end local v11           #mangledNameX:Ljava/lang/String;
    .end local v12           #meth:Lgnu/bytecode/Method;
    .local p0, best:Lgnu/expr/PrimProcedure;
    :goto_4
    move-object/from16 p3, p0

    .line 1010
    goto/16 :goto_0

    .line 1007
    .local v4, best:Lgnu/expr/PrimProcedure;
    .local v5, bestCode:I
    .local v6, bestIsApply:Z
    .local p0, procClass:Lgnu/bytecode/ClassType;
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :catch_0
    move-exception p0

    move/from16 p2, v6

    .end local v6           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v5

    .end local v5           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v4

    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto :goto_4

    .restart local v3       #best:Lgnu/expr/PrimProcedure;
    .local v4, bestCode:I
    .local v5, bestIsApply:Z
    .restart local v8       #mangledName:Ljava/lang/String;
    .restart local v9       #mangledNameV:Ljava/lang/String;
    .restart local v10       #mangledNameVX:Ljava/lang/String;
    .restart local v11       #mangledNameX:Ljava/lang/String;
    .restart local v12       #meth:Lgnu/bytecode/Method;
    .local p0, applyOk:Z
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :catch_1
    move-exception p0

    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto :goto_4
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 4
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 926
    array-length v2, p3

    .line 927
    .local v2, nargs:I
    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 928
    .local v0, atypes:[Lgnu/bytecode/Type;
    move v1, v2

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_0

    .line 929
    :cond_0
    invoke-static {p0, p1, p2, v0, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v3

    return-object v3
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 9
    .parameter "pproc"
    .parameter "decl"
    .parameter "atypes"
    .parameter "language"

    .prologue
    const/4 v8, 0x0

    .line 779
    instance-of v7, p0, Lgnu/expr/GenericProc;

    if-eqz v7, :cond_3

    .line 781
    move-object v0, p0

    check-cast v0, Lgnu/expr/GenericProc;

    move-object v2, v0

    .line 782
    .local v2, gproc:Lgnu/expr/GenericProc;
    iget-object v4, v2, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 783
    .local v4, methods:[Lgnu/mapping/MethodProc;
    const/4 p0, 0x0

    .line 784
    iget v3, v2, Lgnu/expr/GenericProc;->count:I

    .local v3, i:I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 786
    aget-object v7, v4, v3

    invoke-virtual {v7, p2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v1

    .line 787
    .local v1, applic:I
    if-ltz v1, :cond_0

    .line 789
    if-eqz p0, :cond_1

    move-object v7, v8

    .line 805
    .end local v1           #applic:I
    .end local v2           #gproc:Lgnu/expr/GenericProc;
    .end local v3           #i:I
    .end local v4           #methods:[Lgnu/mapping/MethodProc;
    :goto_1
    return-object v7

    .line 791
    .restart local v1       #applic:I
    .restart local v2       #gproc:Lgnu/expr/GenericProc;
    .restart local v3       #i:I
    .restart local v4       #methods:[Lgnu/mapping/MethodProc;
    :cond_1
    aget-object p0, v4, v3

    .line 792
    goto :goto_0

    .line 793
    .end local v1           #applic:I
    :cond_2
    if-nez p0, :cond_3

    move-object v7, v8

    .line 794
    goto :goto_1

    .line 796
    .end local v2           #gproc:Lgnu/expr/GenericProc;
    .end local v3           #i:I
    .end local v4           #methods:[Lgnu/mapping/MethodProc;
    :cond_3
    instance-of v7, p0, Lgnu/expr/PrimProcedure;

    if-eqz v7, :cond_4

    .line 798
    move-object v0, p0

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v6, v0

    .line 799
    .local v6, prproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v6, p2}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v7

    if-ltz v7, :cond_4

    move-object v7, v6

    .line 800
    goto :goto_1

    .line 802
    .end local v6           #prproc:Lgnu/expr/PrimProcedure;
    :cond_4
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    .line 803
    .local v5, pclass:Ljava/lang/Class;
    if-nez v5, :cond_5

    move-object v7, v8

    .line 804
    goto :goto_1

    .line 805
    :cond_5
    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, p2, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v7

    goto :goto_1
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 4
    .parameter "pproc"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 770
    array-length v2, p2

    .line 771
    .local v2, nargs:I
    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 772
    .local v0, atypes:[Lgnu/bytecode/Type;
    move v1, v2

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {p0, p1, v0, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v3

    return-object v3
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "pproc"
    .parameter "args"

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodFor(Ljava/lang/Class;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 1
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 918
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-static {p0, p1, p2, p3, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .parameter "pproc"

    .prologue
    .line 898
    instance-of v1, p0, Lgnu/expr/ModuleMethod;

    if-eqz v1, :cond_0

    .line 899
    check-cast p0, Lgnu/expr/ModuleMethod;

    .end local p0
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 904
    .local v0, procClass:Ljava/lang/Class;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 910
    :goto_1
    return-object v1

    .line 901
    .end local v0           #procClass:Ljava/lang/Class;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #procClass:Ljava/lang/Class;
    goto :goto_0

    .line 907
    .end local p0
    :catch_0
    move-exception v1

    .line 910
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private init(Lgnu/bytecode/Method;)V
    .locals 9
    .parameter "method"

    .prologue
    const/16 v8, 0xb7

    const/4 v7, 0x1

    .line 364
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 365
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    .line 366
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1

    .line 367
    const/16 v5, 0xb8

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 384
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v3

    .line 385
    .local v3, mtypes:[Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    array-length v5, v3

    sub-int v1, v5, v7

    .line 388
    .local v1, len:I
    new-array v4, v1, [Lgnu/bytecode/Type;

    .line 389
    .local v4, types:[Lgnu/bytecode/Type;
    const/4 v5, 0x0

    invoke-static {v3, v7, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    move-object v3, v4

    .line 392
    .end local v1           #len:I
    .end local v4           #types:[Lgnu/bytecode/Type;
    :cond_0
    iput-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 393
    return-void

    .line 370
    .end local v3           #mtypes:[Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 371
    .local v2, mclass:Lgnu/bytecode/ClassType;
    iget-char v5, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v6, 0x50

    if-ne v5, v6, :cond_2

    .line 372
    iput v8, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 375
    :cond_2
    const/16 v5, 0x56

    iput-char v5, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 376
    const-string v5, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 377
    iput v8, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4

    .line 379
    const/16 v5, 0xb9

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 381
    :cond_4
    const/16 v5, 0xb6

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0
.end method

.method public static makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "opcode"
    .parameter "type"

    .prologue
    .line 420
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 421
    .local v0, args:[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 422
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 423
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "opcode"
    .parameter "type"

    .prologue
    .line 412
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 413
    .local v0, args:[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 414
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static takesContext(Lgnu/bytecode/Method;)Z
    .locals 2
    .parameter "method"

    .prologue
    .line 75
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 22
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    .line 241
    .local v5, arg_count:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v12

    .line 242
    .local v12, is_constructor:Z
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 246
    .local v17, slink:Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v8

    .line 249
    .local v8, clas:Ljava/lang/Class;
    if-eqz v17, :cond_1

    const/16 v19, 0x1

    :goto_1
    add-int v19, v19, v5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object v15, v0

    .line 250
    .local v15, paramTypes:[Ljava/lang/Class;
    move v11, v5

    .local v11, i:I
    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_3

    .line 251
    if-eqz v17, :cond_2

    const/16 v19, 0x1

    :goto_3
    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v15, v19
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 290
    .end local v5           #arg_count:I
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 292
    .local v10, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v19

    throw v19

    .line 242
    .end local v10           #ex:Ljava/lang/reflect/InvocationTargetException;
    .end local v17           #slink:Z
    .restart local v5       #arg_count:I
    :cond_0
    const/16 v19, 0x0

    move/from16 v17, v19

    goto :goto_0

    .line 249
    .restart local v8       #clas:Ljava/lang/Class;
    .restart local v17       #slink:Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 251
    .restart local v11       #i:I
    .restart local v15       #paramTypes:[Ljava/lang/Class;
    :cond_2
    const/16 v19, 0x0

    goto :goto_3

    .line 252
    :cond_3
    if-eqz v17, :cond_4

    .line 253
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v15, v19

    .line 254
    :cond_4
    if-eqz v12, :cond_8

    .line 255
    invoke-virtual {v8, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    .line 260
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :cond_5
    :goto_4
    if-eqz v12, :cond_9

    .line 262
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v6, v0

    .line 263
    .local v6, args:[Ljava/lang/Object;
    if-eqz v17, :cond_6

    .line 265
    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v14, v19, 0x1

    .line 266
    .local v14, nargs:I
    move v0, v14

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 267
    .local v18, xargs:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    sub-int v21, v14, v21

    move-object v0, v6

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v0

    .end local v5           #arg_count:I
    check-cast v5, Lgnu/expr/PairClassType;

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 269
    move-object/from16 v6, v18

    .line 272
    .end local v14           #nargs:I
    .end local v18           #xargs:[Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 287
    .end local v6           #args:[Ljava/lang/Object;
    .local v16, result:Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v19

    if-nez v19, :cond_7

    .line 288
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 294
    :cond_7
    return-void

    .line 256
    .end local v16           #result:Ljava/lang/Object;
    .restart local v5       #arg_count:I
    .restart local v8       #clas:Ljava/lang/Class;
    .restart local v11       #i:I
    .restart local v15       #paramTypes:[Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    goto :goto_4

    .line 275
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 278
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v0

    .line 279
    .local v7, arr:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 280
    .local v9, elClass:Ljava/lang/Class;
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 281
    .local v13, n:I
    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 282
    .restart local v16       #result:Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v19

    move-object/from16 v2, v16

    move/from16 v3, v20

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 285
    .end local v7           #arr:Ljava/lang/Object;
    .end local v9           #elClass:Ljava/lang/Class;
    .end local v13           #n:I
    .end local v16           #result:Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object v5, v0

    .end local v5           #arg_count:I
    check-cast v5, Ljava/lang/reflect/Method;

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .restart local v16       #result:Ljava/lang/Object;
    goto/16 :goto_5
.end method

.method compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "thisType"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 604
    .local v6, args:[Lgnu/expr/Expression;
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 605
    .local v7, code:Lgnu/bytecode/CodeAttr;
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 606
    .local v5, stackType:Lgnu/bytecode/Type;
    const/4 v9, 0x0

    .line 607
    .local v9, startArg:I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v0, :cond_2

    move-object v8, v2

    .line 610
    .local v8, mclass:Lgnu/bytecode/ClassType;
    :goto_0
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0, v8, p3}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 614
    :cond_0
    const/4 p1, 0x0

    .line 615
    const/4 v9, 0x1

    .line 635
    .end local v8           #mclass:Lgnu/bytecode/ClassType;
    :cond_1
    :goto_1
    invoke-direct {p0, v6, v9, p1, p3}, Lgnu/expr/PrimProcedure;->compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 637
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v0, :cond_6

    .line 639
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    array-length v1, v6

    iget-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v7, v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPrimop(IILgnu/bytecode/Type;)V

    .line 640
    invoke-virtual {p4, p3, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 647
    :goto_2
    return-void

    .line 609
    :cond_2
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 619
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_5

    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    const-string v0, "<init>"

    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 622
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v0, :cond_4

    move-object v8, v2

    .line 623
    .restart local v8       #mclass:Lgnu/bytecode/ClassType;
    :goto_3
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 627
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 628
    const/4 p1, 0x0

    .line 629
    const/4 v9, 0x1

    goto :goto_1

    .line 622
    .end local v8           #mclass:Lgnu/bytecode/ClassType;
    :cond_4
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    .line 632
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const/4 v9, 0x1

    goto :goto_1

    .line 644
    :cond_6
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v3

    iget v4, p0, Lgnu/expr/PrimProcedure;->op_code:I

    move-object v0, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 557
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 558
    .local v3, code:Lgnu/bytecode/CodeAttr;
    iget-object v10, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v7, v10

    .line 559
    .local v7, mclass:Lgnu/bytecode/ClassType;
    :goto_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 560
    .local v2, args:[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 562
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 575
    array-length v8, v2

    .line 576
    .local v8, nargs:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letStart()V

    .line 577
    new-array v9, v8, [Lgnu/expr/Expression;

    .line 578
    .local v9, xargs:[Lgnu/expr/Expression;
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v2, v11

    aput-object v11, v9, v10

    .line 579
    const/4 v5, 0x1

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_1

    .line 581
    aget-object v1, v2, v5

    .line 582
    .local v1, argi:Lgnu/expr/Expression;
    const/4 v10, 0x0

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {p2, v10, v11, v1}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 583
    .local v4, d:Lgnu/expr/Declaration;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 584
    new-instance v10, Lgnu/expr/ReferenceExp;

    invoke-direct {v10, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v10, v9, v5

    .line 579
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 558
    .end local v1           #argi:Lgnu/expr/Expression;
    .end local v2           #args:[Lgnu/expr/Expression;
    .end local v4           #d:Lgnu/expr/Declaration;
    .end local v5           #i:I
    .end local v7           #mclass:Lgnu/bytecode/ClassType;
    .end local v8           #nargs:I
    .end local v9           #xargs:[Lgnu/expr/Expression;
    :cond_0
    iget-object v10, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    move-object v7, v10

    goto :goto_0

    .line 586
    .restart local v2       #args:[Lgnu/expr/Expression;
    .restart local v5       #i:I
    .restart local v7       #mclass:Lgnu/bytecode/ClassType;
    .restart local v8       #nargs:I
    .restart local v9       #xargs:[Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Compilation;->letEnter()V

    .line 587
    new-instance v10, Lgnu/expr/ApplyExp;

    iget-object v11, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-direct {v10, v11, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v10}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v6

    .line 588
    .local v6, let:Lgnu/expr/LetExp;
    invoke-virtual {v6, p2, p3}, Lgnu/expr/LetExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 599
    .end local v5           #i:I
    .end local v6           #let:Lgnu/expr/LetExp;
    .end local v8           #nargs:I
    .end local v9           #xargs:[Lgnu/expr/Expression;
    :goto_2
    return-void

    .line 591
    :cond_2
    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 592
    invoke-virtual {v3, v7}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 594
    :cond_3
    array-length v10, v2

    invoke-static {p0, v10}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, arg_error:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 596
    const/16 v10, 0x65

    invoke-virtual {p2, v10, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 598
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {p0, v10, p1, p2, p3}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    :cond_5
    move-object v10, v7

    goto :goto_3
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1015
    invoke-super {p0}, Lgnu/mapping/MethodProc;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1020
    .end local v0           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1018
    .end local v1           #name:Ljava/lang/String;
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-virtual {p0, v0}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    move-object v1, v0

    .line 1020
    .end local v0           #name:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 734
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    if-nez p1, :cond_1

    .line 737
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 752
    :goto_0
    return-object v3

    .line 737
    :cond_0
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    goto :goto_0

    .line 739
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 741
    :cond_2
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v3

    .line 742
    .local v0, lenTypes:I
    sub-int v3, v0, v4

    if-ge p1, v3, :cond_3

    .line 743
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v3, v3, p1

    goto :goto_0

    .line 744
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v2

    .line 745
    .local v2, varArgs:Z
    if-ge p1, v0, :cond_4

    if-nez v2, :cond_4

    .line 746
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v3, v3, p1

    goto :goto_0

    .line 748
    :cond_4
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int v4, v0, v4

    aget-object v1, v3, v4

    .line 749
    .local v1, restType:Lgnu/bytecode/Type;
    instance-of v3, v1, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_5

    .line 750
    check-cast v1, Lgnu/bytecode/ArrayType;

    .end local v1           #restType:Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_0

    .line 752
    .restart local v1       #restType:Lgnu/bytecode/Type;
    :cond_5
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerboseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1026
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v2, :cond_1

    .line 1028
    const-string v2, "<op "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1029
    iget v2, p0, Lgnu/expr/PrimProcedure;->op_code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1030
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1038
    :goto_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1039
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1041
    if-lez v1, :cond_0

    .line 1042
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_0
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1034
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1036
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1045
    .restart local v1       #i:I
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1046
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "argTypes"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 80
    invoke-super {p0, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 81
    .local v0, app:I
    array-length v1, p1

    .line 82
    .local v1, nargs:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    sub-int v3, v1, v5

    aget-object v3, p1, v3

    instance-of v3, v3, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_0

    .line 88
    new-array v2, v1, [Lgnu/bytecode/Type;

    .line 89
    .local v2, tmp:[Lgnu/bytecode/Type;
    sub-int v3, v1, v5

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    sub-int v4, v1, v5

    sub-int v3, v1, v5

    aget-object v3, p1, v3

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v2, v4

    .line 91
    invoke-super {p0, v2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    .line 93
    .end local v2           #tmp:[Lgnu/bytecode/Type;
    :goto_0
    return v3

    :cond_0
    move v3, v0

    goto :goto_0
.end method

.method public final isConstructor()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSideEffectFree()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    return v0
.end method

.method public isSpecial()Z
    .locals 2

    .prologue
    .line 39
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 132
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 137
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 138
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 143
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 144
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 149
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 150
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p4}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 156
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 157
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p5}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 21
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 162
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    .line 163
    .local v10, nargs:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v17

    .line 164
    .local v17, takesVarArgs:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v8

    .line 165
    .local v8, fixArgs:I
    if-ge v10, v8, :cond_0

    .line 166
    const/high16 v19, -0xf

    or-int v19, v19, v8

    .line 235
    :goto_0
    return v19

    .line 167
    :cond_0
    if-nez v17, :cond_1

    if-le v10, v8, :cond_1

    .line 168
    const/high16 v19, -0xe

    or-int v19, v19, v8

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v11, v0

    .line 170
    .local v11, paramCount:I
    const/4 v4, 0x0

    .line 171
    .local v4, elementType:Lgnu/bytecode/Type;
    const/4 v13, 0x0

    .line 172
    .local v13, restArray:[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_2
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 173
    .local v7, extraCount:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v16

    .line 174
    .local v16, takesContext:Z
    new-array v12, v11, [Ljava/lang/Object;

    .line 175
    .local v12, rargs:[Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 176
    add-int/lit8 v11, v11, -0x1

    aput-object p2, v12, v11

    .line 178
    :cond_3
    if-eqz v17, :cond_5

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v11, v20

    aget-object v15, v19, v20

    .line 181
    .local v15, restType:Lgnu/bytecode/Type;
    sget-object v19, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object v0, v15

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    sget-object v19, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v15

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 183
    :cond_4
    const/16 v19, 0x1

    sub-int v19, v11, v19

    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v20

    aput-object v20, v12, v19

    .line 184
    move v10, v8

    .line 185
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 197
    .end local v15           #restType:Lgnu/bytecode/Type;
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 198
    const/16 v19, 0x0

    aget-object v6, p1, v19

    .line 212
    :goto_3
    move v9, v7

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 214
    aget-object v2, p1, v9

    .line 215
    .local v2, arg:Ljava/lang/Object;
    if-ge v9, v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    sub-int v20, v9, v7

    aget-object v19, v19, v20

    move-object/from16 v18, v19

    .line 216
    .local v18, type:Lgnu/bytecode/Type;
    :goto_5
    sget-object v19, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 220
    :try_start_0
    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 227
    :cond_6
    if-ge v9, v8, :cond_d

    .line 228
    sub-int v19, v9, v7

    aput-object v2, v12, v19

    .line 212
    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 172
    .end local v2           #arg:Ljava/lang/Object;
    .end local v7           #extraCount:I
    .end local v9           #i:I
    .end local v12           #rargs:[Ljava/lang/Object;
    .end local v16           #takesContext:Z
    .end local v18           #type:Lgnu/bytecode/Type;
    :cond_8
    const/16 v19, 0x0

    move/from16 v7, v19

    goto :goto_1

    .line 189
    .restart local v7       #extraCount:I
    .restart local v12       #rargs:[Ljava/lang/Object;
    .restart local v15       #restType:Lgnu/bytecode/Type;
    .restart local v16       #takesContext:Z
    :cond_9
    move-object v0, v15

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v14, v0

    .line 190
    .local v14, restArrayType:Lgnu/bytecode/ArrayType;
    invoke-virtual {v14}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    .line 192
    .local v3, elementClass:Ljava/lang/Class;
    sub-int v19, v10, v8

    move-object v0, v3

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 194
    const/16 v19, 0x1

    sub-int v19, v11, v19

    aput-object v13, v12, v19

    goto :goto_2

    .line 199
    .end local v3           #elementClass:Ljava/lang/Class;
    .end local v14           #restArrayType:Lgnu/bytecode/ArrayType;
    .end local v15           #restType:Lgnu/bytecode/Type;
    :cond_a
    if-eqz v7, :cond_b

    .line 203
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, extraArg:Ljava/lang/Object;
    goto :goto_3

    .line 205
    .end local v6           #extraArg:Ljava/lang/Object;
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 207
    .local v5, ex:Ljava/lang/ClassCastException;
    const v19, -0xbffff

    goto/16 :goto_0

    .line 211
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #extraArg:Ljava/lang/Object;
    goto :goto_3

    .end local v6           #extraArg:Ljava/lang/Object;
    .restart local v2       #arg:Ljava/lang/Object;
    .restart local v9       #i:I
    :cond_c
    move-object/from16 v18, v4

    .line 215
    goto :goto_5

    .line 222
    .restart local v18       #type:Lgnu/bytecode/Type;
    :catch_1
    move-exception v5

    .line 224
    .restart local v5       #ex:Ljava/lang/ClassCastException;
    const/high16 v19, -0xc

    add-int/lit8 v20, v9, 0x1

    or-int v19, v19, v20

    goto/16 :goto_0

    .line 229
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :cond_d
    if-eqz v13, :cond_7

    .line 230
    sub-int v19, v9, v8

    aput-object v2, v13, v19

    goto :goto_6

    .line 232
    .end local v2           #arg:Ljava/lang/Object;
    .end local v18           #type:Lgnu/bytecode/Type;
    :cond_e
    move-object v0, v6

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 233
    move-object v0, v12

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 235
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v1

    .line 123
    .local v0, num:I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, -0x1000

    :goto_0
    return v1

    :cond_2
    shl-int/lit8 v1, v0, 0xc

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public final opcode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 1061
    const-string v0, "#<primitive procedure "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1064
    return-void
.end method

.method public setReturnType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "retType"

    .prologue
    .line 37
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public setSideEffectFree()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/PrimProcedure;->sideEffectFree:Z

    .line 53
    return-void
.end method

.method public takesContext()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-static {v0}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takesTarget()Z
    .locals 1

    .prologue
    .line 112
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takesVarArgs()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    move v1, v3

    .line 65
    :goto_0
    return v1

    .line 62
    :cond_0
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, name:Ljava/lang/String;
    const-string v1, "$V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "$V$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #name:Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1052
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1053
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1054
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1055
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1053
    :cond_0
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
