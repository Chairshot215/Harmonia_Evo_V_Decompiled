.class public Lgnu/kawa/reflect/CompileInvoke;
.super Ljava/lang/Object;
.source "CompileInvoke.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V
    .locals 2
    .parameter "methods"
    .parameter "mcount"
    .parameter "sbuf"

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 457
    const-string v1, "\n  candidate: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method static checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;
    .locals 9
    .parameter "type"
    .parameter "args"
    .parameter "start"
    .parameter "caller"

    .prologue
    .line 419
    array-length v2, p1

    .line 420
    .local v2, len:I
    const/4 v4, 0x0

    .line 422
    .local v4, npairs:I
    :goto_0
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v2, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, p2

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/expr/Keyword;

    if-eqz v7, :cond_0

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 425
    .local v0, fields:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 427
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, p2

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v6

    .line 428
    .local v6, value:Ljava/lang/Object;
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, name:Ljava/lang/String;
    invoke-static {p0, v3, p3}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v5

    .line 431
    .local v5, slot:Lgnu/bytecode/Member;
    if-nez v5, :cond_1

    .line 436
    const-string v7, "add"

    invoke-static {v7, v3}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v7, v8}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 438
    :cond_1
    if-eqz v5, :cond_2

    move-object v7, v5

    :goto_2
    aput-object v7, v0, v1

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v3

    .line 438
    goto :goto_2

    .line 440
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #slot:Lgnu/bytecode/Member;
    :cond_3
    return-object v0
.end method

