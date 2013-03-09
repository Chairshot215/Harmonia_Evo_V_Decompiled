.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lgnu/mapping/Table2D;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    const/16 v2, 0x14

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 82
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 83
    new-array v0, v2, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 47
    iput-object p1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 48
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    .line 49
    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "literal"
    .parameter "ignore"
    .parameter "code"

    .prologue
    .line 528
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    .line 530
    if-nez p2, :cond_0

    .line 531
    iget-object v0, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 532
    :cond_0
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 534
    :cond_1
    iget v0, p1, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lgnu/expr/Literal;->flags:I

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public emit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v0, init:Lgnu/expr/Literal;
    :goto_0
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_1
    if-eqz v0, :cond_1

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 72
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_1

    .line 78
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Lgnu/expr/LitTable;->literalsCount:I

    .line 80
    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .locals 23
    .parameter "literal"
    .parameter "ignore"

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 540
    .local v7, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 542
    if-nez p2, :cond_0

    .line 543
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 547
    if-nez p2, :cond_0

    .line 548
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_3

    .line 552
    if-nez p2, :cond_0

    .line 553
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object/from16 v20, v0

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 555
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 557
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v12, v0

    .line 558
    .local v12, len:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ArrayType;

    invoke-virtual {v5}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 559
    .local v9, elementType:Lgnu/bytecode/Type;
    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 560
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 562
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_0

    .line 564
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v20, v0

    aget-object v8, v20, v10

    check-cast v8, Lgnu/expr/Literal;

    .line 565
    .local v8, el:Lgnu/expr/Literal;
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 562
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 567
    :cond_4
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 568
    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 569
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 570
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 573
    .end local v8           #el:Lgnu/expr/Literal;
    .end local v9           #elementType:Lgnu/bytecode/Type;
    .end local v10           #i:I
    .end local v12           #len:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 575
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ArrayType;

    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 578
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 580
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    .line 581
    .local v5, clas:Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 583
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, cname:Ljava/lang/String;
    const-string v20, "int"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 585
    const-string v6, "integer"

    .line 586
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "java.lang."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    const-string v21, "TYPE"

    invoke-virtual/range {v20 .. v21}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 593
    .end local v5           #clas:Ljava/lang/Class;
    .end local v6           #cname:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 592
    .restart local v5       #clas:Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v20, v0

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    .end local v5           #clas:Ljava/lang/Class;
    check-cast v5, Lgnu/bytecode/ObjectType;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_3

    .line 595
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v20

    if-nez v20, :cond_b

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 602
    sget-object v20, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v21, "valueOf"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 603
    .local v14, meth:Lgnu/bytecode/Method;
    if-nez v14, :cond_a

    .line 604
    sget-object v20, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v21, "make"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 605
    :cond_a
    invoke-virtual {v7, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 606
    sget-object v20, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 611
    .end local v14           #meth:Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v18, v0

    check-cast v18, Lgnu/bytecode/ClassType;

    .line 612
    .local v18, type:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x4

    if-eqz v20, :cond_17

    const/16 v20, 0x1

    move/from16 v19, v20

    .line 613
    .local v19, useDefaultInit:Z
    :goto_4
    const/4 v15, 0x0

    .line 614
    .local v15, method:Lgnu/bytecode/Method;
    const/4 v13, 0x0

    .line 615
    .local v13, makeStatic:Z
    if-nez v19, :cond_10

    .line 620
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 621
    const-string v20, "valueOf"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 622
    :cond_c
    if-nez v15, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 626
    const-string v16, "make"

    .line 628
    .local v16, mname:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/util/regex/Pattern;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 629
    const-string v16, "compile"

    .line 631
    :cond_d
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 634
    .end local v16           #mname:Ljava/lang/String;
    :cond_e
    if-eqz v15, :cond_18

    .line 635
    const/4 v13, 0x1

    .line 639
    :cond_f
    :goto_5
    if-nez v15, :cond_10

    .line 640
    const/16 v19, 0x1

    .line 642
    :cond_10
    if-eqz v19, :cond_11

    .line 644
    const-string v20, "set"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 647
    :cond_11
    if-nez v15, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_12

    .line 648
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "no method to construct "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 649
    :cond_12
    if-eqz v13, :cond_19

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 652
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 668
    :goto_6
    if-nez v13, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    :cond_13
    const/16 v20, 0x0

    move-object/from16 v17, v20

    .line 671
    .local v17, resolveMethod:Lgnu/bytecode/Method;
    :goto_7
    if-eqz v17, :cond_14

    .line 673
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 674
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 676
    :cond_14
    if-eqz p2, :cond_1c

    if-eqz v19, :cond_15

    if-nez v15, :cond_1c

    :cond_15
    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 677
    if-eqz v19, :cond_0

    if-eqz v15, :cond_0

    .line 679
    if-nez p2, :cond_16

    .line 680
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 681
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 682
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_0

    .line 612
    .end local v13           #makeStatic:Z
    .end local v15           #method:Lgnu/bytecode/Method;
    .end local v17           #resolveMethod:Lgnu/bytecode/Method;
    .end local v19           #useDefaultInit:Z
    :cond_17
    const/16 v20, 0x0

    move/from16 v19, v20

    goto/16 :goto_4

    .line 636
    .restart local v13       #makeStatic:Z
    .restart local v15       #method:Lgnu/bytecode/Method;
    .restart local v19       #useDefaultInit:Z
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_f

    .line 637
    const-string v20, "<init>"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    goto/16 :goto_5

    .line 654
    :cond_19
    if-eqz v19, :cond_1a

    .line 656
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 657
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 658
    const-string v20, "<init>"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    .line 659
    .local v11, init0:Lgnu/bytecode/Method;
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_6

    .line 663
    .end local v11           #init0:Lgnu/bytecode/Method;
    :cond_1a
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 664
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 666
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_6

    .line 668
    :cond_1b
    const-string v20, "readResolve"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    move-object/from16 v17, v20

    goto/16 :goto_7

    .line 676
    .restart local v17       #resolveMethod:Lgnu/bytecode/Method;
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_8
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .locals 19
    .parameter "value"

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    sget-object v15, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    .line 353
    :goto_0
    return-object v15

    .line 296
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/expr/Literal;

    .line 297
    .local v10, literal:Lgnu/expr/Literal;
    if-eqz v10, :cond_1

    move-object v15, v10

    .line 298
    goto :goto_0

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object v15, v0

    iget-boolean v15, v15, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v15, :cond_2

    .line 300
    new-instance v15, Lgnu/expr/Literal;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 302
    .local v13, valueClass:Ljava/lang/Class;
    invoke-static {v13}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v14

    .line 304
    .local v14, valueType:Lgnu/bytecode/Type;
    sget-object v15, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    monitor-enter v15

    .line 306
    :try_start_0
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lgnu/expr/Literal;

    move-object v10, v0

    .line 307
    if-eqz v10, :cond_3

    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7

    :cond_3
    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 311
    const/16 v11, 0x19

    .line 312
    .local v11, needed_mod:I
    move-object v6, v13

    .line 313
    .local v6, fldClass:Ljava/lang/Class;
    move-object v0, v14

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v7, v0

    .line 314
    .local v7, fldType:Lgnu/bytecode/ClassType;
    :goto_1
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    .line 317
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v5

    .line 319
    .local v5, fld:Lgnu/bytecode/Field;
    :goto_2
    if-eqz v5, :cond_6

    .line 321
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    and-int v16, v16, v11

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_4

    .line 325
    :try_start_1
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v12

    .line 326
    .local v12, rfld:Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 327
    .local v9, litValue:Ljava/lang/Object;
    if-eqz v9, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    if-nez v16, :cond_5

    .line 319
    .end local v9           #litValue:Ljava/lang/Object;
    .end local v12           #rfld:Ljava/lang/reflect/Field;
    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_2

    .line 330
    .restart local v9       #litValue:Ljava/lang/Object;
    .restart local v12       #rfld:Ljava/lang/reflect/Field;
    :cond_5
    :try_start_3
    new-instance v8, Lgnu/expr/Literal;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 331
    .local v8, lit:Lgnu/expr/Literal;
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    move-object/from16 v0, p1

    move-object v1, v9

    if-ne v0, v1, :cond_4

    .line 333
    move-object v10, v8

    goto :goto_3

    .line 335
    .end local v8           #lit:Lgnu/expr/Literal;
    .end local v9           #litValue:Ljava/lang/Object;
    .end local v12           #rfld:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 337
    .local v4, ex:Ljava/lang/Throwable;
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "caught "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getting static field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 347
    .end local v4           #ex:Ljava/lang/Throwable;
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v16

    .line 341
    .restart local v5       #fld:Lgnu/bytecode/Field;
    .restart local v6       #fldClass:Ljava/lang/Class;
    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    .restart local v11       #needed_mod:I
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 342
    if-nez v6, :cond_8

    .line 347
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :cond_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    if-eqz v10, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v15, v10

    .line 353
    goto/16 :goto_0

    .line 344
    .restart local v5       #fld:Lgnu/bytecode/Field;
    .restart local v6       #fldClass:Ljava/lang/Class;
    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    .restart local v11       #needed_mod:I
    :cond_8
    :try_start_6
    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    check-cast v7, Lgnu/bytecode/ClassType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    goto/16 :goto_1

    .line 352
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :cond_9
    new-instance v10, Lgnu/expr/Literal;

    .end local v10           #literal:Lgnu/expr/Literal;
    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    .restart local v10       #literal:Lgnu/expr/Literal;
    goto :goto_4
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .locals 36
    .parameter "type"
    .parameter "name"
    .parameter "literal"
    .parameter "isStatic"

    .prologue
    .line 359
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object v6, v0

    .line 360
    .local v6, argTypes:[Lgnu/bytecode/Type;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v25

    .line 361
    .local v25, method:Lgnu/bytecode/Method;
    array-length v5, v6

    .line 362
    .local v5, argLength:I
    const/4 v14, 0x0

    .line 363
    .local v14, best:Lgnu/bytecode/Method;
    const-wide/16 v15, 0x0

    .line 364
    .local v15, bestArrayArgs:J
    const/4 v4, 0x0

    .line 365
    .local v4, ambiguous:Z
    const/4 v13, 0x0

    .line 367
    .end local p0
    .local v13, bParameters:[Lgnu/bytecode/Type;
    :goto_0
    if-eqz v25, :cond_10

    .line 369
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 367
    :cond_0
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v25

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v26

    .line 372
    .local v26, mstatic:Z
    move/from16 v0, p4

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 375
    const-wide/16 v10, 0x0

    .line 376
    .local v10, arrayArgs:J
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v24

    .line 377
    .local v24, mParameters:[Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .local v20, iarg:I
    const/16 v21, 0x0

    .line 380
    .local v21, iparam:I
    :goto_2
    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 382
    if-eqz v14, :cond_2

    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-eqz v32, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-nez v32, :cond_3

    .line 384
    :cond_2
    move-object/from16 v14, v25

    .line 385
    move-object/from16 v13, v24

    .line 386
    move-wide v15, v10

    goto :goto_1

    .line 388
    :cond_3
    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-nez v32, :cond_0

    .line 393
    const/16 v27, 0x0

    .line 395
    .local v27, not1:Z
    const/16 v28, 0x0

    .line 396
    .local v28, not2:Z
    move/from16 v23, v5

    .local v23, j:I
    :cond_4
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_5

    .line 398
    aget-object v32, v13, v23

    aget-object v33, v24, v23

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v17

    .line 399
    .local v17, c:I
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 401
    const/16 v28, 0x1

    .line 402
    if-eqz v27, :cond_7

    .line 412
    .end local v17           #c:I
    :cond_5
    :goto_3
    if-eqz v27, :cond_6

    .line 414
    move-object/from16 v14, v25

    .line 415
    move-object/from16 v13, v24

    .line 417
    :cond_6
    if-eqz v27, :cond_8

    if-eqz v28, :cond_8

    const/16 v32, 0x1

    move/from16 v4, v32

    .line 418
    :goto_4
    goto :goto_1

    .line 405
    .restart local v17       #c:I
    :cond_7
    const/16 v32, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_4

    .line 407
    const/16 v27, 0x1

    .line 408
    if-eqz v28, :cond_4

    goto :goto_3

    .line 417
    .end local v17           #c:I
    :cond_8
    const/16 v32, 0x0

    move/from16 v4, v32

    goto :goto_4

    .line 421
    .end local v23           #j:I
    .end local v27           #not1:Z
    .end local v28           #not2:Z
    :cond_9
    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 423
    aget-object v3, v6, v20

    .line 424
    .local v3, aType:Lgnu/bytecode/Type;
    aget-object v29, v24, v21

    .line 425
    .local v29, pType:Lgnu/bytecode/Type;
    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 378
    .end local v29           #pType:Lgnu/bytecode/Type;
    :goto_5
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 427
    .restart local v29       #pType:Lgnu/bytecode/Type;
    :cond_a
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    const/16 v32, 0x40

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    sget-object v32, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v3

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_b

    sget-object v32, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    move-object v0, v3

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 430
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object p0, v32, v20

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 431
    .local v18, count:I
    if-gez v18, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "gnu.math.IntNum"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 432
    const/high16 v32, -0x8000

    sub-int v18, v18, v32

    .line 433
    :cond_c
    check-cast v29, Lgnu/bytecode/ArrayType;

    .end local v29           #pType:Lgnu/bytecode/Type;
    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    .line 434
    .local v19, elementType:Lgnu/bytecode/Type;
    if-ltz v18, :cond_0

    add-int v32, v20, v18

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 438
    move/from16 v23, v18

    .restart local v23       #j:I
    :cond_d
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_f

    .line 440
    add-int v32, v20, v23

    add-int/lit8 v32, v32, 0x1

    aget-object v30, v6, v32

    .line 441
    .local v30, t:Lgnu/bytecode/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v32, v0

    if-eqz v32, :cond_e

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_d

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v32

    if-nez v32, :cond_d

    goto/16 :goto_1

    .line 446
    .end local v30           #t:Lgnu/bytecode/Type;
    :cond_f
    add-int v20, v20, v18

    .line 447
    const/16 v32, 0x1

    shl-int v32, v32, v21

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    or-long v10, v10, v32

    goto/16 :goto_5

    .line 456
    .end local v3           #aType:Lgnu/bytecode/Type;
    .end local v10           #arrayArgs:J
    .end local v18           #count:I
    .end local v19           #elementType:Lgnu/bytecode/Type;
    .end local v20           #iarg:I
    .end local v21           #iparam:I
    .end local v23           #j:I
    .end local v24           #mParameters:[Lgnu/bytecode/Type;
    .end local v26           #mstatic:Z
    :cond_10
    if-eqz v4, :cond_11

    .line 457
    const/16 v32, 0x0

    .line 509
    :goto_6
    return-object v32

    .line 458
    :cond_11
    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-eqz v32, :cond_12

    .line 460
    move-object v0, v13

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 461
    .local v8, args:[Ljava/lang/Object;
    move-object v0, v13

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v31, v0

    .line 462
    .local v31, types:[Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .restart local v20       #iarg:I
    const/16 v21, 0x0

    .line 465
    .restart local v21       #iparam:I
    :goto_7
    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 506
    move-object v0, v8

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 507
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .end local v8           #args:[Ljava/lang/Object;
    .end local v20           #iarg:I
    .end local v21           #iparam:I
    .end local v31           #types:[Lgnu/bytecode/Type;
    :cond_12
    move-object/from16 v32, v14

    .line 509
    goto :goto_6

    .line 467
    .restart local v8       #args:[Ljava/lang/Object;
    .restart local v20       #iarg:I
    .restart local v21       #iparam:I
    .restart local v31       #types:[Lgnu/bytecode/Type;
    :cond_13
    aget-object v29, v13, v21

    .line 468
    .restart local v29       #pType:Lgnu/bytecode/Type;
    const/16 v32, 0x1

    shl-int v32, v32, v21

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    and-long v32, v32, v15

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_14

    .line 470
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    aput-object v32, v8, v21

    .line 471
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    aput-object v32, v31, v21

    .line 463
    :goto_8
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 475
    :cond_14
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object p0, v32, v20

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 476
    .restart local v18       #count:I
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "gnu.math.IntNum"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 477
    .local v22, isIntNum:Z
    if-eqz v22, :cond_15

    .line 478
    const/high16 v32, -0x8000

    sub-int v18, v18, v32

    .line 479
    :cond_15
    move-object/from16 v0, v29

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    .line 480
    .restart local v19       #elementType:Lgnu/bytecode/Type;
    aput-object v29, v31, v21

    .line 481
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v32

    aput-object v32, v8, v21

    .line 483
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object v7, v0

    .line 484
    .local v7, argValues:[Ljava/lang/Object;
    if-eqz v22, :cond_16

    .line 489
    aget-object p0, v8, v21

    check-cast p0, [I

    move-object/from16 v0, p0

    check-cast v0, [I

    move-object v9, v0

    .line 490
    .local v9, arr:[I
    move/from16 v23, v18

    .restart local v23       #j:I
    :goto_9
    if-lez v23, :cond_17

    .line 491
    sub-int v32, v18, v23

    add-int v33, v20, v23

    aget-object p0, v7, v33

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v33

    aput v33, v9, v32

    .line 490
    add-int/lit8 v23, v23, -0x1

    goto :goto_9

    .line 496
    .end local v9           #arr:[I
    .end local v23           #j:I
    :cond_16
    move/from16 v23, v18

    .restart local v23       #j:I
    :goto_a
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_17

    .line 497
    aget-object v32, v8, v21

    add-int/lit8 v33, v20, 0x1

    add-int v33, v33, v23

    aget-object v33, v7, v33

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_a

    .line 499
    :cond_17
    new-instance v12, Lgnu/expr/Literal;

    aget-object v32, v8, v21

    move-object v0, v12

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 500
    .local v12, arrayLiteral:Lgnu/expr/Literal;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 501
    aget-object p0, v8, v21

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 502
    :cond_18
    aput-object v12, v8, v21

    .line 503
    add-int v20, v20, v18

    goto/16 :goto_8
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 5
    .parameter "value"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    iget-object v3, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 90
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 91
    .local v1, newValues:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 92
    .local v0, newTypes:[Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 97
    .end local v0           #newTypes:[Lgnu/bytecode/Type;
    .end local v1           #newValues:[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p1, v2, v3

    .line 98
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p2, v2, v3

    .line 99
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 100
    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .locals 7
    .parameter "literal"
    .parameter "code"

    .prologue
    .line 514
    iget-object v0, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 515
    .local v0, argTypes:[Lgnu/bytecode/Type;
    array-length v2, v0

    .line 516
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 518
    iget-object v4, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 519
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Literal;

    if-eqz v4, :cond_0

    .line 520
    check-cast v3, Lgnu/expr/Literal;

    .end local v3           #value:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 516
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .restart local v3       #value:Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    new-instance v5, Lgnu/expr/StackTarget;

    aget-object v6, v0, v1

    invoke-direct {v5, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_1

    .line 524
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "cannot handle call to write(int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "cannot handle call to write(byte[]) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "cannot handle call to write(byte[],int,int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 137
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 138
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "cannot handle call to writeBytes(String) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeChar(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Character;

    int-to-char v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 143
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 183
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .parameter "v"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 173
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .parameter "v"

    .prologue
    .line 167
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 168
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 158
    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .parameter "v"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 163
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 11
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v4

    .line 197
    .local v4, lit:Lgnu/expr/Literal;
    iget v8, v4, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_2

    .line 201
    iget-object v8, v4, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v8, :cond_0

    if-eqz p1, :cond_0

    instance-of v8, p1, Ljava/lang/String;

    if-nez v8, :cond_0

    .line 203
    invoke-virtual {v4, p0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 204
    :cond_0
    iget v8, v4, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 205
    iget v8, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v4, Lgnu/expr/Literal;->flags:I

    .line 289
    .end local p1
    :cond_1
    :goto_0
    iget-object v8, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v4, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 290
    return-void

    .line 209
    .restart local p1
    :cond_2
    iget v8, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v4, Lgnu/expr/Literal;->flags:I

    .line 210
    iget v6, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 211
    .local v6, oldStack:I
    instance-of v8, p1, Lgnu/lists/FString;

    if-eqz v8, :cond_4

    move-object v0, p1

    check-cast v0, Lgnu/lists/FString;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/FString;->size()I

    move-result v8

    const v9, 0xffff

    if-ge v8, v9, :cond_4

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v8, v9}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 273
    .end local p1
    :cond_3
    :goto_1
    iget v8, p0, Lgnu/expr/LitTable;->stackPointer:I

    sub-int v5, v8, v6

    .line 274
    .local v5, nargs:I
    if-nez v5, :cond_12

    .line 276
    sget-object v8, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v8, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 277
    sget-object v8, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v8, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 287
    :goto_2
    iget v8, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v4, Lgnu/expr/Literal;->flags:I

    goto :goto_0

    .line 216
    .end local v5           #nargs:I
    .restart local p1
    :cond_4
    instance-of v8, p1, Ljava/io/Externalizable;

    if-eqz v8, :cond_5

    .line 218
    check-cast p1, Ljava/io/Externalizable;

    .end local p1
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_1

    .line 220
    .restart local p1
    :cond_5
    instance-of v8, p1, [Ljava/lang/Object;

    if-eqz v8, :cond_6

    .line 222
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 223
    .local v1, arr:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 225
    aget-object v8, v1, v3

    invoke-virtual {p0, v8}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 228
    .end local v1           #arr:[Ljava/lang/Object;
    .end local v3           #i:I
    .restart local p1
    :cond_6
    if-eqz p1, :cond_3

    instance-of v8, p1, Ljava/lang/String;

    if-nez v8, :cond_3

    iget-object v8, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v8, v8, Lgnu/bytecode/ArrayType;

    if-nez v8, :cond_3

    .line 233
    instance-of v8, p1, Ljava/math/BigInteger;

    if-eqz v8, :cond_7

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_7
    instance-of v8, p1, Ljava/math/BigDecimal;

    if-eqz v8, :cond_8

    .line 239
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    move-object v2, v0

    .line 241
    .local v2, dec:Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    invoke-virtual {p0, v8}, Lgnu/expr/LitTable;->writeInt(I)V

    goto :goto_1

    .line 247
    .end local v2           #dec:Ljava/math/BigDecimal;
    :cond_8
    instance-of v8, p1, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    .line 248
    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 249
    :cond_9
    instance-of v8, p1, Ljava/lang/Short;

    if-eqz v8, :cond_a

    .line 250
    sget-object v8, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 251
    :cond_a
    instance-of v8, p1, Ljava/lang/Byte;

    if-eqz v8, :cond_b

    .line 252
    sget-object v8, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 253
    :cond_b
    instance-of v8, p1, Ljava/lang/Long;

    if-eqz v8, :cond_c

    .line 254
    sget-object v8, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 255
    :cond_c
    instance-of v8, p1, Ljava/lang/Double;

    if-eqz v8, :cond_d

    .line 256
    sget-object v8, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 257
    :cond_d
    instance-of v8, p1, Ljava/lang/Float;

    if-eqz v8, :cond_e

    .line 258
    sget-object v8, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 259
    :cond_e
    instance-of v8, p1, Ljava/lang/Character;

    if-eqz v8, :cond_f

    .line 260
    sget-object v8, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 261
    :cond_f
    instance-of v8, p1, Ljava/lang/Class;

    if-eqz v8, :cond_10

    .line 262
    sget-object v8, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 264
    :cond_10
    instance-of v8, p1, Ljava/util/regex/Pattern;

    if-eqz v8, :cond_11

    .line 266
    move-object v0, p1

    check-cast v0, Ljava/util/regex/Pattern;

    move-object v7, v0

    .line 267
    .local v7, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v8, v9}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 268
    invoke-virtual {v7}, Ljava/util/regex/Pattern;->flags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v8, v9}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 272
    .end local v7           #pat:Ljava/util/regex/Pattern;
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not implement Externalizable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    .end local p1
    .restart local v5       #nargs:I
    :cond_12
    new-array v8, v5, [Ljava/lang/Object;

    iput-object v8, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 282
    new-array v8, v5, [Lgnu/bytecode/Type;

    iput-object v8, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 283
    iget-object v8, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget-object v9, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    invoke-static {v8, v6, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v8, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget-object v9, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v8, v6, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iput v6, p0, Lgnu/expr/LitTable;->stackPointer:I

    goto/16 :goto_2
.end method

.method public writeShort(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/Short;

    int-to-short v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 153
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 178
    return-void
.end method
