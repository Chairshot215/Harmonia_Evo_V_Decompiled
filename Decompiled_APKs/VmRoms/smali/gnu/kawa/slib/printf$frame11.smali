.class public Lgnu/kawa/slib/printf$frame11;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation


# instance fields
.field fc:Ljava/lang/Object;

.field format$Mnreal:Lgnu/mapping/Procedure;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame10;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    sget-object v2, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    const/16 v3, -0xffc

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, -0xffd

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:401"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 401
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    array-length v0, p2

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    new-array v5, v0, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v0, 0x4

    aget-object v6, p2, v6

    aput-object v6, v5, v0

    goto :goto_1

    .line 401
    :pswitch_1
    aget-object v0, p2, v1

    aget-object v1, p2, v2

    aget-object v2, p2, v3

    array-length v3, p2

    sub-int/2addr v3, v4

    new-array v4, v3, [Ljava/lang/Object;

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v4, 0x3

    aget-object v5, p2, v5

    aput-object v5, v3, v4

    goto :goto_2

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "digs"
    .parameter "exp"
    .parameter "strip$Mn0s"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 307
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 309
    iget-object v7, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v7, :cond_1

    move-object v7, p2

    :goto_0
    invoke-static {p1, v6, v7}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 310
    .restart local p1
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    .line 311
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v2, v6

    .local v2, i0:Lgnu/math/IntNum;
    :goto_1
    new-array v6, v11, [Ljava/lang/Object;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    aput-object v7, v6, v9

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, i1:Ljava/lang/Object;
    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v8

    :try_start_4
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v7

    invoke-static {v6, v8, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, idigs:Ljava/lang/CharSequence;
    :try_start_5
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v7

    :try_start_7
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_8

    .end local p1
    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 319
    .local v1, fdigs:Ljava/lang/CharSequence;
    const-string v6, ""

    invoke-static {v1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .local v5, x:Z
    if-eqz v5, :cond_4

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_5

    :cond_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_2
    invoke-static {v4, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    .line 328
    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    .end local v5           #x:Z
    .end local p0
    :goto_3
    return-object v6

    .restart local p0
    :cond_1
    move-object v7, p3

    .line 309
    goto :goto_0

    .line 311
    .restart local p1
    :cond_2
    sget-object v7, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_8
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v6, v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    invoke-static {v6, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v7, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 312
    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v2, v6

    goto :goto_1

    .line 313
    :cond_3
    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v2, v6

    goto :goto_1

    .line 319
    .end local p1
    .restart local v1       #fdigs:Ljava/lang/CharSequence;
    .restart local v2       #i0:Lgnu/math/IntNum;
    .restart local v3       #i1:Ljava/lang/Object;
    .restart local v4       #idigs:Ljava/lang/CharSequence;
    .restart local v5       #x:Z
    :cond_4
    if-nez v5, :cond_0

    :cond_5
    const-string v6, "."

    invoke-static {v6, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_2

    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    .end local v5           #x:Z
    .restart local p1
    :cond_6
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_9
    check-cast v6, Ljava/lang/Number;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_7

    .line 324
    const-string v6, "0."

    :goto_4
    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_3

    :cond_7
    const-string v6, "0"

    goto :goto_4

    .line 325
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v6, :cond_b

    const-string v6, ""

    invoke-static {p1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .restart local v5       #x:Z
    if-eqz v5, :cond_9

    const-string v6, "0"

    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    :goto_5
    move-object v5, v6

    .line 310
    .local v5, x:Ljava/lang/Object;
    :goto_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_c

    move-object v6, v5

    goto :goto_3

    .line 325
    .local v5, x:Z
    :cond_9
    if-eqz v5, :cond_a

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .end local v5           #x:Z
    :cond_b
    move-object v5, p3

    goto :goto_6

    .line 310
    .local v5, x:Ljava/lang/Object;
    :cond_c
    const-string v7, "0."

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    aput-object v8, v6, v9

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 328
    sget-object v9, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v8, v9, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-static {v6}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_a
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v6

    sget-object v8, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v6, v8}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v7, v6, p1}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto/16 :goto_3

    .line 309
    .end local v5           #x:Ljava/lang/Object;
    .restart local p0
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "stdio:round-string"

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 311
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "zero?"

    invoke-direct {v7, v6, v8, v10, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 312
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 315
    .restart local v2       #i0:Lgnu/math/IntNum;
    .restart local v3       #i1:Ljava/lang/Object;
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x3

    invoke-direct {v7, v6, v8, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 316
    .restart local v4       #idigs:Ljava/lang/CharSequence;
    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    invoke-direct {v7, v6, v8, v11, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 317
    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    invoke-direct {v7, v6, v8, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 323
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    :catch_9
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "zero?"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 328
    .end local p0
    .restart local v5       #x:Ljava/lang/Object;
    :catch_a
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    const-string v9, "make-string"

    invoke-direct {v8, v7, v9, v10, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "signed$Qu"
    .parameter "sgn"
    .parameter "digs"
    .parameter "exp"
    .parameter "argsArray"

    .prologue
    .line 386
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v15

    .line 387
    .local v15, rest:Lgnu/lists/LList;
    invoke-static {v15}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 388
    sget-object v5, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_0
    check-cast p2, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 389
    const-string v5, "-"

    move-object v6, v5

    .line 391
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .local v18, x:Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_6

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_7

    .line 392
    :cond_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 331
    .end local v18           #x:Ljava/lang/Object;
    .end local p1
    :goto_1
    :try_start_1
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p3
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 332
    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v8, :cond_1

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :cond_1
    move-object/from16 v0, p3

    move-object v1, v7

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 331
    .restart local p3
    sget-object v5, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_2
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 p5, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local p5
    const/4 v7, 0x0

    move-object/from16 v0, p5

    move v1, v7

    invoke-static {v0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-static {v5, v7}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v14, v5

    .local v14, istrt:Lgnu/math/IntNum;
    :goto_2
    :try_start_3
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 p5, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    :try_start_4
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    move-object v5, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v0, p5

    move v1, v7

    move v2, v5

    invoke-static {v0, v1, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, fdigs:Ljava/lang/CharSequence;
    invoke-static {v14}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v5

    if-eqz v5, :cond_a

    :goto_3
    :try_start_5
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .end local p3
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v5

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p3

    move v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .line 339
    const-string v7, ""

    invoke-static {v12, v7}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    .local v18, x:Z
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_c

    :cond_2
    const-string v7, ""

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    :try_start_7
    check-cast p0, Lgnu/text/Char;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static/range {p0 .. p0}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 342
    const-string v8, "E"

    :goto_5
    :try_start_8
    invoke-static/range {p4 .. p4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v9

    invoke-static {v9}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 343
    const-string v9, "-"

    :goto_6
    invoke-static {v5, v7, v12, v8, v9}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    sget-object v8, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 344
    sget-object v9, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, p4

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_f

    const-string v8, "0"

    :goto_7
    invoke-static {v7, v8}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    :try_start_9
    check-cast p4, Ljava/lang/Number;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    .end local p4
    invoke-static/range {p4 .. p4}, Lkawa/lib/numbers;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-static {v8}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    .line 396
    .end local v12           #fdigs:Ljava/lang/CharSequence;
    .end local v14           #istrt:Lgnu/math/IntNum;
    .end local v18           #x:Z
    :goto_8
    invoke-static {v6, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .line 398
    :goto_9
    return-object v5

    .line 390
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p4
    .restart local p5
    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object v1, v5

    if-eq v0, v1, :cond_4

    const-string v5, "+"

    move-object v6, v5

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_5

    const-string v5, " "

    move-object v6, v5

    goto/16 :goto_0

    :cond_5
    const-string v5, ""

    move-object v6, v5

    goto/16 :goto_0

    .line 391
    .local v18, x:Ljava/lang/Object;
    :cond_6
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v7, :cond_0

    .line 344
    :cond_7
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_10

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_11

    .line 393
    :cond_8
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    .line 331
    .end local v18           #x:Ljava/lang/Object;
    .end local p1
    .end local p5
    :cond_9
    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    move-object v14, v5

    goto/16 :goto_2

    .restart local v12       #fdigs:Ljava/lang/CharSequence;
    .restart local v14       #istrt:Lgnu/math/IntNum;
    :cond_a
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v0, v5

    move-object/from16 v1, p4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p4, v5

    goto/16 :goto_3

    .line 339
    .end local p3
    .local v18, x:Z
    :cond_b
    if-nez v18, :cond_2

    :cond_c
    const-string v7, "."

    goto/16 :goto_4

    .line 342
    .end local p0
    :cond_d
    const-string v8, "e"

    goto/16 :goto_5

    .line 343
    :cond_e
    const-string v9, "+"

    goto/16 :goto_6

    .line 344
    :cond_f
    const-string v8, ""

    goto/16 :goto_7

    .line 391
    .end local v12           #fdigs:Ljava/lang/CharSequence;
    .end local v14           #istrt:Lgnu/math/IntNum;
    .local v18, x:Ljava/lang/Object;
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_10
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v7, :cond_8

    .line 393
    :cond_11
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_13

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    move-object v1, v5

    if-eq v0, v1, :cond_14

    .line 346
    .end local v18           #x:Ljava/lang/Object;
    .end local p1
    :cond_12
    :goto_a
    move-object/from16 v11, p0

    .line 347
    .local v11, closureEnv:Lgnu/kawa/slib/printf$frame11;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    :try_start_a
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    if-eq v5, v7, :cond_15

    const/4 v5, 0x1

    :goto_b
    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v16, v5, 0x1

    .line 348
    .local v16, strip$Mn0s:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v5, v0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v7, v5, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v5, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 349
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v9, v0

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p4

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v7, :cond_17

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v5, v0

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v5, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 351
    if-eqz v16, :cond_16

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_8

    .line 391
    .end local v11           #closureEnv:Lgnu/kawa/slib/printf$frame11;
    .end local v16           #strip$Mn0s:Z
    .restart local v18       #x:Ljava/lang/Object;
    .restart local p1
    :cond_13
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v7, :cond_12

    .line 354
    :cond_14
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v7, :cond_1d

    .line 395
    const-string v5, ""

    .line 355
    :goto_d
    move-object/from16 v11, p0

    .line 356
    .restart local v11       #closureEnv:Lgnu/kawa/slib/printf$frame11;
    :try_start_b
    invoke-static/range {p4 .. p4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 360
    sget-object v7, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    move-object v0, v8

    move-object/from16 v1, p4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    .line 362
    .local v13, i:Ljava/lang/Object;
    :goto_e
    sget-object v7, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v10, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v9, v13, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 363
    sget-object v10, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v10}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_c
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    move-result v18

    .line 362
    .local v18, x:Z
    if-eqz v18, :cond_1a

    move-object/from16 v17, v13

    .line 365
    .local v17, uind:Ljava/lang/Object;
    :goto_f
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v17

    move-object v1, v7

    if-eq v0, v1, :cond_1c

    .line 366
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p4

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v7, v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v11, v0

    .end local v11           #closureEnv:Lgnu/kawa/slib/printf$frame11;
    iget-object v11, v11, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 368
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v11, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    move-object v0, v10

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object/from16 p0, v0

    .end local p0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    move-result v10

    invoke-static {v9, v10}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v9}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v7}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_8

    .line 347
    .end local v13           #i:Ljava/lang/Object;
    .end local v17           #uind:Ljava/lang/Object;
    .end local v18           #x:Z
    .restart local v11       #closureEnv:Lgnu/kawa/slib/printf$frame11;
    .restart local p0
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 351
    .restart local v16       #strip$Mn0s:Z
    :cond_16
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_c

    .line 353
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v5, v0

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    move-object v8, v0

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v5, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 354
    if-eqz v16, :cond_18

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v11, v5

    :goto_10
    move-object v5, v11

    goto/16 :goto_1

    :cond_18
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v11, v5

    goto :goto_10

    .line 361
    .end local v16           #strip$Mn0s:Z
    .local v18, x:Ljava/lang/Object;
    .restart local p1
    :cond_19
    sget-object v7, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    move-object v0, v8

    move-object/from16 v1, p4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    goto/16 :goto_e

    .line 362
    .end local p1
    .restart local v13       #i:Ljava/lang/Object;
    .local v18, x:Z
    :cond_1a
    if-eqz v18, :cond_1b

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v17, v7

    goto/16 :goto_f

    :cond_1b
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v17, v7

    goto/16 :goto_f

    .line 373
    .restart local v17       #uind:Ljava/lang/Object;
    :cond_1c
    goto/16 :goto_a

    .end local v11           #closureEnv:Lgnu/kawa/slib/printf$frame11;
    .end local v13           #i:Ljava/lang/Object;
    .end local v17           #uind:Ljava/lang/Object;
    .local v18, x:Ljava/lang/Object;
    .restart local p1
    :cond_1d
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    move-object v7, v0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual {v5, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v7, :cond_1e

    .line 396
    const-string v5, " "

    goto/16 :goto_d

    :cond_1e
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_8

    .line 397
    .end local v18           #x:Ljava/lang/Object;
    .restart local p2
    :cond_1f
    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v11, v12

    const/4 v5, 0x1

    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    move-object v7, v0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8, v15}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    sget-object v6, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    aput-object v6, v11, v5

    invoke-static {v11}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_9

    .line 389
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "char=?"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 332
    .end local p1
    .end local p2
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "stdio:round-string"

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 333
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 335
    .end local p5
    .restart local v14       #istrt:Lgnu/math/IntNum;
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 338
    .restart local v12       #fdigs:Ljava/lang/CharSequence;
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local p3
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    const/4 v8, 0x2

    invoke-direct {v6, v5, v7, v8, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 342
    .end local p0
    .local v18, x:Z
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "char-upper-case?"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 343
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "negative?"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 345
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "abs"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 347
    .end local v12           #fdigs:Ljava/lang/CharSequence;
    .end local v14           #istrt:Lgnu/math/IntNum;
    .end local v18           #x:Z
    .restart local v11       #closureEnv:Lgnu/kawa/slib/printf$frame11;
    .restart local p0
    .restart local p3
    .restart local p5
    :catch_a
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "strip-0s"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 359
    .local v18, x:Ljava/lang/Object;
    .restart local p1
    :catch_b
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "negative?"

    const/4 v8, 0x1

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 363
    .end local p1
    .restart local v13       #i:Ljava/lang/Object;
    :catch_c
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "x"

    const/4 v8, -0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 371
    .end local v11           #closureEnv:Lgnu/kawa/slib/printf$frame11;
    .end local p0
    .restart local v17       #uind:Ljava/lang/Object;
    .local v18, x:Z
    :catch_d
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "vector-ref"

    const/4 v8, 0x2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "sgn"
    .parameter "digs"
    .parameter "expon"
    .parameter "argsArray"

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-static {p4, v6}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 402
    .local v0, imag:Lgnu/lists/LList;
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 403
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 404
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 405
    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    aput-object p3, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 386
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 401
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 386
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
