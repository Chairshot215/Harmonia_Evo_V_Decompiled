.class public Lgnu/kawa/slib/printf$frame10;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation


# instance fields
.field alternate$Mnform:Ljava/lang/Object;

.field args:Ljava/lang/Object;

.field blank:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;

.field leading$Mn0s:Ljava/lang/Object;

.field left$Mnadjust:Ljava/lang/Object;

.field os:Ljava/lang/Object;

.field pad:Lgnu/mapping/Procedure;

.field pr:Ljava/lang/Object;

.field precision:Ljava/lang/Object;

.field signed:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame9;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x1001

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    sget-object v2, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v3, -0xfff

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:472"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:476"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:484"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:494"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 494
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 472
    :pswitch_0
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda26(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 484
    :pswitch_2
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 494
    :pswitch_3
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda28(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 256
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/Object;

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public lambda22readFormatNumber()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 243
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 245
    sget-object v6, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 246
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v5}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 247
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    .local v1, ans:Ljava/lang/Object;
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    move-object v5, v1

    .line 251
    .end local v1           #ans:Ljava/lang/Object;
    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .local v2, c:Ljava/lang/Object;
    move-object v6, v5

    :goto_1
    move-object v4, p0

    .local v4, closureEnv:Lgnu/kawa/slib/printf$frame10;
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    :try_start_0
    check-cast v5, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v5}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v3, v5, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 252
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual {v7, v6, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 253
    instance-of v7, v2, [Ljava/lang/Object;

    if-eqz v7, :cond_1

    check-cast v2, [Ljava/lang/Object;

    .end local v2           #c:Ljava/lang/Object;
    move-object v7, v2

    :goto_2
    invoke-static {v7}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, accum:Ljava/lang/Object;
    .local v3, c:Ljava/lang/Object;
    move-object v6, v0

    move-object v2, v3

    .end local v3           #c:Ljava/lang/Object;
    .restart local v2       #c:Ljava/lang/Object;
    goto :goto_1

    .end local v0           #accum:Ljava/lang/Object;
    :cond_1
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    goto :goto_2

    :cond_2
    move-object v5, v6

    .line 251
    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "char-numeric?"

    invoke-direct {v7, v6, v8, v9, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "pre"
    .parameter "argsArray"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 256
    invoke-static {p2, v7}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 257
    .local v3, strs:Lgnu/lists/LList;
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, len:Ljava/lang/Integer;
    move-object v5, v3

    .line 259
    .end local v1           #len:Ljava/lang/Integer;
    :goto_0
    sget-object v4, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v4, v1, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_0

    invoke-static {p1, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .line 274
    .end local p0
    :goto_1
    return-object v4

    .line 259
    .restart local p0
    :cond_0
    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    .line 262
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v7

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 265
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v4, v6, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    sget-object v6, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v4, v6}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    aput-object v4, v5, v8

    invoke-static {v5}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_1

    .restart local p0
    :cond_1
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_2

    .line 267
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 268
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_2
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v4, v5}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-static {p1, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_1

    .line 271
    .restart local p0
    :cond_2
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_3
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v4, v5}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_1

    .line 274
    .restart local p0
    :cond_3
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_4
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v1, len:Ljava/lang/Object;
    .local v2, ss:Ljava/lang/Object;
    move-object v5, v2

    goto/16 :goto_0

    .line 257
    .end local v1           #len:Ljava/lang/Object;
    .end local v2           #ss:Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-length"

    invoke-direct {v5, v4, v6, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 265
    .end local p0
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "make-string"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 268
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "make-string"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 271
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "make-string"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 274
    .restart local p0
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "s"
    .parameter "radix"
    .parameter "fixcase"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 276
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_0
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 278
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    .line 279
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_2

    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 280
    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_0

    .line 281
    :goto_0
    const-string p1, ""

    .end local p1
    :cond_0
    move-object v3, p1

    .line 282
    .end local v2           #x:Z
    :goto_1
    invoke-static {v3}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_2
    check-cast v3, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v3}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 286
    .restart local p1
    :goto_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v3, :cond_1

    .line 287
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v3, p3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 288
    :cond_1
    const-string v3, ""

    invoke-static {v3, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, ""

    move-object v1, v3

    .line 300
    .end local p1
    .local v1, pre:Ljava/lang/String;
    :goto_3
    new-array v5, v6, [Ljava/lang/Object;

    sget-object v4, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 301
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_9

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_11

    .line 302
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 303
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_a

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_5
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_b

    move-result v3

    sget-object v4, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v3, v4}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 301
    :goto_4
    aput-object v3, v5, v8

    aput-object p1, v5, v7

    invoke-virtual {p0, v1, v5}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 279
    .end local v1           #pre:Ljava/lang/String;
    .restart local v2       #x:Z
    .restart local p1
    :cond_2
    if-eqz v2, :cond_0

    goto :goto_0

    .line 282
    .end local v2           #x:Z
    .end local p1
    :cond_3
    invoke-static {v3}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 283
    :try_start_6
    check-cast v3, Ljava/lang/Number;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object p1, v3

    goto :goto_2

    .line 284
    :cond_4
    :try_start_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_5

    if-eq v3, v4, :cond_6

    move v4, v7

    :goto_5
    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v4, 0x1

    .restart local v2       #x:Z
    if-eqz v2, :cond_7

    if-eqz v2, :cond_8

    :cond_5
    const-string v3, "0"

    move-object p1, v3

    goto/16 :goto_2

    .end local v2           #x:Z
    :cond_6
    move v4, v8

    goto :goto_5

    .restart local v2       #x:Z
    :cond_7
    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_8
    invoke-static {v3}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object p1, v3

    .line 285
    goto/16 :goto_2

    .line 286
    :cond_9
    const-string v3, "1"

    move-object p1, v3

    goto/16 :goto_2

    .line 288
    .end local v2           #x:Z
    .restart local p1
    :cond_a
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 289
    sget-object v5, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_9
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_6

    invoke-static {v3, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_b

    .line 290
    :try_start_a
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v3, v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_8

    .end local p1
    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v3, v7, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 291
    .local p1, s:Ljava/lang/CharSequence;
    const-string v3, "-"

    move-object v1, v3

    goto/16 :goto_3

    .local p1, s:Ljava/lang/Object;
    :cond_b
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_c

    .line 292
    const-string v3, "+"

    move-object v1, v3

    goto/16 :goto_3

    :cond_c
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_d

    .line 293
    const-string v3, " "

    move-object v1, v3

    goto/16 :goto_3

    :cond_d
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_10

    .line 295
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_e

    .line 296
    const-string v3, "0"

    :goto_6
    move-object v1, v3

    .line 298
    goto/16 :goto_3

    .line 296
    :cond_e
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 295
    sget-object v4, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    invoke-virtual {v3, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_f

    .line 297
    const-string v3, "0x"

    goto :goto_6

    .line 298
    :cond_f
    const-string v3, ""

    goto :goto_6

    .line 299
    :cond_10
    const-string v3, ""

    move-object v1, v3

    goto/16 :goto_3

    .line 301
    .end local p1           #s:Ljava/lang/Object;
    .restart local v1       #pre:Ljava/lang/String;
    :cond_11
    const-string v3, ""

    goto/16 :goto_4

    .line 277
    .end local v1           #pre:Ljava/lang/String;
    .restart local p1       #s:Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "negative?"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 279
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "zero?"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 282
    .end local p1           #s:Ljava/lang/Object;
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "symbol->string"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 283
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "number->string"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "number->string"

    invoke-direct {v4, v3, v5, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 284
    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 289
    .restart local p1       #s:Ljava/lang/Object;
    :catch_6
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 290
    :catch_7
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v3, v5, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_8
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 301
    .end local p1           #s:Ljava/lang/Object;
    .restart local v1       #pre:Ljava/lang/String;
    :catch_9
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 303
    :catch_a
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v5, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_b
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-string"

    invoke-direct {v5, v3, v6, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local v1           #pre:Ljava/lang/String;
    .restart local p1       #s:Ljava/lang/Object;
    :cond_12
    move-object v3, p1

    goto/16 :goto_1
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "s"

    .prologue
    .line 472
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 474
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 473
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method lambda26(Ljava/lang/Object;)Z
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x1

    .line 476
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .local v1, sl:Lgnu/expr/Special;
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 478
    .local v1, sl:Ljava/lang/Object;
    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v5, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local p1
    const/4 v6, 0x0

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_3
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    invoke-static {p1, v6, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 480
    :goto_0
    iput-object v2, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 481
    :try_start_4
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v2

    return v2

    .line 480
    .restart local p1
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    .line 477
    .local v1, sl:Lgnu/expr/Special;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 478
    .local v1, sl:Ljava/lang/Object;
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "negative?"

    invoke-direct {v3, v2, v4, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 479
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "substring"

    invoke-direct {v3, v2, v4, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .end local p1
    :catch_3
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x3

    invoke-direct {v4, v2, v5, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 481
    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "positive?"

    invoke-direct {v3, v2, v4, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    .line 484
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 486
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 486
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 490
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object p1, v1, v5

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    invoke-direct {v2, v1, v3, v5, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 487
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "negative?"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda28(Ljava/lang/Object;)Z
    .locals 8
    .parameter "s"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 494
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .local v1, sl:Lgnu/expr/Special;
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, sl:Ljava/lang/Object;
    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v2, v4, v6

    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local p1
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_3
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    invoke-static {p1, v6, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 500
    :goto_0
    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 501
    :try_start_4
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v2

    return v2

    .line 499
    .restart local p1
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object p1, v2, v5

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    goto :goto_0

    .line 495
    .local v1, sl:Lgnu/expr/Special;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v5, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 496
    .local v1, sl:Ljava/lang/Object;
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "negative?"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 498
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "substring"

    invoke-direct {v3, v2, v4, v5, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .end local p1
    :catch_3
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x3

    invoke-direct {v4, v2, v5, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 501
    :catch_4
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "positive?"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 472
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 494
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 484
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 476
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 472
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 256
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