.method private static getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;
    .locals 3
    .parameter "args"
    .parameter "kind"

    .prologue
    .line 445
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_0

    .line 446
    const-string v1, "<init>"

    .line 450
    :goto_0
    return-object v1

    .line 447
    :cond_0
    const/16 v1, 0x50

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .line 448
    .local v0, nameIndex:I
    :goto_1
    array-length v1, p0

    add-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_2

    .line 449
    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 447
    .end local v0           #nameIndex:I
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_1

    .line 450
    .restart local v0       #nameIndex:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;
    .locals 3
    .parameter "ctype"
    .parameter "mname"
    .parameter "caller"
    .parameter "iproc"

    .prologue
    const/16 v2, 0x56

    const/16 v1, 0x50

    .line 465
    iget-char v0, p3, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 466
    .local v0, kind:I
    if-ne v0, v1, :cond_0

    :goto_0
    iget-object v2, p3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p0, p1, v1, p2, v2}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 13
    .parameter "type"
    .parameter "name"
    .parameter "args"

    .prologue
    const/4 v12, 0x0

    .line 514
    const-class v11, Lgnu/kawa/reflect/CompileInvoke;

    monitor-enter v11

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-static {p0, p1, v1, v2}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 515
    .local v0, methods:[Lgnu/expr/PrimProcedure;
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 516
    .local v8, num:J
    const/16 v1, 0x20

    shr-long v1, v8, v1

    long-to-int v10, v1

    .line 517
    .local v10, okCount:I
    long-to-int v7, v8

    .line 519
    .local v7, maybeCount:I
    if-nez v0, :cond_0

    .line 520
    const/4 v6, -0x1

    .line 527
    .local v6, index:I
    :goto_0
    if-gez v6, :cond_3

    move-object v1, v12

    :goto_1
    monitor-exit v11

    return-object v1

    .line 521
    .end local v6           #index:I
    :cond_0
    if-lez v10, :cond_1

    .line 522
    :try_start_1
    invoke-static {v0, v10}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v6

    .restart local v6       #index:I
    goto :goto_0

    .line 523
    .end local v6           #index:I
    :cond_1
    const/4 v1, 0x1

    if-ne v7, v1, :cond_2

    .line 524
    const/4 v6, 0x0

    .restart local v6       #index:I
    goto :goto_0

    .line 526
    .end local v6           #index:I
    :cond_2
    const/4 v6, -0x1

    .restart local v6       #index:I
    goto :goto_0

    .line 527
    :cond_3
    aget-object v1, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 514
    .end local v0           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #index:I
    .end local v7           #maybeCount:I
    .end local v8           #num:J
    .end local v10           #okCount:I
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method static hasKeywordArgument(I[Lgnu/expr/Expression;)I
    .locals 2
    .parameter "argsStartIndex"
    .parameter "args"

    .prologue
    .line 475
    move v0, p0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 477
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/expr/Keyword;

    if-eqz v1, :cond_0

    move v1, v0

    .line 480
    :goto_1
    return v1

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    array-length v1, p1

    goto :goto_1
.end method

.method private static selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    .locals 8
    .parameter "methods"
    .parameter "ctype"
    .parameter "args"
    .parameter "margsLength"
    .parameter "argsStartIndex"
    .parameter "objIndex"

    .prologue
    .line 488
    new-array v2, p3, [Lgnu/bytecode/Type;

    .line 490
    .local v2, atypes:[Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 491
    .local v3, dst:I
    if-ltz p5, :cond_0

    .line 492
    add-int/lit8 v4, v3, 0x1

    .end local v3           #dst:I
    .local v4, dst:I
    aput-object p1, v2, v3

    move v3, v4

    .line 493
    .end local v4           #dst:I
    .restart local v3       #dst:I
    :cond_0
    move v5, p4

    .line 494
    .local v5, src:I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_4

    array-length v6, v2

    if-ge v3, v6, :cond_4

    .line 497
    aget-object v0, p2, v5

    .line 498
    .local v0, arg:Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 500
    .local v1, atype:Lgnu/bytecode/Type;
    invoke-static {v0}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 501
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 506
    :cond_1
    :goto_1
    aput-object v1, v2, v3

    .line 495
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    :cond_2
    invoke-static {v0}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 503
    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 504
    :cond_3
    if-nez v1, :cond_1

    .line 505
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_1

    .line 508
    .end local v0           #arg:Lgnu/expr/Expression;
    .end local v1           #atype:Lgnu/bytecode/Type;
    :cond_4
    invoke-static {p0, v2}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v6

    return-wide v6
.end method

.method public static validateApplyInvoke(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 30
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 13
    move-object/from16 v0, p3

    check-cast v0, Lgnu/kawa/reflect/Invoke;

    move-object v13, v0

    .line 14
    .local v13, iproc:Lgnu/kawa/reflect/Invoke;
    move-object v0, v13

    iget-char v0, v0, Lgnu/kawa/reflect/Invoke;->kind:C

    move/from16 v19, v0

    .line 15
    .local v19, kind:C
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v17

    .line 16
    .local v17, comp:Lgnu/expr/Compilation;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 17
    .local v7, args:[Lgnu/expr/Expression;
    array-length v15, v7

    .line 18
    .local v15, nargs:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lgnu/expr/Compilation;->mustCompile:Z

    move/from16 p3, v0

    .end local p3
    if-eqz p3, :cond_1

    if-eqz v15, :cond_1

    const/16 p3, 0x56

    move/from16 v0, v19

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    const/16 p3, 0x2a

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 p3, 0x1

    move v0, v15

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 23
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 411
    .end local v7           #args:[Lgnu/expr/Expression;
    .end local v13           #iproc:Lgnu/kawa/reflect/Invoke;
    .end local v15           #nargs:I
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 27
    .restart local v7       #args:[Lgnu/expr/Expression;
    .restart local v13       #iproc:Lgnu/kawa/reflect/Invoke;
    .restart local v15       #nargs:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    const/16 p3, 0x0

    aget-object p3, v7, p3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v11

    .line 28
    .local v11, arg0:Lgnu/expr/Expression;
    const/16 p3, 0x0

    aput-object v11, v7, p3

    .line 29
    const/16 p3, 0x56

    move/from16 v0, v19

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    const/16 p3, 0x2a

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    :cond_3
    invoke-virtual {v11}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    .line 30
    .local p3, type0:Lgnu/bytecode/Type;
    :goto_1
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/PairClassType;

    move v5, v0

    if-eqz v5, :cond_7

    const/16 v5, 0x4e

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 31
    check-cast p3, Lgnu/expr/PairClassType;

    .end local p3           #type0:Lgnu/bytecode/Type;
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object/from16 p3, v0

    .local p3, type:Lgnu/bytecode/ObjectType;
    move-object/from16 v24, p3

    .line 36
    .end local p3           #type:Lgnu/bytecode/ObjectType;
    .local v24, type:Lgnu/bytecode/ObjectType;
    :goto_2
    move-object v0, v7

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/kawa/reflect/CompileInvoke;->getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;

    move-result-object v20

    .line 39
    .local v20, name:Ljava/lang/String;
    const/16 p3, 0x56

    move/from16 v0, v19

    move/from16 v1, p3

    if-eq v0, v1, :cond_4

    const/16 p3, 0x2a

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_9

    .line 41
    :cond_4
    const/16 p3, 0x1

    sub-int v8, v15, p3

    .line 42
    .local v8, margsLength:I
    const/4 v9, 0x2

    .line 43
    .local v9, argsStartIndex:I
    const/4 v10, 0x0

    .line 69
    .local v10, objIndex:I
    :goto_3
    const/16 p3, 0x4e

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 p3, v0

    if-eqz p3, :cond_12

    .line 71
    move-object/from16 v0, v24

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v5, v0

    .line 72
    .local v5, atype:Lgnu/bytecode/ArrayType;
    invoke-virtual {v5}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 73
    .local v6, elementType:Lgnu/bytecode/Type;
    const/4 v9, 0x0

    .line 74
    .local v9, sizeArg:Lgnu/expr/Expression;
    const/16 p3, 0x0

    .line 75
    .local p3, lengthSpecified:Z
    move-object v0, v7

    array-length v0, v0

    move/from16 p2, v0

    .end local p2
    const/4 v8, 0x3

    move/from16 v0, p2

    move v1, v8

    if-lt v0, v1, :cond_4d

    .end local v8           #margsLength:I
    const/16 p2, 0x1

    aget-object p2, v7, p2

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 p2, v0

    if-eqz p2, :cond_4d

    .line 77
    const/16 p2, 0x1

    aget-object p2, v7, p2

    check-cast p2, Lgnu/expr/QuoteExp;

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 78
    .local p2, arg1:Ljava/lang/Object;
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v8, v0

    if-eqz v8, :cond_4d

    const-string v10, "length"

    .end local v10           #objIndex:I
    check-cast p2, Lgnu/expr/Keyword;

    .end local p2           #arg1:Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    .end local v20           #name:Ljava/lang/String;
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "size"

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 82
    :cond_5
    const/16 p2, 0x2

    aget-object p3, v7, p2

    .line 83
    .end local v9           #sizeArg:Lgnu/expr/Expression;
    .local p3, sizeArg:Lgnu/expr/Expression;
    const/16 p2, 0x1

    .local p2, lengthSpecified:Z
    move/from16 v11, p2

    .end local p2           #lengthSpecified:Z
    .local v11, lengthSpecified:Z
    move-object/from16 p2, v8

    .line 86
    .end local v8           #name:Ljava/lang/String;
    .local p2, name:Ljava/lang/String;
    :goto_4
    if-nez p3, :cond_4b

    .line 87
    new-instance p2, Ljava/lang/Integer;

    .end local p2           #name:Ljava/lang/String;
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    .end local p3           #sizeArg:Lgnu/expr/Expression;
    const/4 v8, 0x1

    sub-int p3, p3, v8

    invoke-direct/range {p2 .. p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {p2 .. p2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p2

    .line 88
    .local p2, sizeArg:Lgnu/expr/Expression;
    :goto_5
    sget-object p3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {p1 .. p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p2

    .line 89
    new-instance p3, Lgnu/expr/ApplyExp;

    new-instance v8, Lgnu/kawa/reflect/ArrayNew;

    invoke-direct {v8, v6}, Lgnu/kawa/reflect/ArrayNew;-><init>(Lgnu/bytecode/Type;)V

    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    move-object/from16 v0, p3

    move-object v1, v8

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 91
    .local p3, alloc:Lgnu/expr/ApplyExp;
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 92
    if-eqz v11, :cond_e

    move-object v0, v7

    array-length v0, v0

    move/from16 p2, v0

    .end local p2           #sizeArg:Lgnu/expr/Expression;
    const/4 v8, 0x3

    move/from16 v0, p2

    move v1, v8

    if-ne v0, v1, :cond_e

    move-object/from16 p0, p3

    .line 93
    goto/16 :goto_0

    .line 29
    .end local v5           #atype:Lgnu/bytecode/ArrayType;
    .end local v6           #elementType:Lgnu/bytecode/Type;
    .end local v24           #type:Lgnu/bytecode/ObjectType;
    .end local p3           #alloc:Lgnu/expr/ApplyExp;
    .local v11, arg0:Lgnu/expr/Expression;
    .local p2, required:Lgnu/bytecode/Type;
    :cond_6
    move-object v0, v13

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 p3, v0

    move-object/from16 v0, p3

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object p3

    goto/16 :goto_1

    .line 32
    .local p3, type0:Lgnu/bytecode/Type;
    :cond_7
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move v5, v0

    if-eqz v5, :cond_8

    .line 33
    check-cast p3, Lgnu/bytecode/ObjectType;

    .local p3, type:Lgnu/bytecode/ObjectType;
    move-object/from16 v24, p3

    .end local p3           #type:Lgnu/bytecode/ObjectType;
    .restart local v24       #type:Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 35
    .end local v24           #type:Lgnu/bytecode/ObjectType;
    .local p3, type0:Lgnu/bytecode/Type;
    :cond_8
    const/16 p3, 0x0

    .local p3, type:Lgnu/bytecode/ObjectType;
    move-object/from16 v24, p3

    .end local p3           #type:Lgnu/bytecode/ObjectType;
    .restart local v24       #type:Lgnu/bytecode/ObjectType;
    goto/16 :goto_2

    .line 45
    .restart local v20       #name:Ljava/lang/String;
    :cond_9
    const/16 p3, 0x4e

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 47
    move v8, v15

    .line 48
    .local v8, margsLength:I
    const/4 v9, 0x0

    .line 49
    .local v9, argsStartIndex:I
    const/4 v10, -0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .line 51
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_a
    const/16 p3, 0x53

    move/from16 v0, v19

    move/from16 v1, p3

    if-eq v0, v1, :cond_b

    const/16 p3, 0x73

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_c

    .line 53
    :cond_b
    const/16 p3, 0x2

    sub-int v8, v15, p3

    .line 54
    .restart local v8       #margsLength:I
    const/4 v9, 0x2

    .line 55
    .restart local v9       #argsStartIndex:I
    const/4 v10, -0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .line 57
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_c
    const/16 p3, 0x50

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_d

    .line 59
    const/16 p3, 0x2

    sub-int v8, v15, p3

    .line 60
    .restart local v8       #margsLength:I
    const/4 v9, 0x3

    .line 61
    .restart local v9       #argsStartIndex:I
    const/4 v10, 0x1

    .restart local v10       #objIndex:I
    goto/16 :goto_3

    .line 65
    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto/16 :goto_0

    .line 94
    .end local v20           #name:Ljava/lang/String;
    .end local p2           #required:Lgnu/bytecode/Type;
    .restart local v5       #atype:Lgnu/bytecode/ArrayType;
    .restart local v6       #elementType:Lgnu/bytecode/Type;
    .local v11, lengthSpecified:Z
    .local p3, alloc:Lgnu/expr/ApplyExp;
    :cond_e
    new-instance v12, Lgnu/expr/LetExp;

    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p2, v0

    const/4 v8, 0x0

    aput-object p3, p2, v8

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 95
    .local v12, let:Lgnu/expr/LetExp;
    const/16 p2, 0x0

    check-cast p2, Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p2

    .line 96
    .local p2, adecl:Lgnu/expr/Declaration;
    invoke-virtual/range {p2 .. p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    new-instance v5, Lgnu/expr/BeginExp;

    .end local v5           #atype:Lgnu/bytecode/ArrayType;
    invoke-direct {v5}, Lgnu/expr/BeginExp;-><init>()V

    .line 98
    .local v5, begin:Lgnu/expr/BeginExp;
    const/4 v8, 0x0

    .line 99
    .local v8, index:I
    if-eqz v11, :cond_10

    const/16 p3, 0x3

    .local p3, i:I
    :goto_6
    move v9, v8

    .end local v8           #index:I
    .local v9, index:I
    move/from16 v8, p3

    .end local v13           #iproc:Lgnu/kawa/reflect/Invoke;
    .end local v15           #nargs:I
    .end local p3           #i:I
    .local v8, i:I
    :goto_7
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    move v0, v8

    move/from16 v1, p3

    if-ge v0, v1, :cond_11

    .line 101
    aget-object p3, v7, v8

    .line 102
    .local p3, arg:Lgnu/expr/Expression;
    if-eqz v11, :cond_f

    add-int/lit8 v10, v8, 0x1

    array-length v13, v7

    if-ge v10, v13, :cond_f

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v10, v0

    if-eqz v10, :cond_f

    .line 104
    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 105
    .local v10, key:Ljava/lang/Object;
    instance-of v13, v10, Lgnu/expr/Keyword;

    if-eqz v13, :cond_f

    .line 107
    check-cast v10, Lgnu/expr/Keyword;

    .end local v10           #key:Ljava/lang/Object;
    invoke-virtual {v10}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, kname:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 111
    add-int/lit8 v8, v8, 0x1

    aget-object p3, v7, v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v10           #kname:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p3

    .line 121
    new-instance v10, Lgnu/expr/ApplyExp;

    new-instance v13, Lgnu/kawa/reflect/ArraySet;

    invoke-direct {v13, v6}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    const/4 v14, 0x3

    new-array v14, v14, [Lgnu/expr/Expression;

    const/4 v15, 0x0

    new-instance v16, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    move v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v16 .. v16}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object p3, v14, v15

    invoke-direct {v10, v13, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v5, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 99
    add-int/lit8 p3, v8, 0x1

    .end local v8           #i:I
    .local p3, i:I
    move/from16 v8, p3

    .end local p3           #i:I
    .restart local v8       #i:I
    goto :goto_7

    .end local v9           #index:I
    .local v8, index:I
    .restart local v13       #iproc:Lgnu/kawa/reflect/Invoke;
    .restart local v15       #nargs:I
    .local p3, alloc:Lgnu/expr/ApplyExp;
    :cond_10
    const/16 p3, 0x1

    goto :goto_6

    .line 113
    .end local v13           #iproc:Lgnu/kawa/reflect/Invoke;
    .end local v15           #nargs:I
    .local v8, i:I
    .restart local v9       #index:I
    .restart local v10       #kname:Ljava/lang/String;
    .local p3, arg:Lgnu/expr/Expression;
    :catch_0
    move-exception p1

    move/from16 p2, v8

    .end local v8           #i:I
    .local p2, i:I
    move/from16 p3, v9

    .line 115
    .end local v9           #index:I
    .local p1, ex:Ljava/lang/Throwable;
    .local p3, index:I
    const/16 p1, 0x65

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1           #ex:Ljava/lang/Throwable;
    .end local p2           #i:I
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "non-integer keyword \'"

    .end local p3           #index:I
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' in array constructor"

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .end local v10           #kname:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #index:I
    .local p1, visitor:Lgnu/expr/InlineCalls;
    .local p2, adecl:Lgnu/expr/Declaration;
    :cond_11
    new-instance p0, Lgnu/expr/ReferenceExp;

    .end local p0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 129
    iput-object v5, v12, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object/from16 p0, v12

    .line 130
    goto/16 :goto_0

    .line 132
    .end local v5           #begin:Lgnu/expr/BeginExp;
    .end local v6           #elementType:Lgnu/bytecode/Type;
    .end local v12           #let:Lgnu/expr/LetExp;
    .local v8, margsLength:I
    .local v9, argsStartIndex:I
    .local v10, objIndex:I
    .local v11, arg0:Lgnu/expr/Expression;
    .restart local v13       #iproc:Lgnu/kawa/reflect/Invoke;
    .restart local v15       #nargs:I
    .restart local v20       #name:Ljava/lang/String;
    .restart local p0
    .local p2, required:Lgnu/bytecode/Type;
    :cond_12
    if-eqz v24, :cond_4a

    if-eqz v20, :cond_4a

    .line 134
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 p3, v0

    if-eqz p3, :cond_13

    const/16 p3, 0x4e

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_13

    .line 136
    move-object/from16 v0, v24

    check-cast v0, Lgnu/expr/TypeValue;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object p3

    .line 137
    .local p3, constructor:Lgnu/mapping/Procedure;
    if-eqz p3, :cond_13

    .line 139
    const/16 p0, 0x1

    sub-int p0, v15, p0

    move/from16 v0, p0

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .line 140
    .local p0, xargs:[Lgnu/expr/Expression;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    sub-int v8, v15, v8

    move-object v0, v7

    move v1, v5

    move-object/from16 v2, p0

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .end local v8           #margsLength:I
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v0, v5

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .line 145
    .end local p3           #constructor:Lgnu/mapping/Procedure;
    .restart local v8       #margsLength:I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_13
    if-nez v17, :cond_17

    const/16 p3, 0x0

    move-object/from16 v12, p3

    .line 148
    .local v12, caller:Lgnu/bytecode/ClassType;
    :goto_8
    move-object/from16 v6, v24

    .line 152
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    :try_start_1
    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v12

    move-object v3, v13

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v5

    .line 153
    .local v5, methods:[Lgnu/expr/PrimProcedure;
    invoke-static {v5, v8}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    .line 160
    .local v22, numCode:I
    const/16 v18, -0x1

    .line 163
    .local v18, index:I
    const/16 p3, 0x4e

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_24

    const/16 p3, 0x1

    move/from16 v0, p3

    move-object v1, v7

    invoke-static {v0, v1}, Lgnu/kawa/reflect/CompileInvoke;->hasKeywordArgument(I[Lgnu/expr/Expression;)I

    move-result v14

    .local v14, keywordStart:I
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    move v0, v14

    move/from16 v1, p3

    if-lt v0, v1, :cond_14

    if-gtz v22, :cond_24

    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 p3, v0

    const/16 v16, 0x0

    sget-object v21, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    aput-object v21, p3, v16

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v25

    const/16 p3, 0x20

    shr-long v25, v25, p3

    const-wide/16 v27, 0x1

    cmp-long p3, v25, v27

    if-nez p3, :cond_24

    :cond_14
    invoke-static {v6, v7, v14, v12}, Lgnu/kawa/reflect/CompileInvoke;->checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;

    move-result-object v16

    .local v16, slots:[Ljava/lang/Object;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 p3, v0

    mul-int/lit8 p3, p3, 0x2

    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v14

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    const-string p3, "add"

    const/16 v21, 0x56

    const/16 v23, 0x0

    move-object v0, v13

    iget-object v0, v0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object/from16 v25, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move/from16 v2, v21

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object p3

    const/16 v21, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I

    move-result p3

    if-lez p3, :cond_24

    .line 174
    :cond_15
    const/16 p3, 0x0

    .line 175
    .local p3, errbuf:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .end local v9           #argsStartIndex:I
    .local v8, i:I
    :goto_9
    move-object/from16 v0, v16

    array-length v0, v0

    move v9, v0

    if-ge v8, v9, :cond_1a

    .line 177
    aget-object v9, v16, v8

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_16

    .line 179
    if-nez p3, :cond_19

    .line 181
    new-instance p3, Ljava/lang/StringBuffer;

    .end local p3           #errbuf:Ljava/lang/StringBuffer;
    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .restart local p3       #errbuf:Ljava/lang/StringBuffer;
    const-string v9, "no field or setter "

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :goto_a
    const/16 v9, 0x60

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    aget-object v9, v16, v8

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    const/16 v9, 0x27

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 145
    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .end local v14           #keywordStart:I
    .end local v16           #slots:[Ljava/lang/Object;
    .end local v18           #index:I
    .end local v22           #numCode:I
    .end local p3           #errbuf:Ljava/lang/StringBuffer;
    .local v8, margsLength:I
    .restart local v9       #argsStartIndex:I
    :cond_17
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 p3, v0

    if-eqz p3, :cond_18

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 p3, v0

    move-object/from16 v12, p3

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 p3, v0

    move-object/from16 v12, p3

    goto/16 :goto_8

    .line 155
    .restart local v6       #ctype:Lgnu/bytecode/ObjectType;
    .restart local v12       #caller:Lgnu/bytecode/ClassType;
    :catch_1
    move-exception p1

    .line 157
    .local p1, ex:Ljava/lang/Exception;
    const/16 p1, 0x77

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p1           #ex:Ljava/lang/Exception;
    .end local p2           #required:Lgnu/bytecode/Type;
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown class: "

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v9           #argsStartIndex:I
    .restart local v5       #methods:[Lgnu/expr/PrimProcedure;
    .local v8, i:I
    .restart local v14       #keywordStart:I
    .restart local v16       #slots:[Ljava/lang/Object;
    .restart local v18       #index:I
    .restart local v22       #numCode:I
    .local p1, visitor:Lgnu/expr/InlineCalls;
    .restart local p2       #required:Lgnu/bytecode/Type;
    .restart local p3       #errbuf:Ljava/lang/StringBuffer;
    :cond_19
    const-string v9, ", "

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 191
    :cond_1a
    if-eqz p3, :cond_1b

    .line 193
    const-string p1, " in class "

    .end local p1           #visitor:Lgnu/expr/InlineCalls;
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const/16 p1, 0x77

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #required:Lgnu/bytecode/Type;
    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .restart local p1       #visitor:Lgnu/expr/InlineCalls;
    .restart local p2       #required:Lgnu/bytecode/Type;
    :cond_1b
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    .end local p3           #errbuf:Ljava/lang/StringBuffer;
    move v0, v14

    move/from16 v1, p3

    if-ge v0, v1, :cond_1d

    .line 203
    move v0, v14

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p3, v0

    .line 204
    .local p3, xargs:[Lgnu/expr/Expression;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v7

    move v1, v5

    move-object/from16 v2, p3

    move v3, v8

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v8           #i:I
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p3

    .end local p3           #xargs:[Lgnu/expr/Expression;
    check-cast p3, Lgnu/expr/ApplyExp;

    .line 209
    .local p3, ae:Lgnu/expr/ApplyExp;
    :goto_b
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 210
    move-object/from16 v5, p3

    .line 211
    .local v5, e:Lgnu/expr/Expression;
    array-length v8, v7

    if-lez v8, :cond_23

    .line 213
    const/4 v5, 0x0

    .local v5, i:I
    move v8, v5

    .end local v5           #i:I
    .restart local v8       #i:I
    move-object/from16 v5, p3

    .end local v10           #objIndex:I
    .end local v11           #arg0:Lgnu/expr/Expression;
    .end local p3           #ae:Lgnu/expr/ApplyExp;
    .local v5, ae:Lgnu/expr/ApplyExp;
    :goto_c
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 p3, v0

    move v0, v8

    move/from16 v1, p3

    if-ge v0, v1, :cond_20

    .line 215
    aget-object v10, v16, v8

    .line 217
    .local v10, slot:Ljava/lang/Object;
    move-object v0, v10

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 p3, v0

    if-eqz p3, :cond_1e

    .line 218
    move-object v0, v10

    check-cast v0, Lgnu/bytecode/Method;

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object p3

    const/4 v9, 0x0

    aget-object p3, p3, v9

    .line 223
    .local p3, stype:Lgnu/bytecode/Type;
    :goto_d
    if-eqz p3, :cond_1c

    .line 224
    iget-object v9, v13, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p3

    .line 225
    :cond_1c
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v14

    add-int/lit8 v9, v9, 0x1

    aget-object v9, v7, v9

    move-object/from16 v0, p1

    move-object v1, v9

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p3

    .line 226
    .local p3, arg:Lgnu/expr/Expression;
    const/4 v9, 0x3

    new-array v9, v9, [Lgnu/expr/Expression;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v5, 0x1

    new-instance v11, Lgnu/expr/QuoteExp;

    .end local v5           #ae:Lgnu/expr/ApplyExp;
    invoke-direct {v11, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v5

    const/4 v5, 0x2

    aput-object p3, v9, v5

    .line 228
    .local v9, sargs:[Lgnu/expr/Expression;
    new-instance p3, Lgnu/expr/ApplyExp;

    .end local p3           #arg:Lgnu/expr/Expression;
    sget-object v5, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 229
    .local p3, ae:Lgnu/expr/ApplyExp;
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 213
    add-int/lit8 v5, v8, 0x1

    .end local v8           #i:I
    .local v5, i:I
    move v8, v5

    .end local v5           #i:I
    .restart local v8       #i:I
    move-object/from16 v5, p3

    .end local p3           #ae:Lgnu/expr/ApplyExp;
    .local v5, ae:Lgnu/expr/ApplyExp;
    goto :goto_c

    .line 208
    .end local v9           #sargs:[Lgnu/expr/Expression;
    .local v5, methods:[Lgnu/expr/PrimProcedure;
    .local v10, objIndex:I
    .restart local v11       #arg0:Lgnu/expr/Expression;
    :cond_1d
    new-instance p3, Lgnu/expr/ApplyExp;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v8           #i:I
    const/4 v8, 0x1

    new-array v8, v8, [Lgnu/expr/Expression;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    move-object/from16 v0, p3

    move-object v1, v5

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .restart local p3       #ae:Lgnu/expr/ApplyExp;
    goto/16 :goto_b

    .line 219
    .end local v11           #arg0:Lgnu/expr/Expression;
    .end local p3           #ae:Lgnu/expr/ApplyExp;
    .local v5, ae:Lgnu/expr/ApplyExp;
    .restart local v8       #i:I
    .local v10, slot:Ljava/lang/Object;
    :cond_1e
    move-object v0, v10

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 p3, v0

    if-eqz p3, :cond_1f

    .line 220
    move-object v0, v10

    check-cast v0, Lgnu/bytecode/Field;

    move-object v11, v0

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p3

    .local p3, stype:Lgnu/bytecode/Type;
    goto :goto_d

    .line 222
    .end local p3           #stype:Lgnu/bytecode/Type;
    :cond_1f
    const/16 p3, 0x0

    .restart local p3       #stype:Lgnu/bytecode/Type;
    goto :goto_d

    .line 231
    .end local v10           #slot:Ljava/lang/Object;
    .end local p3           #stype:Lgnu/bytecode/Type;
    :cond_20
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    move v0, v14

    move/from16 v1, p3

    if-ne v0, v1, :cond_21

    const/16 p3, 0x1

    move/from16 v9, p3

    .line 233
    .local v9, sargs:I
    :goto_e
    move-object v8, v5

    .line 234
    .local v8, e:Lgnu/expr/Expression;
    move-object v0, v7

    array-length v0, v0

    move/from16 p3, v0

    move v0, v9

    move/from16 v1, p3

    if-ge v0, v1, :cond_49

    .line 236
    new-instance v10, Lgnu/expr/LetExp;

    const/16 p3, 0x1

    move/from16 v0, p3

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 p3, v0

    const/4 v11, 0x0

    aput-object v8, p3, v11

    move-object v0, v10

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 237
    .local v10, let:Lgnu/expr/LetExp;
    const/16 p3, 0x0

    check-cast p3, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object p3

    .line 238
    .local p3, adecl:Lgnu/expr/Declaration;
    move-object/from16 v0, p3

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 239
    new-instance v6, Lgnu/expr/BeginExp;

    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    invoke-direct {v6}, Lgnu/expr/BeginExp;-><init>()V

    .line 240
    .local v6, begin:Lgnu/expr/BeginExp;
    move v8, v9

    .end local v9           #sargs:I
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .local v8, i:I
    :goto_f
    array-length v9, v7

    if-ge v8, v9, :cond_22

    .line 242
    const/4 v9, 0x3

    new-array v9, v9, [Lgnu/expr/Expression;

    const/4 v11, 0x0

    new-instance v12, Lgnu/expr/ReferenceExp;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "add"

    invoke-static {v12}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    aget-object v12, v7, v8

    aput-object v12, v9, v11

    .line 247
    .local v9, iargs:[Lgnu/expr/Expression;
    new-instance v11, Lgnu/expr/ApplyExp;

    sget-object v12, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v11, v12, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    .end local v9           #iargs:[Lgnu/expr/Expression;
    move-result-object v9

    invoke-virtual {v6, v9}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 231
    .end local v10           #let:Lgnu/expr/LetExp;
    .end local p3           #adecl:Lgnu/expr/Declaration;
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    .restart local v12       #caller:Lgnu/bytecode/ClassType;
    :cond_21
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 p3, v0

    mul-int/lit8 p3, p3, 0x2

    add-int p3, p3, v14

    move/from16 v9, p3

    goto :goto_e

    .line 251
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .local v6, begin:Lgnu/expr/BeginExp;
    .restart local v10       #let:Lgnu/expr/LetExp;
    .restart local p3       #adecl:Lgnu/expr/Declaration;
    :cond_22
    new-instance v7, Lgnu/expr/ReferenceExp;

    .end local v7           #args:[Lgnu/expr/Expression;
    move-object v0, v7

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-virtual {v6, v7}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 252
    iput-object v6, v10, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 253
    move-object/from16 p3, v10

    .local p3, e:Lgnu/expr/Expression;
    move-object/from16 v29, p3

    .end local p3           #e:Lgnu/expr/Expression;
    .local v29, e:Lgnu/expr/Expression;
    move-object/from16 p3, v5

    .end local v5           #ae:Lgnu/expr/ApplyExp;
    .local p3, ae:Lgnu/expr/ApplyExp;
    move-object/from16 v5, v29

    .line 256
    .end local v6           #begin:Lgnu/expr/BeginExp;
    .end local v8           #i:I
    .end local v10           #let:Lgnu/expr/LetExp;
    .end local v29           #e:Lgnu/expr/Expression;
    .local v5, e:Lgnu/expr/Expression;
    :cond_23
    :goto_10
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .line 260
    .end local v14           #keywordStart:I
    .end local v16           #slots:[Ljava/lang/Object;
    .end local p3           #ae:Lgnu/expr/ApplyExp;
    .local v5, methods:[Lgnu/expr/PrimProcedure;
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    .restart local v7       #args:[Lgnu/expr/Expression;
    .local v8, margsLength:I
    .local v9, argsStartIndex:I
    .local v10, objIndex:I
    .restart local v11       #arg0:Lgnu/expr/Expression;
    .restart local v12       #caller:Lgnu/bytecode/ClassType;
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    :cond_24
    if-ltz v22, :cond_34

    .line 262
    const/16 p3, 0x1

    .local p3, i:I
    move/from16 v11, p3

    .end local v13           #iproc:Lgnu/kawa/reflect/Invoke;
    .end local p3           #i:I
    .local v11, i:I
    :goto_11
    if-ge v11, v15, :cond_30

    .line 264
    const/16 p3, 0x0

    .line 265
    .local p3, atype:Lgnu/bytecode/Type;
    const/4 v13, 0x1

    sub-int v13, v15, v13

    if-ne v11, v13, :cond_28

    const/4 v13, 0x1

    move v14, v13

    .line 266
    .local v14, last:Z
    :goto_12
    const/16 v13, 0x50

    move/from16 v0, v19

    move v1, v13

    if-ne v0, v1, :cond_25

    const/4 v13, 0x2

    if-eq v11, v13, :cond_26

    :cond_25
    const/16 v13, 0x4e

    move/from16 v0, v19

    move v1, v13

    if-eq v0, v1, :cond_29

    const/4 v13, 0x1

    if-ne v11, v13, :cond_29

    .line 267
    :cond_26
    const/16 p3, 0x0

    .line 298
    :cond_27
    :goto_13
    aget-object v13, v7, v11

    move-object/from16 v0, p1

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p3

    .end local p3           #atype:Lgnu/bytecode/Type;
    aput-object p3, v7, v11

    .line 262
    add-int/lit8 p3, v11, 0x1

    .end local v11           #i:I
    .local p3, i:I
    move/from16 v11, p3

    .end local p3           #i:I
    .restart local v11       #i:I
    goto :goto_11

    .line 265
    .end local v14           #last:Z
    .local p3, atype:Lgnu/bytecode/Type;
    :cond_28
    const/4 v13, 0x0

    move v14, v13

    goto :goto_12

    .line 268
    .restart local v14       #last:Z
    :cond_29
    const/16 v13, 0x50

    move/from16 v0, v19

    move v1, v13

    if-ne v0, v1, :cond_2a

    const/4 v13, 0x1

    if-ne v11, v13, :cond_2a

    .line 269
    move-object/from16 p3, v6

    goto :goto_13

    .line 270
    :cond_2a
    if-lez v22, :cond_27

    .line 272
    const/16 v13, 0x4e

    move/from16 v0, v19

    move v1, v13

    if-ne v0, v1, :cond_2b

    const/4 v13, 0x1

    :goto_14
    sub-int v16, v11, v13

    .line 273
    .local v16, pi:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_15
    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    .line 275
    aget-object v23, v5, v13

    .line 276
    .local v23, pproc:Lgnu/expr/PrimProcedure;
    const/16 v21, 0x53

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, 0x1

    :goto_16
    add-int v21, v21, v16

    .line 279
    .local v21, pii:I
    if-eqz v14, :cond_2d

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v25

    if-eqz v25, :cond_2d

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v25

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 281
    const/16 p3, 0x0

    .line 294
    .end local v21           #pii:I
    .end local v23           #pproc:Lgnu/expr/PrimProcedure;
    :goto_17
    if-eqz p3, :cond_27

    .line 273
    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .end local v13           #j:I
    .end local v16           #pi:I
    :cond_2b
    move v13, v9

    .line 272
    goto :goto_14

    .line 276
    .restart local v13       #j:I
    .restart local v16       #pi:I
    .restart local v23       #pproc:Lgnu/expr/PrimProcedure;
    :cond_2c
    const/16 v21, 0x0

    goto :goto_16

    .line 284
    .restart local v21       #pii:I
    :cond_2d
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/expr/PrimProcedure;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v21

    .line 285
    .local v21, ptype:Lgnu/bytecode/Type;
    if-nez v13, :cond_2e

    .line 286
    move-object/from16 p3, v21

    goto :goto_17

    .line 287
    :cond_2e
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v23, v0

    .end local v23           #pproc:Lgnu/expr/PrimProcedure;
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_2f

    .line 288
    const/16 p3, 0x0

    goto :goto_17

    .line 291
    :cond_2f
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p3

    goto :goto_17

    .line 300
    .end local v13           #j:I
    .end local v14           #last:Z
    .end local v16           #pi:I
    .end local v21           #ptype:Lgnu/bytecode/Type;
    .end local p3           #atype:Lgnu/bytecode/Type;
    :cond_30
    invoke-static/range {v5 .. v10}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v13

    .line 302
    .local v13, num:J
    const/16 p3, 0x20

    shr-long v25, v13, p3

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move v11, v0

    .line 303
    .local v11, okCount:I
    move-wide v0, v13

    long-to-int v0, v0

    move/from16 p3, v0

    .line 310
    .end local v13           #num:J
    .local p3, maybeCount:I
    :goto_18
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    .line 311
    .local v21, nmethods:I
    add-int v13, v11, p3

    if-nez v13, :cond_31

    const/16 v13, 0x4e

    move/from16 v0, v19

    move v1, v13

    if-ne v0, v1, :cond_31

    .line 313
    const-string p3, "valueOf"

    .end local p3           #maybeCount:I
    sget-object v5, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    move-object v0, v6

    move-object/from16 v1, p3

    move-object v2, v12

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v5

    .line 314
    .restart local v5       #methods:[Lgnu/expr/PrimProcedure;
    const/4 v9, 0x1

    .line 315
    const/16 p3, 0x1

    sub-int v8, v15, p3

    .line 316
    const/16 v16, -0x1

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move v14, v8

    move v15, v9

    invoke-static/range {v11 .. v16}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    .end local v11           #okCount:I
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .end local v15           #nargs:I
    move-result-wide v11

    .line 318
    .local v11, num:J
    const/16 p3, 0x20

    shr-long v13, v11, p3

    long-to-int v6, v13

    .line 319
    .local v6, okCount:I
    move-wide v0, v11

    long-to-int v0, v0

    move/from16 p3, v0

    .restart local p3       #maybeCount:I
    move v11, v6

    .line 321
    .end local v6           #okCount:I
    .local v11, okCount:I
    :cond_31
    add-int v6, v11, p3

    if-nez v6, :cond_39

    .line 323
    const/16 p3, 0x50

    move/from16 v0, v19

    move/from16 v1, p3

    if-eq v0, v1, :cond_32

    .end local p3           #maybeCount:I
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result p3

    if-eqz p3, :cond_42

    .line 325
    :cond_32
    const/16 p3, 0x4e

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_48

    .line 326
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v6, "/valueOf"

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 327
    .end local v20           #name:Ljava/lang/String;
    .local p3, name:Ljava/lang/String;
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v6, sbuf:Ljava/lang/StringBuilder;
    array-length v11, v5

    .end local v11           #okCount:I
    add-int v11, v11, v21

    if-nez v11, :cond_35

    .line 329
    const-string v11, "no accessible method \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_1a
    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v11, "\' in "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v11, 0x50

    move/from16 v0, v19

    move v1, v11

    if-ne v0, v1, :cond_38

    const/16 v11, 0x65

    :goto_1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6           #sbuf:Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    move v1, v11

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object/from16 v6, p3

    .end local p3           #name:Ljava/lang/String;
    .local v6, name:Ljava/lang/String;
    move/from16 p3, v18

    .line 391
    .end local v18           #index:I
    .local p3, index:I
    :goto_1c
    if-ltz p3, :cond_45

    .line 393
    new-array v6, v8, [Lgnu/expr/Expression;

    .line 394
    .local v6, margs:[Lgnu/expr/Expression;
    aget-object v8, v5, p3

    .line 395
    .local v8, method:Lgnu/expr/PrimProcedure;
    invoke-virtual {v8}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result p3

    .line 396
    .local p3, variable:Z
    const/16 p3, 0x0

    .line 397
    .local p3, dst:I
    if-ltz v10, :cond_33

    .line 398
    add-int/lit8 v5, p3, 0x1

    .end local p3           #dst:I
    .local v5, dst:I
    aget-object v10, v7, v10

    .end local v10           #objIndex:I
    aput-object v10, v6, p3

    move/from16 p3, v5

    .line 399
    .end local v5           #dst:I
    .restart local p3       #dst:I
    :cond_33
    move v5, v9

    .line 400
    .end local v9           #argsStartIndex:I
    .local v5, src:I
    :goto_1d
    array-length v9, v7

    if-ge v5, v9, :cond_44

    array-length v9, v6

    move/from16 v0, p3

    move v1, v9

    if-ge v0, v1, :cond_44

    .line 403
    aget-object v9, v7, v5

    aput-object v9, v6, p3

    .line 401
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    .line 307
    .end local v21           #nmethods:I
    .end local p3           #dst:I
    .local v5, methods:[Lgnu/expr/PrimProcedure;
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    .local v8, margsLength:I
    .restart local v9       #argsStartIndex:I
    .restart local v10       #objIndex:I
    .local v11, arg0:Lgnu/expr/Expression;
    .restart local v12       #caller:Lgnu/bytecode/ClassType;
    .local v13, iproc:Lgnu/kawa/reflect/Invoke;
    .restart local v15       #nargs:I
    .restart local v18       #index:I
    .restart local v20       #name:Ljava/lang/String;
    :cond_34
    const/4 v11, 0x0

    .line 308
    .local v11, okCount:I
    const/16 p3, 0x0

    .local p3, maybeCount:I
    goto/16 :goto_18

    .line 330
    .end local v11           #okCount:I
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .end local v13           #iproc:Lgnu/kawa/reflect/Invoke;
    .end local v15           #nargs:I
    .end local v20           #name:Ljava/lang/String;
    .local v6, sbuf:Ljava/lang/StringBuilder;
    .restart local v21       #nmethods:I
    .local p3, name:Ljava/lang/String;
    :cond_35
    const/high16 v11, -0xf

    move/from16 v0, v22

    move v1, v11

    if-ne v0, v1, :cond_36

    .line 331
    const-string v11, "too few arguments for method \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 332
    :cond_36
    const/high16 v11, -0xe

    move/from16 v0, v22

    move v1, v11

    if-ne v0, v1, :cond_37

    .line 333
    const-string v11, "too many arguments for method \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 335
    :cond_37
    const-string v11, "no possibly applicable method \'"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 339
    :cond_38
    const/16 v11, 0x77

    goto :goto_1b

    .line 342
    .end local v6           #sbuf:Ljava/lang/StringBuilder;
    .restart local v11       #okCount:I
    .restart local v20       #name:Ljava/lang/String;
    .local p3, maybeCount:I
    :cond_39
    const/4 v6, 0x1

    if-eq v11, v6, :cond_3a

    if-nez v11, :cond_3b

    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_3b

    .line 343
    :cond_3a
    const/16 p3, 0x0

    .end local v18           #index:I
    .local p3, index:I
    move-object/from16 v6, v20

    .end local v20           #name:Ljava/lang/String;
    .local v6, name:Ljava/lang/String;
    goto :goto_1c

    .line 344
    .end local v6           #name:Ljava/lang/String;
    .restart local v18       #index:I
    .restart local v20       #name:Ljava/lang/String;
    .local p3, maybeCount:I
    :cond_3b
    if-lez v11, :cond_40

    .line 346
    invoke-static {v5, v11}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v6

    .line 347
    .end local v18           #index:I
    .local v6, index:I
    if-gez v6, :cond_47

    .line 349
    const/16 p3, 0x53

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_47

    .line 354
    .end local p3           #maybeCount:I
    const/16 p3, 0x0

    .local p3, i:I
    :goto_1e
    move/from16 v0, p3

    move v1, v11

    if-ge v0, v1, :cond_47

    .line 356
    aget-object v12, v5, p3

    invoke-virtual {v12}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 358
    if-ltz v6, :cond_3d

    .line 360
    const/16 p3, -0x1

    .line 369
    .end local v6           #index:I
    .local p3, index:I
    :goto_1f
    if-gez p3, :cond_46

    const/16 v6, 0x50

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_3c

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 372
    :cond_3c
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    .local v6, sbuf:Ljava/lang/StringBuffer;
    const-string v12, "more than one definitely applicable method `"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v12, "\' in "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-static {v5, v11, v6}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 378
    const/16 v11, 0x50

    move/from16 v0, v19

    move v1, v11

    if-ne v0, v1, :cond_3f

    .end local v11           #okCount:I
    const/16 v11, 0x65

    :goto_20
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v17

    move v1, v11

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object/from16 v6, v20

    .line 379
    .end local v20           #name:Ljava/lang/String;
    .local v6, name:Ljava/lang/String;
    goto/16 :goto_1c

    .line 364
    .local v6, index:I
    .restart local v11       #okCount:I
    .restart local v20       #name:Ljava/lang/String;
    .local p3, i:I
    :cond_3d
    move/from16 v6, p3

    .line 354
    :cond_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    .line 378
    .end local v11           #okCount:I
    .local v6, sbuf:Ljava/lang/StringBuffer;
    .local p3, index:I
    :cond_3f
    const/16 v11, 0x77

    goto :goto_20

    .line 381
    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    .restart local v11       #okCount:I
    .restart local v18       #index:I
    .local p3, maybeCount:I
    :cond_40
    const/16 v6, 0x50

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_41

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 383
    :cond_41
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .restart local v6       #sbuf:Ljava/lang/StringBuffer;
    const-string v11, "more than one possibly applicable method \'"

    .end local v11           #okCount:I
    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    const-string v11, "\' in "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    move-object v0, v5

    move/from16 v1, p3

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 389
    const/16 p3, 0x50

    move/from16 v0, v19

    move/from16 v1, p3

    if-ne v0, v1, :cond_43

    .end local p3           #maybeCount:I
    const/16 p3, 0x65

    :goto_21
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6           #sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v17

    move/from16 v1, p3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_42
    move/from16 p3, v18

    .end local v18           #index:I
    .local p3, index:I
    move-object/from16 v6, v20

    .end local v20           #name:Ljava/lang/String;
    .local v6, name:Ljava/lang/String;
    goto/16 :goto_1c

    .end local p3           #index:I
    .local v6, sbuf:Ljava/lang/StringBuffer;
    .restart local v18       #index:I
    .restart local v20       #name:Ljava/lang/String;
    :cond_43
    const/16 p3, 0x77

    goto :goto_21

    .line 405
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    .end local v18           #index:I
    .end local v20           #name:Ljava/lang/String;
    .local v5, src:I
    .local v6, margs:[Lgnu/expr/Expression;
    .local v8, method:Lgnu/expr/PrimProcedure;
    .local p3, dst:I
    :cond_44
    new-instance p3, Lgnu/expr/ApplyExp;

    .end local p3           #dst:I
    move-object/from16 v0, p3

    move-object v1, v8

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 406
    .local p3, e:Lgnu/expr/ApplyExp;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 407
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_0

    .local v5, methods:[Lgnu/expr/PrimProcedure;
    .local v6, name:Ljava/lang/String;
    .local v8, margsLength:I
    .restart local v9       #argsStartIndex:I
    .restart local v10       #objIndex:I
    .local p3, index:I
    :cond_45
    move-object/from16 p2, v6

    .line 410
    .end local v5           #methods:[Lgnu/expr/PrimProcedure;
    .end local v6           #name:Ljava/lang/String;
    .end local v21           #nmethods:I
    .end local v22           #numCode:I
    .end local p3           #index:I
    .local p2, name:Ljava/lang/String;
    :goto_22
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    goto/16 :goto_0

    .restart local v5       #methods:[Lgnu/expr/PrimProcedure;
    .restart local v11       #okCount:I
    .restart local v20       #name:Ljava/lang/String;
    .restart local v21       #nmethods:I
    .restart local v22       #numCode:I
    .local p2, required:Lgnu/bytecode/Type;
    .restart local p3       #index:I
    :cond_46
    move-object/from16 v6, v20

    .end local v20           #name:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    goto/16 :goto_1c

    .end local p3           #index:I
    .local v6, index:I
    .restart local v20       #name:Ljava/lang/String;
    :cond_47
    move/from16 p3, v6

    .end local v6           #index:I
    .restart local p3       #index:I
    goto/16 :goto_1f

    .end local p3           #index:I
    .restart local v18       #index:I
    :cond_48
    move-object/from16 p3, v20

    .end local v20           #name:Ljava/lang/String;
    .local p3, name:Ljava/lang/String;
    goto/16 :goto_19

    .end local v10           #objIndex:I
    .end local v11           #okCount:I
    .end local v21           #nmethods:I
    .end local p3           #name:Ljava/lang/String;
    .local v5, ae:Lgnu/expr/ApplyExp;
    .local v6, ctype:Lgnu/bytecode/ObjectType;
    .local v8, e:Lgnu/expr/Expression;
    .local v9, sargs:I
    .restart local v12       #caller:Lgnu/bytecode/ClassType;
    .restart local v13       #iproc:Lgnu/kawa/reflect/Invoke;
    .local v14, keywordStart:I
    .restart local v15       #nargs:I
    .local v16, slots:[Ljava/lang/Object;
    .restart local v20       #name:Ljava/lang/String;
    :cond_49
    move-object/from16 p3, v5

    .end local v5           #ae:Lgnu/expr/ApplyExp;
    .local p3, ae:Lgnu/expr/ApplyExp;
    move-object v5, v8

    .end local v8           #e:Lgnu/expr/Expression;
    .local v5, e:Lgnu/expr/Expression;
    goto/16 :goto_10

    .end local v5           #e:Lgnu/expr/Expression;
    .end local v6           #ctype:Lgnu/bytecode/ObjectType;
    .end local v12           #caller:Lgnu/bytecode/ClassType;
    .end local v14           #keywordStart:I
    .end local v16           #slots:[Ljava/lang/Object;
    .end local v18           #index:I
    .end local v22           #numCode:I
    .end local p3           #ae:Lgnu/expr/ApplyExp;
    .local v8, margsLength:I
    .local v9, argsStartIndex:I
    .restart local v10       #objIndex:I
    .local v11, arg0:Lgnu/expr/Expression;
    :cond_4a
    move-object/from16 p2, v20

    .end local v20           #name:Ljava/lang/String;
    .local p2, name:Ljava/lang/String;
    goto :goto_22

    .end local v8           #margsLength:I
    .end local v9           #argsStartIndex:I
    .end local v10           #objIndex:I
    .local v5, atype:Lgnu/bytecode/ArrayType;
    .local v6, elementType:Lgnu/bytecode/Type;
    .local v11, lengthSpecified:Z
    .local p3, sizeArg:Lgnu/expr/Expression;
    :cond_4b
    move-object/from16 p2, p3

    .end local p3           #sizeArg:Lgnu/expr/Expression;
    .local p2, sizeArg:Lgnu/expr/Expression;
    goto/16 :goto_5

    .end local p2           #sizeArg:Lgnu/expr/Expression;
    .local v8, name:Ljava/lang/String;
    .local v9, sizeArg:Lgnu/expr/Expression;
    .local v11, arg0:Lgnu/expr/Expression;
    .local p3, lengthSpecified:Z
    :cond_4c
    move/from16 v11, p3

    .end local p3           #lengthSpecified:Z
    .local v11, lengthSpecified:Z
    move-object/from16 p2, v8

    .end local v8           #name:Ljava/lang/String;
    .local p2, name:Ljava/lang/String;
    move-object/from16 p3, v9

    .end local v9           #sizeArg:Lgnu/expr/Expression;
    .local p3, sizeArg:Lgnu/expr/Expression;
    goto/16 :goto_4

    .end local p2           #name:Ljava/lang/String;
    .restart local v9       #sizeArg:Lgnu/expr/Expression;
    .restart local v10       #objIndex:I
    .local v11, arg0:Lgnu/expr/Expression;
    .restart local v20       #name:Ljava/lang/String;
    .local p3, lengthSpecified:Z
    :cond_4d
    move/from16 v11, p3

    .end local p3           #lengthSpecified:Z
    .local v11, lengthSpecified:Z
    move-object/from16 p2, v20

    .end local v20           #name:Ljava/lang/String;
    .restart local p2       #name:Ljava/lang/String;
    move-object/from16 p3, v9

    .end local v9           #sizeArg:Lgnu/expr/Expression;
    .local p3, sizeArg:Lgnu/expr/Expression;
    goto/16 :goto_4
.end method
