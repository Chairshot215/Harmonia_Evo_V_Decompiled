.class public Lgnu/kawa/functions/CompileArith;
.super Ljava/lang/Object;
.source "CompileArith.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static $Mn:Lgnu/kawa/functions/CompileArith;

.field public static $Pl:Lgnu/kawa/functions/CompileArith;


# instance fields
.field op:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    .line 15
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Mn:Lgnu/kawa/functions/CompileArith;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter "proc"
    .parameter "op"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    iput-object p1, p0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileArith;->op:I

    .line 21
    return-void
.end method

.method static adjustReturnKind(II)I
    .locals 3
    .parameter "rkind"
    .parameter "op"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x7

    const/4 v0, 0x4

    .line 445
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-lez p0, :cond_0

    .line 447
    packed-switch p1, :pswitch_data_0

    .line 464
    :cond_0
    :goto_0
    :pswitch_0
    return p0

    .line 450
    :pswitch_1
    if-gt p0, v0, :cond_0

    .line 451
    const/4 p0, 0x6

    goto :goto_0

    .line 454
    :pswitch_2
    if-gt p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    .line 456
    const/16 p0, 0x8

    goto :goto_0

    .line 459
    :pswitch_3
    if-gt p0, v2, :cond_0

    .line 460
    const/4 p0, 0x4

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 2
    .parameter "args"
    .parameter "iarg"
    .parameter "visitor"

    .prologue
    .line 40
    aget-object v1, p0, p1

    invoke-virtual {p2, v1}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 41
    .local v0, exp:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 43
    aput-object v0, p0, p1

    .line 44
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 2
    .parameter "args"
    .parameter "iarg"
    .parameter "visitor"

    .prologue
    .line 51
    aget-object v1, p0, p1

    invoke-virtual {p2, v1}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 52
    .local v0, exp:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 54
    aput-object v0, p0, p1

    .line 55
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static forBitwise(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 3
    .parameter "proc"

    .prologue
    .line 35
    new-instance v2, Lgnu/kawa/functions/CompileArith;

    move-object v0, p0

    check-cast v0, Lgnu/kawa/functions/BitwiseOp;

    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    invoke-direct {v2, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v2
.end method

.method public static forDiv(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 3
    .parameter "proc"

    .prologue
    .line 30
    new-instance v2, Lgnu/kawa/functions/CompileArith;

    move-object v0, p0

    check-cast v0, Lgnu/kawa/functions/DivideOp;

    move-object v1, v0

    iget v1, v1, Lgnu/kawa/functions/DivideOp;->op:I

    invoke-direct {v2, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v2
.end method

.method public static forMul(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2
    .parameter "proc"

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static getReturnKind(III)I
    .locals 1
    .parameter "kind1"
    .parameter "kind2"
    .parameter "op"

    .prologue
    .line 411
    const/16 v0, 0x9

    if-lt p2, v0, :cond_0

    const/16 v0, 0xc

    if-gt p2, v0, :cond_0

    move v0, p0

    .line 413
    :goto_0
    return v0

    :cond_0
    if-lez p0, :cond_1

    if-le p0, p1, :cond_2

    if-lez p1, :cond_2

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public static pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 9
    .parameter "proc"
    .parameter "rproc"
    .parameter "args"
    .parameter "visitor"

    .prologue
    const/4 v8, 0x0

    .line 588
    array-length v3, p2

    .line 589
    .local v3, len:I
    aget-object v5, p2, v8

    .line 590
    .local v5, prev:Lgnu/expr/Expression;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 592
    const/4 v6, 0x2

    new-array v0, v6, [Lgnu/expr/Expression;

    .line 593
    .local v0, args2:[Lgnu/expr/Expression;
    aput-object v5, v0, v8

    .line 594
    const/4 v6, 0x1

    aget-object v7, p2, v1

    aput-object v7, v0, v6

    .line 595
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 596
    .local v4, next:Lgnu/expr/ApplyExp;
    const/4 v6, 0x0

    invoke-virtual {p3, v4, v6, p0}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v2

    .line 597
    .local v2, inlined:Lgnu/expr/Expression;
    if-eqz v2, :cond_0

    move-object v5, v2

    .line 590
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 597
    goto :goto_1

    .line 599
    .end local v0           #args2:[Lgnu/expr/Expression;
    .end local v2           #inlined:Lgnu/expr/Expression;
    .end local v4           #next:Lgnu/expr/ApplyExp;
    :cond_1
    return-object v5
.end method

.method public static validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 9
    .parameter "proc"
    .parameter "exp"
    .parameter "visitor"

    .prologue
    const/4 v8, 0x0

    .line 469
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 470
    .local v0, args:[Lgnu/expr/Expression;
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget v6, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-gez v6, :cond_5

    .line 472
    aget-object v6, v0, v8

    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 473
    .local v5, type0:Lgnu/bytecode/Type;
    instance-of v6, v5, Lgnu/bytecode/PrimType;

    if-eqz v6, :cond_5

    .line 475
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 476
    .local v3, sig0:C
    const/4 v4, 0x0

    .line 477
    .local v4, type:Lgnu/bytecode/Type;
    const/4 v1, 0x0

    .line 478
    .local v1, opcode:I
    const/16 v6, 0x56

    if-eq v3, v6, :cond_0

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_0

    const/16 v6, 0x43

    if-ne v3, v6, :cond_1

    .line 502
    :cond_0
    :goto_0
    if-eqz v4, :cond_5

    .line 504
    invoke-static {v1, v4}, Lgnu/expr/PrimProcedure;->makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object v2

    .line 506
    .local v2, prim:Lgnu/expr/PrimProcedure;
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 510
    .end local v1           #opcode:I
    .end local v2           #prim:Lgnu/expr/PrimProcedure;
    .end local v3           #sig0:C
    .end local v4           #type:Lgnu/bytecode/Type;
    .end local v5           #type0:Lgnu/bytecode/Type;
    :goto_1
    return-object v6

    .line 482
    .restart local v1       #opcode:I
    .restart local v3       #sig0:C
    .restart local v4       #type:Lgnu/bytecode/Type;
    .restart local v5       #type0:Lgnu/bytecode/Type;
    :cond_1
    const/16 v6, 0x44

    if-ne v3, v6, :cond_2

    .line 484
    const/16 v1, 0x77

    .line 485
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 487
    :cond_2
    const/16 v6, 0x46

    if-ne v3, v6, :cond_3

    .line 489
    const/16 v1, 0x76

    .line 490
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 492
    :cond_3
    const/16 v6, 0x4a

    if-ne v3, v6, :cond_4

    .line 494
    const/16 v1, 0x75

    .line 495
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 499
    :cond_4
    const/16 v1, 0x74

    .line 500
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .end local v1           #opcode:I
    .end local v3           #sig0:C
    .end local v4           #type:Lgnu/bytecode/Type;
    .end local v5           #type0:Lgnu/bytecode/Type;
    :cond_5
    move-object v6, p1

    .line 510
    goto :goto_1
.end method

.method public static validateApplyArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 63
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/ArithOp;

    move-object v1, v0

    .line 64
    .local v1, aproc:Lgnu/kawa/functions/ArithOp;
    iget v6, v1, Lgnu/kawa/functions/ArithOp;->op:I

    .line 65
    .local v6, op:I
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 67
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 68
    .local v2, args:[Lgnu/expr/Expression;
    array-length v8, v2

    if-le v8, v10, :cond_0

    .line 69
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    invoke-static {p3, v8, v2, p1}, Lgnu/kawa/functions/CompileArith;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v8

    .line 126
    .end local p3
    :goto_0
    return-object v8

    .line 71
    .restart local p3
    :cond_0
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v3

    .line 72
    .local v3, folded:Lgnu/expr/Expression;
    if-eq v3, p0, :cond_1

    move-object v8, v3

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    const/4 v7, 0x0

    .line 76
    .local v7, rkind:I
    array-length v8, v2

    if-eq v8, v10, :cond_2

    array-length v8, v2

    if-ne v8, v9, :cond_5

    .line 78
    :cond_2
    aget-object v8, v2, v11

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v4

    .line 79
    .local v4, kind1:I
    array-length v8, v2

    if-ne v8, v10, :cond_9

    const/16 v8, 0x9

    if-lt v6, v8, :cond_3

    const/16 v8, 0xc

    if-le v6, v8, :cond_9

    .line 83
    :cond_3
    aget-object v8, v2, v9

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v5

    .line 84
    .local v5, kind2:I
    invoke-static {v4, v5, v6}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v7

    .line 85
    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 87
    if-ne v4, v9, :cond_6

    invoke-static {v2, v9, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    const/4 v7, 0x1

    .line 101
    .end local v5           #kind2:I
    :cond_4
    :goto_1
    invoke-static {v7, v6}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v7

    .line 102
    invoke-static {v7}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 107
    .end local v4           #kind1:I
    :cond_5
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v8

    iget-boolean v8, v8, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v8, :cond_a

    move-object v8, p0

    .line 108
    goto :goto_0

    .line 89
    .restart local v4       #kind1:I
    .restart local v5       #kind2:I
    :cond_6
    if-ne v5, v9, :cond_7

    invoke-static {v2, v11, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 90
    const/4 v7, 0x1

    goto :goto_1

    .line 91
    :cond_7
    if-ne v4, v10, :cond_8

    invoke-static {v2, v9, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 92
    const/4 v7, 0x2

    goto :goto_1

    .line 93
    :cond_8
    if-ne v5, v10, :cond_4

    invoke-static {v2, v11, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    const/4 v7, 0x2

    goto :goto_1

    .line 99
    .end local v5           #kind2:I
    :cond_9
    move v7, v4

    goto :goto_1

    .line 110
    .end local v4           #kind1:I
    :cond_a
    packed-switch v6, :pswitch_data_0

    :cond_b
    :pswitch_0
    move-object v8, p0

    .line 126
    goto :goto_0

    .line 114
    :pswitch_1
    check-cast p3, Lgnu/kawa/functions/AddOp;

    .end local p3
    invoke-static {p3, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v8

    goto :goto_0

    .line 120
    .restart local p3
    :pswitch_2
    check-cast p3, Lgnu/kawa/functions/DivideOp;

    .end local p3
    invoke-static {p3, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v8

    goto/16 :goto_0

    .line 122
    .restart local p3
    :pswitch_3
    if-lez v7, :cond_b

    .line 123
    invoke-static {p0, v7, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v8

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 6
    .parameter "proc"
    .parameter "exp"
    .parameter "visitor"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 516
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 517
    .local v0, args:[Lgnu/expr/Expression;
    array-length v3, v0

    if-ne v3, v5, :cond_0

    .line 519
    const/4 v3, 0x2

    new-array v1, v3, [Lgnu/expr/Expression;

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    aput-object v3, v1, v4

    aget-object v3, v0, v4

    aput-object v3, v1, v5

    .line 520
    .end local v0           #args:[Lgnu/expr/Expression;
    .local v1, args:[Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .end local p1
    .local v2, exp:Lgnu/expr/ApplyExp;
    move-object v0, v1

    .end local v1           #args:[Lgnu/expr/Expression;
    .restart local v0       #args:[Lgnu/expr/Expression;
    move-object p1, v2

    .line 522
    .end local v2           #exp:Lgnu/expr/ApplyExp;
    .restart local p1
    :cond_0
    return-object p1
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"
    .parameter "kind"
    .parameter "visitor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 527
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 529
    invoke-virtual {p0, v4}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v0

    .line 530
    .local v0, arg:Lgnu/expr/Expression;
    if-eq p1, v6, :cond_0

    if-ne p1, v5, :cond_1

    .line 532
    :cond_0
    new-array v1, v5, [Lgnu/expr/Expression;

    aput-object v0, v1, v4

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    aput-object v3, v1, v6

    .line 533
    .local v1, args:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    invoke-direct {v3, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    .line 546
    .end local v0           #arg:Lgnu/expr/Expression;
    .end local v1           #args:[Lgnu/expr/Expression;
    :goto_0
    return-object v3

    .line 536
    .restart local v0       #arg:Lgnu/expr/Expression;
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 537
    const-string v2, "gnu.math.BitOps"

    .line 542
    .local v2, cname:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    .line 543
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string v5, "not"

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 538
    .end local v2           #cname:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 539
    const-string v2, "java.meth.BigInteger"

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_1

    .line 541
    .end local v2           #cname:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #cname:Ljava/lang/String;
    goto :goto_1

    .end local v0           #arg:Lgnu/expr/Expression;
    .end local v2           #cname:Ljava/lang/String;
    :cond_4
    move-object v3, p0

    .line 546
    goto :goto_0
.end method

.method public static validateApplyNumberCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 553
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    .line 554
    .local v0, folded:Lgnu/expr/Expression;
    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 556
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static validateApplyNumberPredicate(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"
    .parameter "visitor"
    .parameter "required"
    .parameter "proc"

    .prologue
    const/4 v6, 0x0

    .line 605
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/NumberPredicate;

    move-object v2, v0

    .line 606
    .local v2, nproc:Lgnu/kawa/functions/NumberPredicate;
    iget v3, v2, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 607
    .local v3, op:I
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 608
    .local v1, args:[Lgnu/expr/Expression;
    aget-object v4, v1, v6

    sget-object v5, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p1, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v6

    .line 609
    sget-object v4, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v4}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 610
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 24
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    .line 133
    .local v9, args:[Lgnu/expr/Expression;
    array-length v15, v9

    .line 134
    .local v15, len:I
    if-nez v15, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgnu/kawa/functions/ArithOp;

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/ArithOp;->defaultResult()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p2

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 289
    .end local p1
    :goto_0
    return-void

    .line 139
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v3, 0x1

    if-eq v15, v3, :cond_1

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move v3, v0

    if-eqz v3, :cond_2

    .line 142
    :cond_1
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v9, v3

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v6

    .line 148
    .local v6, kind1:I
    const/4 v3, 0x1

    aget-object v3, v9, v3

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v7

    .line 149
    .local v7, kind2:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    invoke-static {v6, v7, v3}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v14

    .line 150
    .local v14, kind:I
    invoke-static {v14}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v21

    .line 151
    .local v21, type:Lgnu/bytecode/Type;
    if-eqz v14, :cond_3

    const/4 v3, 0x2

    if-eq v15, v3, :cond_4

    .line 153
    :cond_3
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v19

    .line 157
    .local v19, targetType:Lgnu/bytecode/Type;
    invoke-static/range {v19 .. v19}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v20

    .line 159
    .local v20, tkind:I
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_a

    :cond_5
    const/4 v3, 0x1

    if-lt v14, v3, :cond_a

    const/4 v3, 0x4

    if-gt v14, v3, :cond_a

    .line 162
    move/from16 v14, v20

    .line 163
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_9

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v23, v3

    .line 185
    .local v23, wtype:Lgnu/bytecode/Type;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x8

    if-gt v3, v4, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object v12, v0

    check-cast v12, Lgnu/kawa/functions/DivideOp;

    .line 188
    .local v12, dproc:Lgnu/kawa/functions/DivideOp;
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    const/4 v3, 0x4

    if-le v14, v3, :cond_6

    const/4 v3, 0x6

    if-ge v14, v3, :cond_6

    const/16 v3, 0x9

    if-gt v14, v3, :cond_11

    .line 216
    .end local v12           #dproc:Lgnu/kawa/functions/DivideOp;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1a

    const/16 v3, 0xa

    if-gt v14, v3, :cond_1a

    const/16 v3, 0x8

    if-eq v14, v3, :cond_1a

    const/4 v3, 0x7

    if-eq v14, v3, :cond_1a

    .line 221
    const/4 v3, 0x6

    if-eq v14, v3, :cond_7

    const/4 v3, 0x4

    if-le v14, v3, :cond_19

    .line 225
    :cond_7
    const/4 v3, 0x6

    if-ne v14, v3, :cond_18

    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v11, v3

    .line 228
    .local v11, ctype:Lgnu/kawa/lispexpr/LangObjType;
    :goto_3
    move-object/from16 v23, v11

    .line 229
    const-string v3, "divide"

    const/4 v4, 0x2

    invoke-virtual {v11, v3, v4}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v17

    .line 236
    .end local v11           #ctype:Lgnu/kawa/lispexpr/LangObjType;
    .local v17, meth:Lgnu/bytecode/Method;
    :goto_4
    invoke-static/range {v23 .. v23}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v22

    .line 237
    .local v22, wtarget:Lgnu/expr/Target;
    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object v0, v3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 238
    const/4 v3, 0x1

    aget-object v3, v9, v3

    move-object v0, v3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 288
    .end local v17           #meth:Lgnu/bytecode/Method;
    .end local v22           #wtarget:Lgnu/expr/Target;
    .end local p1
    :cond_8
    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 163
    .end local v23           #wtype:Lgnu/bytecode/Type;
    .restart local p1
    :cond_9
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    move-object/from16 v23, v3

    goto/16 :goto_1

    .line 166
    :cond_a
    const/16 v3, 0x8

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_b

    const/4 v3, 0x7

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v3, 0x2

    if-le v14, v3, :cond_d

    const/16 v3, 0xa

    if-gt v14, v3, :cond_d

    .line 170
    move/from16 v14, v20

    .line 171
    const/4 v3, 0x7

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_c

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    move-object/from16 v23, v3

    .restart local v23       #wtype:Lgnu/bytecode/Type;
    :goto_6
    goto/16 :goto_1

    .end local v23           #wtype:Lgnu/bytecode/Type;
    :cond_c
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    move-object/from16 v23, v3

    goto :goto_6

    .line 175
    :cond_d
    const/4 v3, 0x7

    if-ne v14, v3, :cond_e

    .line 176
    sget-object v23, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    .restart local v23       #wtype:Lgnu/bytecode/Type;
    goto/16 :goto_1

    .line 177
    .end local v23           #wtype:Lgnu/bytecode/Type;
    :cond_e
    const/16 v3, 0x8

    if-eq v14, v3, :cond_f

    const/16 v3, 0x9

    if-ne v14, v3, :cond_10

    .line 179
    :cond_f
    const/16 v14, 0x8

    .line 180
    sget-object v23, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    .restart local v23       #wtype:Lgnu/bytecode/Type;
    goto/16 :goto_1

    .line 183
    .end local v23           #wtype:Lgnu/bytecode/Type;
    :cond_10
    move-object/from16 v23, v21

    .restart local v23       #wtype:Lgnu/bytecode/Type;
    goto/16 :goto_1

    .line 192
    .restart local v12       #dproc:Lgnu/kawa/functions/DivideOp;
    :cond_11
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12

    const/16 v3, 0xa

    if-gt v14, v3, :cond_12

    const/4 v3, 0x7

    if-ne v14, v3, :cond_13

    :cond_12
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    const/16 v3, 0xa

    if-ne v14, v3, :cond_14

    .line 195
    :cond_13
    const/16 v14, 0x8

    goto/16 :goto_2

    .line 196
    :cond_14
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_15

    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_16

    const/4 v3, 0x4

    if-gt v14, v3, :cond_16

    :cond_15
    invoke-virtual {v12}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v3, 0x4

    if-eq v14, v3, :cond_6

    const/4 v3, 0x7

    if-eq v14, v3, :cond_6

    const/16 v3, 0x8

    if-eq v14, v3, :cond_6

    .line 205
    :cond_16
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->op:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_17

    invoke-virtual {v12}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v3, 0x4

    if-eq v14, v3, :cond_6

    .line 212
    :cond_17
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_0

    .line 225
    .end local v12           #dproc:Lgnu/kawa/functions/DivideOp;
    :cond_18
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v11, v3

    goto/16 :goto_3

    .line 233
    :cond_19
    sget-object v23, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 234
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v4, "make"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v17

    .restart local v17       #meth:Lgnu/bytecode/Method;
    goto/16 :goto_4

    .line 241
    .end local v17           #meth:Lgnu/bytecode/Method;
    :cond_1a
    const/4 v3, 0x4

    if-ne v14, v3, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xe

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xb

    if-gt v3, v4, :cond_1c

    .line 247
    :cond_1b
    const/4 v3, 0x0

    aget-object v4, v9, v3

    const/4 v3, 0x1

    aget-object v5, v9, v3

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    goto/16 :goto_5

    .line 249
    :cond_1c
    const/4 v3, 0x1

    if-eq v14, v3, :cond_1e

    const/4 v3, 0x2

    if-eq v14, v3, :cond_1e

    const/4 v3, 0x7

    if-eq v14, v3, :cond_1d

    const/16 v3, 0x8

    if-ne v14, v3, :cond_22

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x8

    if-le v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xd

    if-lt v3, v4, :cond_22

    .line 255
    :cond_1e
    invoke-static/range {v23 .. v23}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v22

    .line 257
    .restart local v22       #wtarget:Lgnu/expr/Target;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    .line 258
    .local v10, code:Lgnu/bytecode/CodeAttr;
    const/4 v13, 0x0

    .end local p1
    .local v13, i:I
    :goto_7
    if-ge v13, v15, :cond_8

    .line 260
    const/4 v3, 0x1

    if-ne v13, v3, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xc

    if-gt v3, v4, :cond_1f

    .line 261
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v3}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v22

    .line 262
    :cond_1f
    aget-object v3, v9, v13

    move-object v0, v3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 263
    if-nez v13, :cond_20

    .line 258
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 265
    :cond_20
    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    .line 271
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_21

    .line 273
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    aput-object v23, v16, v3

    const/4 v3, 0x1

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v16, v3

    .line 274
    .local v16, margs:[Lgnu/bytecode/Type;
    const-string v3, "gnu.math.IntNum"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "shift"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v18

    .line 275
    .local v18, method:Lgnu/bytecode/Method;
    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_8

    .line 278
    .end local v16           #margs:[Lgnu/bytecode/Type;
    .end local v18           #method:Lgnu/bytecode/Method;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/CompileArith;->primitiveOpcode()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/PrimType;

    move-object v0, v10

    move v1, v3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    goto :goto_8

    .line 285
    .end local v10           #code:Lgnu/bytecode/CodeAttr;
    .end local v13           #i:I
    .end local v22           #wtarget:Lgnu/expr/Target;
    .restart local p1
    :cond_22
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z
    .locals 24
    .parameter "arg1"
    .parameter "arg2"
    .parameter "kind1"
    .parameter "kind2"
    .parameter "comp"

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v3, v0

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v23

    .line 300
    .local v23, val:Ljava/lang/Object;
    const/4 v3, 0x2

    move/from16 v0, p4

    move v1, v3

    if-gt v0, v1, :cond_1

    .line 302
    check-cast v23, Ljava/lang/Number;

    .end local v23           #val:Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 303
    .local v14, lval:J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v14, v3

    if-lez v3, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v14, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 316
    .local v19, negateOk:Z
    :goto_0
    if-eqz v19, :cond_3

    .line 317
    sget-object v3, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    neg-long v4, v14

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v3

    .line 406
    .end local v14           #lval:J
    .end local v19           #negateOk:Z
    :goto_1
    return v3

    .line 303
    .restart local v14       #lval:J
    :cond_0
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_0

    .line 305
    .end local v14           #lval:J
    .restart local v23       #val:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/math/IntNum;

    move v3, v0

    if-eqz v3, :cond_2

    .line 307
    move-object/from16 v0, v23

    check-cast v0, Lgnu/math/IntNum;

    move-object v13, v0

    .line 308
    .local v13, ival:Lgnu/math/IntNum;
    invoke-virtual {v13}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v14

    .line 309
    .restart local v14       #lval:J
    const-wide/32 v3, -0x7fffffff

    const-wide/32 v5, 0x7fffffff

    invoke-virtual {v13, v3, v4, v5, v6}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v19

    .line 310
    .restart local v19       #negateOk:Z
    goto :goto_0

    .line 313
    .end local v13           #ival:Lgnu/math/IntNum;
    .end local v14           #lval:J
    .end local v19           #negateOk:Z
    :cond_2
    const/16 v19, 0x0

    .line 314
    .restart local v19       #negateOk:Z
    const-wide/16 v14, 0x0

    .restart local v14       #lval:J
    goto :goto_0

    .line 322
    .end local v14           #lval:J
    .end local v19           #negateOk:Z
    .end local v23           #val:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    :cond_4
    const/4 v3, 0x1

    move v9, v3

    .line 325
    .local v9, addOrMul:Z
    :goto_2
    if-eqz v9, :cond_e

    .line 327
    invoke-static/range {p1 .. p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 328
    const/16 p3, 0x1

    .line 329
    :cond_5
    invoke-static/range {p2 .. p2}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 330
    const/16 p4, 0x1

    .line 331
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_9

    const/4 v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-eq v0, v1, :cond_9

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 332
    .local v20, swap:Z
    :goto_3
    if-eqz v20, :cond_a

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Expression;->side_effects()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Expression;->side_effects()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v8, p5

    .line 333
    invoke-virtual/range {v3 .. v8}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v3

    goto :goto_1

    .line 322
    .end local v9           #addOrMul:Z
    .end local v20           #swap:Z
    :cond_8
    const/4 v3, 0x0

    move v9, v3

    goto :goto_2

    .line 331
    .restart local v9       #addOrMul:Z
    :cond_9
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_3

    .line 334
    .restart local v20       #swap:Z
    :cond_a
    const/4 v3, 0x1

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_c

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v21, v3

    .line 335
    .local v21, type1:Lgnu/bytecode/Type;
    :goto_4
    const/4 v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-ne v0, v1, :cond_d

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v22, v3

    .line 348
    .local v22, type2:Lgnu/bytecode/Type;
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 349
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 350
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 351
    .local v11, code:Lgnu/bytecode/CodeAttr;
    if-eqz v20, :cond_b

    .line 353
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 354
    sget-object v21, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 355
    sget-object v22, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 357
    :cond_b
    const/16 v18, 0x0

    .line 358
    .local v18, mname:Ljava/lang/String;
    const/4 v10, 0x0

    .line 359
    .local v10, argTypes:[Lgnu/bytecode/Type;
    sget-object v16, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 360
    .local v16, mclass:Lgnu/bytecode/ObjectType;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 400
    :pswitch_0
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    .line 334
    .end local v10           #argTypes:[Lgnu/bytecode/Type;
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v16           #mclass:Lgnu/bytecode/ObjectType;
    .end local v18           #mname:Ljava/lang/String;
    .end local v21           #type1:Lgnu/bytecode/Type;
    .end local v22           #type2:Lgnu/bytecode/Type;
    :cond_c
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v21, v3

    goto :goto_4

    .line 335
    .restart local v21       #type1:Lgnu/bytecode/Type;
    :cond_d
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object/from16 v22, v3

    goto :goto_5

    .line 337
    .end local v20           #swap:Z
    .end local v21           #type1:Lgnu/bytecode/Type;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x9

    if-lt v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xc

    if-gt v3, v4, :cond_f

    .line 339
    sget-object v21, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 340
    .restart local v21       #type1:Lgnu/bytecode/Type;
    sget-object v22, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 341
    .restart local v22       #type2:Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .restart local v20       #swap:Z
    goto :goto_5

    .line 345
    .end local v20           #swap:Z
    .end local v21           #type1:Lgnu/bytecode/Type;
    .end local v22           #type2:Lgnu/bytecode/Type;
    :cond_f
    sget-object v22, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .restart local v22       #type2:Lgnu/bytecode/Type;
    move-object/from16 v21, v22

    .line 346
    .restart local v21       #type1:Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .restart local v20       #swap:Z
    goto :goto_5

    .line 362
    .restart local v10       #argTypes:[Lgnu/bytecode/Type;
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    .restart local v16       #mclass:Lgnu/bytecode/ObjectType;
    .restart local v18       #mname:Ljava/lang/String;
    :pswitch_1
    const-string v18, "add"

    .line 402
    :cond_10
    :goto_6
    if-nez v10, :cond_11

    .line 403
    const/4 v3, 0x2

    new-array v10, v3, [Lgnu/bytecode/Type;

    .end local v10           #argTypes:[Lgnu/bytecode/Type;
    const/4 v3, 0x0

    aput-object v21, v10, v3

    const/4 v3, 0x1

    aput-object v22, v10, v3

    .line 404
    .restart local v10       #argTypes:[Lgnu/bytecode/Type;
    :cond_11
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v17

    .line 405
    .local v17, meth:Lgnu/bytecode/Method;
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 406
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 363
    .end local v17           #meth:Lgnu/bytecode/Method;
    :pswitch_2
    const-string v18, "sub"

    goto :goto_6

    .line 364
    :pswitch_3
    const-string v18, "times"

    goto :goto_6

    .line 366
    :pswitch_4
    const-string v18, "and"

    .line 369
    :pswitch_5
    if-nez v18, :cond_12

    .line 370
    const-string v18, "ior"

    .line 373
    :cond_12
    :pswitch_6
    if-nez v18, :cond_13

    .line 374
    const-string v18, "xor"

    .line 375
    :cond_13
    const-string v3, "gnu.math.BitOps"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v16

    .line 376
    goto :goto_6

    .line 382
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_14

    const-string v3, "remainder"

    move-object/from16 v18, v3

    .line 383
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    move-object v12, v0

    check-cast v12, Lgnu/kawa/functions/DivideOp;

    .line 384
    .local v12, dproc:Lgnu/kawa/functions/DivideOp;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_15

    iget v3, v12, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 385
    const-string v18, "modulo"

    goto :goto_6

    .line 382
    .end local v12           #dproc:Lgnu/kawa/functions/DivideOp;
    :cond_14
    const-string v3, "quotient"

    move-object/from16 v18, v3

    goto :goto_7

    .line 386
    .restart local v12       #dproc:Lgnu/kawa/functions/DivideOp;
    :cond_15
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    .line 388
    iget v3, v12, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v11, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 389
    const/4 v3, 0x3

    new-array v10, v3, [Lgnu/bytecode/Type;

    .end local v10           #argTypes:[Lgnu/bytecode/Type;
    const/4 v3, 0x0

    aput-object v21, v10, v3

    const/4 v3, 0x1

    aput-object v22, v10, v3

    const/4 v3, 0x2

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v10, v3

    .restart local v10       #argTypes:[Lgnu/bytecode/Type;
    goto :goto_6

    .line 394
    .end local v12           #dproc:Lgnu/kawa/functions/DivideOp;
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/CompileArith;->op:I

    move v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_16

    const-string v3, "shiftLeft"

    move-object/from16 v18, v3

    .line 395
    :goto_8
    const-string v3, "gnu.kawa.functions.BitwiseOp"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v16

    .line 396
    goto/16 :goto_6

    .line 394
    :cond_16
    const-string v3, "shiftRight"

    move-object/from16 v18, v3

    goto :goto_8

    .line 398
    :pswitch_9
    const-string v18, "shift"

    .line 399
    goto/16 :goto_6

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getReturnKind([Lgnu/expr/Expression;)I
    .locals 7
    .parameter "args"

    .prologue
    .line 421
    array-length v4, p1

    .line 422
    .local v4, len:I
    if-nez v4, :cond_0

    .line 423
    const/4 v6, 0x4

    .line 434
    :goto_0
    return v6

    .line 424
    :cond_0
    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 425
    .local v5, type:Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 426
    .local v3, kindr:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 428
    aget-object v0, p1, v1

    .line 429
    .local v0, arg:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-static {v6}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v2

    .line 431
    .local v2, kind:I
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-le v2, v3, :cond_2

    .line 432
    :cond_1
    move v3, v2

    .line 426
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #arg:Lgnu/expr/Expression;
    .end local v2           #kind:I
    :cond_3
    move v6, v3

    .line 434
    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/CompileArith;->getReturnKind([Lgnu/expr/Expression;)I

    move-result v0

    iget v1, p0, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v0

    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public primitiveOpcode()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    packed-switch v0, :pswitch_data_0

    .line 578
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 563
    :pswitch_1
    const/16 v0, 0x60

    goto :goto_0

    .line 564
    :pswitch_2
    const/16 v0, 0x64

    goto :goto_0

    .line 565
    :pswitch_3
    const/16 v0, 0x68

    goto :goto_0

    .line 570
    :pswitch_4
    const/16 v0, 0x6c

    goto :goto_0

    .line 571
    :pswitch_5
    const/16 v0, 0x70

    goto :goto_0

    .line 572
    :pswitch_6
    const/16 v0, 0x78

    goto :goto_0

    .line 573
    :pswitch_7
    const/16 v0, 0x7a

    goto :goto_0

    .line 574
    :pswitch_8
    const/16 v0, 0x7c

    goto :goto_0

    .line 575
    :pswitch_9
    const/16 v0, 0x7e

    goto :goto_0

    .line 576
    :pswitch_a
    const/16 v0, 0x80

    goto :goto_0

    .line 577
    :pswitch_b
    const/16 v0, 0x82

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
