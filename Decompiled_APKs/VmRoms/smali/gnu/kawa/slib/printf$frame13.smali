.class public Lgnu/kawa/slib/printf$frame13;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame13"
.end annotation


# instance fields
.field cnt:Ljava/lang/Object;

.field end:Ljava/lang/Object;

.field final lambda$Fn19:Lgnu/expr/ModuleMethod;

.field s:Ljava/lang/Object;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:564"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 564
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame13;->lambda33(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda33(Ljava/lang/Object;)Z
    .locals 12
    .parameter "x"

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 564
    invoke-static {p1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    .line 567
    :cond_0
    new-array v5, v11, [Ljava/lang/Object;

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v10

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v5}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .local v2, lend:Ljava/lang/Object;
    move-object v7, v4

    :goto_0
    sget-object v4, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 569
    invoke-virtual {v4, v7, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_2

    .line 570
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_2
    check-cast v4, Lgnu/lists/CharSeq;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_3
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v5, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    move-object v0, v7

    check-cast v0, Ljava/lang/Number;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v6

    invoke-static {v5, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v4, v8, v5}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 571
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 568
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, v7, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, i:Ljava/lang/Object;
    move-object v7, v1

    goto :goto_0

    .line 572
    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #lend:Ljava/lang/Object;
    :cond_1
    new-array v7, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_6
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_7
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    invoke-static {v4, v10, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v7, v10

    aput-object p1, v7, v9

    invoke-static {v7}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 574
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_8
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 575
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 582
    .end local p1
    :cond_2
    :goto_1
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_a

    sget-object v4, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_9

    move v4, v9

    :goto_2
    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x1

    return v4

    .line 576
    .restart local p1
    :cond_3
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_5

    sget-object v4, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 565
    .end local p1
    .local v3, x:Ljava/lang/Object;
    :goto_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    .line 577
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    :try_start_9
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq v4, v5, :cond_6

    move v4, v9

    :goto_4
    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v4, 0x1

    .local v3, x:Z
    if-eqz v3, :cond_7

    sget-object v4, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_4

    .line 578
    :goto_5
    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    aput-object v5, v4, v10

    const/16 v5, 0x64

    invoke-static {v5}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 579
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_a
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 580
    :cond_4
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_b
    check-cast v4, Lgnu/lists/CharSeq;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_c
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    move-result v6

    invoke-static {p1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_d
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    move-result v5

    :goto_6
    invoke-static {v4, v6, v5}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 581
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    goto/16 :goto_1

    .line 576
    .end local v3           #x:Z
    .restart local p1
    :cond_5
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    move-object v3, v4

    goto :goto_3

    .end local p1
    .local v3, x:Ljava/lang/Object;
    :cond_6
    move v4, v10

    .line 577
    goto :goto_4

    .local v3, x:Z
    :cond_7
    if-eqz v3, :cond_4

    goto :goto_5

    .line 580
    :cond_8
    const/16 v5, 0x3f

    goto :goto_6

    .end local v3           #x:Z
    :cond_9
    move v4, v10

    .line 582
    goto/16 :goto_2

    :cond_a
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_b

    move v4, v9

    goto/16 :goto_2

    :cond_b
    move v4, v10

    goto/16 :goto_2

    .line 566
    .restart local p1
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-length"

    invoke-direct {v5, v4, v6, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 567
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-length"

    invoke-direct {v5, v4, v6, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 570
    .restart local v2       #lend:Ljava/lang/Object;
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-set!"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v7, "string-set!"

    invoke-direct {v5, v4, v7, v11, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v11, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 573
    .end local v2           #lend:Ljava/lang/Object;
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v5, v4, v7, v8, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 574
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 577
    .end local p1
    .local v3, x:Ljava/lang/Object;
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "x"

    const/4 v8, -0x2

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 579
    .local v3, x:Z
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 580
    :catch_b
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-set!"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_c
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v7, "string-set!"

    invoke-direct {v5, v4, v7, v11, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_d
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-set!"

    invoke-direct {v5, v4, v6, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 564
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
