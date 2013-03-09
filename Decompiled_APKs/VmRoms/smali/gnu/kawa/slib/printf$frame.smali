.class public Lgnu/kawa/slib/printf$frame;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field n:I

.field proc:Ljava/lang/Object;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x4004

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:106"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1parseError()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, p2, p3, p4, p5}, Lgnu/kawa/slib/printf$frame;->lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda2sign(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "i"
    .parameter "cont"

    .prologue
    .line 45
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_3

    .line 47
    iget-object p0, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    .end local p0
    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    invoke-static {p0, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    .line 48
    .local v1, c:C
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    .line 49
    :cond_0
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, p1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 50
    .end local v1           #c:C
    .end local v2           #x:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 48
    .restart local v1       #c:C
    .restart local v2       #x:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    .line 50
    :cond_2
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v3, p2, p1, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .end local v1           #c:C
    .end local v2           #x:Ljava/lang/Object;
    .restart local p0
    :cond_3
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 47
    .end local p0
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v6, 0x1

    invoke-direct {v4, v3, v5, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v6, 0x2

    invoke-direct {v4, v3, v5, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public lambda3digits(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "i"
    .parameter "cont"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 51
    move-object v1, p1

    .line 53
    .local v1, j:Ljava/lang/Object;
    :goto_0
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_1

    if-nez v2, :cond_2

    .line 52
    :cond_0
    :goto_1
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v2, :cond_0

    .line 56
    :cond_2
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v5, :cond_4

    const-string v3, "0"

    .end local p0
    :goto_2
    invoke-virtual {v4, p2, v1, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 54
    .restart local p0
    :cond_3
    sget-object v5, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_3
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v5, v3}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 56
    :cond_4
    iget-object p0, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    .end local p0
    :try_start_5
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v5

    :try_start_7
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    invoke-static {p0, v5, v3}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    .line 53
    .end local v2           #x:Z
    .restart local p0
    :catch_0
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    const/4 v7, -0x2

    invoke-direct {v5, v3, v6, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 54
    .restart local v2       #x:Z
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 55
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 56
    .end local p0
    :catch_5
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v3, v5, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_6
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    invoke-direct {v4, v3, v5, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_7
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "substring"

    const/4 v6, 0x3

    invoke-direct {v4, v3, v5, v6, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "i"
    .parameter "cont"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 75
    new-instance v3, Lgnu/kawa/slib/printf$frame2;

    invoke-direct {v3}, Lgnu/kawa/slib/printf$frame2;-><init>()V

    iput-object p0, v3, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iput-object p2, v3, Lgnu/kawa/slib/printf$frame2;->cont:Ljava/lang/Object;

    .line 78
    iget-object v3, v3, Lgnu/kawa/slib/printf$frame2;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    move-object p2, v3

    .line 38
    .end local p2
    :goto_0
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/printf$frame;->n:I

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_2

    sget-object v5, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v5, v3}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    :cond_0
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_3
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v4, p1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_4
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    .local v1, tmp:C
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_5

    .line 41
    :cond_1
    :goto_1
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .local p2, cont:Lgnu/expr/ModuleMethod;
    goto :goto_0

    .line 38
    .end local v1           #tmp:C
    .end local p2           #cont:Lgnu/expr/ModuleMethod;
    .local v2, x:Z
    :cond_2
    if-nez v2, :cond_0

    .line 44
    :cond_3
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v3, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v2           #x:Z
    :goto_2
    return-object v3

    .line 40
    .restart local v1       #tmp:C
    .local v2, x:Ljava/lang/Object;
    :cond_4
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 41
    :cond_5
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 40
    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    .line 42
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v3, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 40
    :cond_6
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 43
    :cond_7
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 38
    .end local v1           #tmp:C
    .end local v2           #x:Ljava/lang/Object;
    :catch_0
    move-exception v3

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "x"

    const/4 v7, -0x2

    invoke-direct {v5, v3, v6, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 39
    .local v2, x:Z
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v5, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 40
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v4, v3, v6, v8, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "i"
    .parameter "sgn"
    .parameter "digs"
    .parameter "ex"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 106
    new-instance v3, Lgnu/kawa/slib/printf$frame0;

    invoke-direct {v3}, Lgnu/kawa/slib/printf$frame0;-><init>()V

    iput-object p0, v3, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iput-object p2, v3, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    iput-object p3, v3, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    iput-object p4, v3, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    .line 107
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 108
    iget v2, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    iget-object v4, v3, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    iget-object v5, v3, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    .end local p0
    :goto_0
    return-object v1

    .line 108
    .restart local p0
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    invoke-static {v1, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v1, v2}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 110
    iget-object v1, v3, Lgnu/kawa/slib/printf$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v1}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 116
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_2
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    invoke-static {v1, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    invoke-virtual {v4, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3

    .line 119
    iget-object p0, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    .end local p0
    :try_start_4
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p0}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    .line 120
    iget-object v1, v3, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 121
    iget-object p0, v3, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    :try_start_5
    check-cast p0, Lgnu/math/Complex;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p0}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v3, Lgnu/kawa/slib/printf$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v2}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .restart local p0
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v2, v1, v3, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 116
    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v2, v1, v3, v6, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 119
    .end local p0
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string->number"

    invoke-direct {v2, v1, v3, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 122
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "real-part"

    invoke-direct {v2, v1, v3, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 106
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x4

    iput v0, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
