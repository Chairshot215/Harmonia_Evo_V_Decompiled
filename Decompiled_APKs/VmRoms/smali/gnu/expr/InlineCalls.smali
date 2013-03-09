.class public Lgnu/expr/InlineCalls;
.super Lgnu/expr/ExpExpVisitor;
.source "InlineCalls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static inlinerMethodArgTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 37
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 39
    return-void
.end method

.method public static checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;
    .locals 5
    .parameter "exp"

    .prologue
    .line 130
    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 132
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v2, v0

    .line 133
    .local v2, qarg:Lgnu/expr/QuoteExp;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 134
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Lgnu/math/IntNum;

    if-eqz v4, :cond_0

    .line 136
    move-object v0, v3

    check-cast v0, Lgnu/math/IntNum;

    move-object v1, v0

    .line 137
    .local v1, ivalue:Lgnu/math/IntNum;
    invoke-virtual {v1}, Lgnu/math/IntNum;->inIntRange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v1}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 141
    .end local v1           #ivalue:Lgnu/math/IntNum;
    .end local v2           #qarg:Lgnu/expr/QuoteExp;
    .end local v3           #value:Ljava/lang/Object;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;
    .locals 6
    .parameter "exp"

    .prologue
    .line 146
    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 148
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v2, v0

    .line 149
    .local v2, qarg:Lgnu/expr/QuoteExp;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v3, Lgnu/math/IntNum;

    if-eqz v4, :cond_0

    .line 152
    move-object v0, v3

    check-cast v0, Lgnu/math/IntNum;

    move-object v1, v0

    .line 153
    .local v1, ivalue:Lgnu/math/IntNum;
    invoke-virtual {v1}, Lgnu/math/IntNum;->inLongRange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 157
    .end local v1           #ivalue:Lgnu/math/IntNum;
    .end local v2           #qarg:Lgnu/expr/QuoteExp;
    .end local v3           #value:Ljava/lang/Object;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getInlinerMethodArgTypes()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 407
    const-class v1, Lgnu/expr/InlineCalls;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;

    .line 408
    .local v0, t:[Ljava/lang/Class;
    if-nez v0, :cond_0

    .line 410
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Class;

    .end local v0           #t:[Ljava/lang/Class;
    const/4 v2, 0x0

    const-string v3, "gnu.expr.ApplyExp"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "gnu.expr.InlineCalls"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "gnu.bytecode.Type"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 414
    .restart local v0       #t:[Ljava/lang/Class;
    sput-object v0, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    monitor-exit v1

    return-object v0

    .line 407
    .end local v0           #t:[Ljava/lang/Class;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;
    .locals 9
    .parameter "lexp"
    .parameter "args"
    .parameter "makeCopy"

    .prologue
    .line 492
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 497
    :cond_0
    const/4 p0, 0x0

    .line 587
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 498
    .restart local p0
    .restart local p1
    :cond_1
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    .line 499
    .local v6, varArgs:Z
    :goto_1
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    if-eqz v6, :cond_b

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-nez v0, :cond_b

    .line 503
    :cond_3
    const/4 v4, 0x0

    .line 504
    .local v4, prev:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 507
    .local v1, i:I
    if-eqz p2, :cond_5

    .line 509
    new-instance v2, Lgnu/kawa/util/IdentityHashTable;

    invoke-direct {v2}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    .line 510
    .local v2, mapper:Lgnu/kawa/util/IdentityHashTable;
    invoke-static {p1, v2}, Lgnu/expr/Expression;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v0

    .line 511
    .local v0, cargs:[Lgnu/expr/Expression;
    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 512
    const/4 p0, 0x0

    goto :goto_0

    .line 498
    .end local v0           #cargs:[Lgnu/expr/Expression;
    .end local v1           #i:I
    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .end local v4           #prev:Lgnu/expr/Declaration;
    .end local v6           #varArgs:Z
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 516
    .restart local v1       #i:I
    .restart local v4       #prev:Lgnu/expr/Declaration;
    .restart local v6       #varArgs:Z
    :cond_5
    const/4 v2, 0x0

    .line 517
    .restart local v2       #mapper:Lgnu/kawa/util/IdentityHashTable;
    move-object v0, p1

    .restart local v0       #cargs:[Lgnu/expr/Expression;
    move-object v3, v2

    .line 519
    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .local v3, mapper:Lgnu/kawa/util/IdentityHashTable;
    :goto_2
    if-eqz v6, :cond_c

    .line 521
    array-length v0, p1

    .end local v0           #cargs:[Lgnu/expr/Expression;
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 522
    .local v0, xargs:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    iget-object v5, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    aput-object v5, v0, v2

    .line 523
    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v7, p1

    invoke-static {p1, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    const/4 p1, 0x1

    new-array p1, p1, [Lgnu/expr/Expression;

    .end local p1
    const/4 v2, 0x0

    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v5, v7, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    aput-object v5, p1, v2

    .line 526
    .end local v0           #xargs:[Lgnu/expr/Expression;
    .local p1, cargs:[Lgnu/expr/Expression;
    :goto_3
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, p1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 527
    .local v2, let:Lgnu/expr/LetExp;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, param:Lgnu/expr/Declaration;
    move-object v5, v0

    .end local v0           #param:Lgnu/expr/Declaration;
    .local v5, param:Lgnu/expr/Declaration;
    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    move-object v1, v4

    .end local v4           #prev:Lgnu/expr/Declaration;
    .local v1, prev:Lgnu/expr/Declaration;
    :goto_4
    if-eqz v5, :cond_9

    .line 529
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 530
    .local v4, next:Lgnu/expr/Declaration;
    if-eqz p2, :cond_8

    .line 532
    iget-object v1, v5, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .end local v1           #prev:Lgnu/expr/Declaration;
    iget-object v7, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2, v1, v7}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 533
    .local v1, ldecl:Lgnu/expr/Declaration;
    iget-object v7, v5, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v7, :cond_6

    .line 535
    iget-object v7, v5, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    invoke-static {v7}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 536
    iget-object v7, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v7, :cond_6

    .line 537
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 540
    :cond_6
    invoke-virtual {v3, v5, v1}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v1           #ldecl:Lgnu/expr/Declaration;
    :goto_5
    if-nez v6, :cond_7

    .line 549
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-nez v1, :cond_7

    .line 550
    aget-object v1, p1, v0

    invoke-virtual {v5, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 552
    :cond_7
    move-object v5, v5

    .line 553
    .local v5, prev:Lgnu/expr/Declaration;
    move-object v1, v4

    .line 527
    .local v1, param:Lgnu/expr/Declaration;
    add-int/lit8 v0, v0, 0x1

    move-object v8, v1

    .end local v1           #param:Lgnu/expr/Declaration;
    .local v8, param:Lgnu/expr/Declaration;
    move-object v1, v5

    .end local v5           #prev:Lgnu/expr/Declaration;
    .local v1, prev:Lgnu/expr/Declaration;
    move-object v5, v8

    .end local v8           #param:Lgnu/expr/Declaration;
    .local v5, param:Lgnu/expr/Declaration;
    goto :goto_4

    .line 544
    :cond_8
    invoke-virtual {p0, v1, v5}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 545
    invoke-virtual {v2, v1, v5}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_5

    .line 562
    .end local v4           #next:Lgnu/expr/Declaration;
    :cond_9
    iget-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 563
    .local p1, body:Lgnu/expr/Expression;
    if-eqz p2, :cond_a

    .line 565
    invoke-static {p1, v3}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object p1

    .line 566
    if-nez p1, :cond_a

    iget-object p0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .end local p0
    if-eqz p0, :cond_a

    .line 567
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    move-object p0, p1

    .line 569
    .end local p1           #body:Lgnu/expr/Expression;
    .local p0, body:Lgnu/expr/Expression;
    iput-object p0, v2, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object p0, v2

    .line 570
    goto/16 :goto_0

    .line 587
    .end local v0           #i:I
    .end local v1           #prev:Lgnu/expr/Declaration;
    .end local v2           #let:Lgnu/expr/LetExp;
    .end local v3           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .end local v5           #param:Lgnu/expr/Declaration;
    .local p0, lexp:Lgnu/expr/LambdaExp;
    .local p1, args:[Lgnu/expr/Expression;
    :cond_b
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, cargs:[Lgnu/expr/Expression;
    .local v1, i:I
    .restart local v3       #mapper:Lgnu/kawa/util/IdentityHashTable;
    .local v4, prev:Lgnu/expr/Declaration;
    :cond_c
    move-object p1, v0

    .end local v0           #cargs:[Lgnu/expr/Expression;
    .local p1, cargs:[Lgnu/expr/Expression;
    goto :goto_3

    .end local v3           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .restart local v0       #cargs:[Lgnu/expr/Expression;
    .local v2, mapper:Lgnu/kawa/util/IdentityHashTable;
    .local p1, args:[Lgnu/expr/Expression;
    :cond_d
    move-object v3, v2

    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .restart local v3       #mapper:Lgnu/kawa/util/IdentityHashTable;
    goto/16 :goto_2
.end method

.method public static inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 32
    new-instance v0, Lgnu/expr/InlineCalls;

    invoke-direct {v0, p1}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    .line 33
    .local v0, visitor:Lgnu/expr/InlineCalls;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 17
    .parameter "exp"
    .parameter "required"

    .prologue
    const/16 v16, 0x1

    const/4 v15, 0x0

    .line 54
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 56
    .local v6, expType:Lgnu/bytecode/Type;
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move v13, v0

    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v13}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 60
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move v13, v0

    if-eqz v13, :cond_0

    .line 62
    move-object/from16 v0, p2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/bytecode/ClassType;->checkSingleAbstractMethod()Lgnu/bytecode/Method;

    move-result-object v4

    .line 63
    .local v4, amethod:Lgnu/bytecode/Method;
    if-eqz v4, :cond_0

    .line 65
    move-object/from16 v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v9, v0

    .line 66
    .local v9, lexp:Lgnu/expr/LambdaExp;
    new-instance v12, Lgnu/expr/ObjectExp;

    invoke-direct {v12}, Lgnu/expr/ObjectExp;-><init>()V

    .line 67
    .local v12, oexp:Lgnu/expr/ObjectExp;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ObjectExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 68
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v13, v0

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v15

    iput-object v13, v12, Lgnu/expr/ObjectExp;->supers:[Lgnu/expr/Expression;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgnu/expr/ObjectExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 70
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, mname:Ljava/lang/String;
    invoke-virtual {v12, v9, v11}, Lgnu/expr/ObjectExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 72
    sget-object v13, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v11, v13}, Lgnu/expr/ObjectExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v10

    .line 73
    .local v10, mdecl:Lgnu/expr/Declaration;
    iput-object v9, v12, Lgnu/expr/ObjectExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    move-object v13, v0

    invoke-virtual {v12, v13}, Lgnu/expr/ObjectExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 75
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v13

    .line 100
    .end local v4           #amethod:Lgnu/bytecode/Method;
    .end local v9           #lexp:Lgnu/expr/LambdaExp;
    .end local v10           #mdecl:Lgnu/expr/Declaration;
    .end local v11           #mname:Ljava/lang/String;
    .end local v12           #oexp:Lgnu/expr/ObjectExp;
    :goto_0
    return-object v13

    .line 78
    :cond_0
    const/4 v7, 0x1

    .line 92
    .local v7, incompatible:Z
    :cond_1
    if-eqz v7, :cond_2

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    .line 95
    .local v8, language:Lgnu/expr/Language;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    move-object v13, v0

    const/16 v14, 0x77

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8, v6}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is incompatible with required type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v13

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .end local v8           #language:Lgnu/expr/Language;
    :cond_2
    move-object/from16 v13, p1

    .line 100
    goto :goto_0

    .line 82
    .end local v7           #incompatible:Z
    :cond_3
    sget-object v13, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v6, v13, :cond_4

    .line 83
    sget-object v6, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 84
    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v13

    const/4 v14, -0x3

    if-ne v13, v14, :cond_5

    move/from16 v7, v16

    .line 85
    .restart local v7       #incompatible:Z
    :goto_1
    if-eqz v7, :cond_1

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move v13, v0

    if-eqz v13, :cond_1

    .line 87
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/TypeValue;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgnu/expr/TypeValue;->convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    .line 88
    .local v5, converted:Lgnu/expr/Expression;
    if-eqz v5, :cond_1

    move-object v13, v5

    .line 89
    goto :goto_0

    .end local v5           #converted:Lgnu/expr/Expression;
    .end local v7           #incompatible:Z
    :cond_5
    move v7, v15

    .line 84
    goto :goto_1
.end method

.method public fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 4
    .parameter "exp"

    .prologue
    .line 162
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    .local v0, ival:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 165
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 4
    .parameter "exp"

    .prologue
    .line 170
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v0

    .line 171
    .local v0, ival:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 173
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 16
    .parameter "exp"
    .parameter "required"
    .parameter "proc"

    .prologue
    .line 425
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :try_start_1
    sget-object v12, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 428
    .local v7, inliner:Ljava/lang/Object;
    instance-of v12, v7, Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 430
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 431
    .local v8, inliners:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 435
    .local v5, colon:I
    const/4 v9, 0x0

    .line 437
    .local v9, method:Ljava/lang/reflect/Method;
    if-lez v5, :cond_0

    .line 439
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, cname:Ljava/lang/String;
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 441
    .local v10, mname:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-static {v4, v12, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 445
    .local v3, clas:Ljava/lang/Class;
    invoke-static {}, Lgnu/expr/InlineCalls;->getInlinerMethodArgTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 448
    .end local v3           #clas:Ljava/lang/Class;
    .end local v4           #cname:Ljava/lang/String;
    .end local v10           #mname:Ljava/lang/String;
    :cond_0
    if-nez v9, :cond_1

    .line 450
    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inliner property string for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not of the form CLASS:METHOD"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->error(CLjava/lang/String;)V

    .line 451
    const/4 v12, 0x0

    monitor-exit p3

    .line 478
    .end local v5           #colon:I
    .end local v7           #inliner:Ljava/lang/Object;
    .end local v8           #inliners:Ljava/lang/String;
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local p0
    .end local p1
    :goto_0
    return-object v12

    .line 453
    .restart local v5       #colon:I
    .restart local v7       #inliner:Ljava/lang/Object;
    .restart local v8       #inliners:Ljava/lang/String;
    .restart local v9       #method:Ljava/lang/reflect/Method;
    .restart local p0
    .restart local p1
    :cond_1
    move-object v7, v9

    .line 455
    .end local v5           #colon:I
    .end local v7           #inliner:Ljava/lang/Object;
    .end local v8           #inliners:Ljava/lang/String;
    .end local v9           #method:Ljava/lang/reflect/Method;
    :cond_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    if-eqz v7, :cond_4

    .line 462
    const/4 v12, 0x4

    :try_start_2
    new-array v11, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object p0, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    const/4 v12, 0x3

    aput-object p3, v11, v12

    .line 463
    .local v11, vargs:[Ljava/lang/Object;
    instance-of v12, v7, Lgnu/mapping/Procedure;

    if-eqz v12, :cond_5

    .line 464
    check-cast v7, Lgnu/mapping/Procedure;

    invoke-virtual {v7, v11}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, Lgnu/expr/Expression;

    move-object/from16 p0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .end local p0
    move-object/from16 v12, p0

    goto :goto_0

    .line 455
    .end local v11           #vargs:[Ljava/lang/Object;
    .restart local p0
    .restart local p1
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 472
    .end local p1
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 474
    .local v6, ex:Ljava/lang/Throwable;
    instance-of v12, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v12, :cond_3

    .line 475
    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    .end local v6           #ex:Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    .line 476
    .restart local v6       #ex:Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/InlineCalls;->messages:Lgnu/text/SourceMessages;

    move-object v12, v0

    const/16 v13, 0x65

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "caught exception in inliner for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14, v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v6           #ex:Ljava/lang/Throwable;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 466
    .restart local v11       #vargs:[Ljava/lang/Object;
    .restart local p1
    :cond_5
    :try_start_5
    instance-of v12, v7, Ljava/lang/reflect/Method;

    if-eqz v12, :cond_4

    .line 467
    check-cast v7, Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    move-object/from16 v0, p1

    check-cast v0, Lgnu/expr/Expression;

    move-object/from16 p0, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .end local p0
    move-object/from16 v12, p0

    goto :goto_0
.end method

.method public visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "required"

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1, v1}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1, v1}, Lgnu/expr/Expression;->setFlag(I)V

    .line 46
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/expr/Expression;

    .line 47
    .restart local p1
    invoke-virtual {p1, v1}, Lgnu/expr/Expression;->setFlag(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exp"
    .parameter "required"

    .prologue
    const/4 v7, 0x0

    .line 105
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 110
    .local v1, func:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 112
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 113
    .local v3, lexp:Lgnu/expr/LambdaExp;
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v4, v0

    iget-object v5, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 114
    .local v2, inlined:Lgnu/expr/Expression;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0, v2, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    .line 119
    .end local v2           #inlined:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v4

    .line 117
    :cond_0
    invoke-virtual {p0, v1, v7}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    .line 118
    iput-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 119
    invoke-virtual {v1, p1, p0, p2, v7}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 125
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 269
    iget v2, p1, Lgnu/expr/BeginExp;->length:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 270
    .local v1, last:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 272
    iget-object v2, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget-object v3, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v0

    if-ge v0, v1, :cond_0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v3, v4}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v4, p2

    .line 272
    goto :goto_1

    .line 274
    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 237
    iget-object v5, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    .line 238
    .local v2, test:Lgnu/expr/Expression;
    instance-of v5, v2, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_0

    .line 240
    move-object v0, v2

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 241
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    .line 244
    .local v4, value:Lgnu/expr/Expression;
    instance-of v5, v4, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_0

    sget-object v5, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v4, v5, :cond_0

    .line 245
    move-object v2, v4

    .line 248
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v4           #value:Lgnu/expr/Expression;
    :cond_0
    iput-object v2, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 249
    iget-object v5, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 250
    iget-object v5, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v5, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 251
    :cond_1
    iget-object v5, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v5, :cond_2

    iget-object v5, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v5, :cond_2

    .line 252
    iget-object v5, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v5, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 253
    :cond_2
    instance-of v5, v2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_3

    .line 255
    iget-object v5, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    check-cast v2, Lgnu/expr/QuoteExp;

    .end local v2           #test:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v3

    .line 256
    .local v3, truth:Z
    invoke-virtual {p1, v3}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v5

    .line 264
    .end local v3           #truth:Z
    :goto_0
    return-object v5

    .line 258
    .restart local v2       #test:Lgnu/expr/Expression;
    :cond_3
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    iget-object v5, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v3

    .line 261
    .restart local v3       #truth:Z
    iget-object v5, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v6, 0x77

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "void-valued condition is always "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 262
    new-instance v5, Lgnu/expr/BeginExp;

    invoke-virtual {p1, v3}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_0

    .end local v3           #truth:Z
    :cond_4
    move-object v5, p1

    .line 264
    goto :goto_0
.end method

.method protected bridge synthetic visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 343
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 344
    .local v0, firstDecl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 13
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 298
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 299
    .local v1, decl:Lgnu/expr/Declaration;
    iget-object v11, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v7, v11

    .line 300
    .local v7, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 302
    iget-object v11, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v6, v11, v4

    .line 303
    .local v6, init0:Lgnu/expr/Expression;
    const-wide/16 v11, 0x2000

    invoke-virtual {v1, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    .line 304
    .local v10, typeSpecified:Z
    if-eqz v10, :cond_1

    sget-object v11, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v6, v11, :cond_1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v2, v11

    .line 305
    .local v2, dtype:Lgnu/bytecode/Type;
    :goto_1
    invoke-virtual {p0, v6, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    .line 306
    .local v5, init:Lgnu/expr/Expression;
    iget-object v11, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v5, v11, v4

    .line 307
    iget-object v3, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 308
    .local v3, dvalue:Lgnu/expr/Expression;
    if-ne v3, v6, :cond_0

    .line 310
    move-object v3, v5

    iput-object v5, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 311
    if-nez v10, :cond_0

    .line 312
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v1, v11}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 300
    :cond_0
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 304
    .end local v2           #dtype:Lgnu/bytecode/Type;
    .end local v3           #dvalue:Lgnu/expr/Expression;
    .end local v5           #init:Lgnu/expr/Expression;
    :cond_1
    const/4 v11, 0x0

    move-object v2, v11

    goto :goto_1

    .line 316
    .end local v6           #init0:Lgnu/expr/Expression;
    .end local v10           #typeSpecified:Z
    :cond_2
    iget-object v11, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v11, :cond_3

    .line 317
    iget-object v11, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v11, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v11

    iput-object v11, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 318
    :cond_3
    iget-object v11, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_5

    .line 320
    iget-object v8, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v8, Lgnu/expr/ReferenceExp;

    .line 321
    .local v8, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 322
    .local v0, d:Lgnu/expr/Declaration;
    if-eqz v0, :cond_5

    iget-object v11, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v11, p1, :cond_5

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v11

    if-nez v11, :cond_5

    .line 324
    const/4 v11, 0x1

    if-ne v7, v11, :cond_5

    .line 326
    iget-object v11, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    const/4 v12, 0x0

    aget-object v5, v11, v12

    .line 327
    .restart local v5       #init:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v9

    .line 330
    .local v9, texp:Lgnu/expr/Expression;
    sget-object v11, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    if-eq v9, v11, :cond_4

    .line 331
    invoke-static {v5, v9}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    :cond_4
    move-object v11, v5

    .line 338
    .end local v0           #d:Lgnu/expr/Declaration;
    .end local v5           #init:Lgnu/expr/Expression;
    .end local v8           #ref:Lgnu/expr/ReferenceExp;
    .end local v9           #texp:Lgnu/expr/Expression;
    :goto_2
    return-object v11

    :cond_5
    move-object v11, p1

    goto :goto_2
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 179
    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getRawType()Lgnu/bytecode/Type;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->isSharedConstant()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 182
    iget-object v5, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 183
    .local v0, language:Lgnu/expr/Language;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 184
    .local v4, vtype:Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v4, v5, :cond_0

    .line 185
    sget-object v4, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 186
    :cond_0
    iput-object v4, p1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 187
    instance-of v5, p2, Lgnu/bytecode/PrimType;

    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 190
    .local v2, sig1:C
    const/16 v5, 0x49

    if-ne v2, v5, :cond_2

    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v5

    move-object v1, v5

    .line 192
    .local v1, ret:Lgnu/expr/QuoteExp;
    :goto_0
    if-eqz v1, :cond_1

    .line 193
    move-object p1, v1

    .line 196
    .end local v0           #language:Lgnu/expr/Language;
    .end local v1           #ret:Lgnu/expr/QuoteExp;
    .end local v2           #sig1:C
    .end local v3           #value:Ljava/lang/Object;
    .end local v4           #vtype:Lgnu/bytecode/Type;
    :cond_1
    return-object p1

    .line 190
    .restart local v0       #language:Lgnu/expr/Language;
    .restart local v2       #sig1:C
    .restart local v3       #value:Ljava/lang/Object;
    .restart local v4       #vtype:Lgnu/bytecode/Type;
    :cond_2
    const/16 v5, 0x4a

    if-ne v2, v5, :cond_3

    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    move-object v1, v5

    goto :goto_0
.end method

.method protected bridge synthetic visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "required"

    .prologue
    const-wide/32 v10, 0x100080

    const/16 v9, 0x65

    .line 201
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 202
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_3

    iget-object v6, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 205
    .local v3, dval:Lgnu/expr/Expression;
    instance-of v6, v3, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_0

    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v3, v6, :cond_0

    .line 206
    check-cast v3, Lgnu/expr/QuoteExp;

    .end local v3           #dval:Lgnu/expr/Expression;
    invoke-virtual {p0, v3, p2}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    .line 232
    .end local p0
    :goto_0
    return-object v6

    .line 207
    .restart local v3       #dval:Lgnu/expr/Expression;
    .restart local p0
    :cond_0
    instance-of v6, v3, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    move-object v0, v3

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v5, v0

    .line 210
    .local v5, rval:Lgnu/expr/ReferenceExp;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 211
    .local v4, rdecl:Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 212
    .local v2, dtype:Lgnu/bytecode/Type;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_1

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v2, v6, :cond_1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    if-ne v2, v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v6

    if-nez v6, :cond_2

    .line 217
    invoke-virtual {p0, v5, p2}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_0

    .line 219
    .end local v2           #dtype:Lgnu/bytecode/Type;
    .end local v4           #rdecl:Lgnu/expr/Declaration;
    .end local v5           #rval:Lgnu/expr/ReferenceExp;
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v6

    if-nez v6, :cond_3

    iget-wide v6, v1, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    if-nez v6, :cond_3

    .line 228
    iget-object v6, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unimplemented: reference to method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as variable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 229
    iget-object v6, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const-string v7, "here is the definition of "

    const-string v8, ""

    invoke-virtual {v6, v9, v1, v7, v8}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v3           #dval:Lgnu/expr/Expression;
    :cond_3
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v6, p0

    goto :goto_0
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 279
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_2

    .line 284
    iget-object v2, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v2, :cond_0

    .line 286
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 287
    .local v1, val:Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v2, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 288
    if-eqz v1, :cond_1

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 282
    .end local v1           #val:Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 288
    .restart local v1       #val:Lgnu/expr/Expression;
    :cond_1
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 293
    .end local v1           #val:Lgnu/expr/Expression;
    :cond_2
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"
    .parameter "required"

    .prologue
    const-wide/32 v3, 0x100080

    .line 368
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 369
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t assign to method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-static {v1, v2}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v1

    if-gez v1, :cond_1

    .line 377
    sget-object v1, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 392
    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 1
    .parameter "new_value"
    .parameter "required"
    .parameter "decl"

    .prologue
    .line 363
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p3, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    goto :goto_0
.end method

.method protected bridge synthetic visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/InlineCalls;->visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "required"

    .prologue
    .line 354
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getCatchClauses()Lgnu/expr/CatchClause;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p1, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    .line 357
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v0, p0

    goto :goto_0
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lgnu/bytecode/Type;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
