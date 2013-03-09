.class public Lgnu/kawa/slib/genwrite$frame;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field display$Qu:Ljava/lang/Object;

.field output:Ljava/lang/Object;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "l"

    .prologue
    .line 8
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    .local v0, head:Ljava/lang/Object;
    .local v1, tail:Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    .line 9
    :cond_0
    :goto_0
    move-object p0, v1

    invoke-static {p0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    .local v2, x:Z
    if-eqz v2, :cond_6

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local v2           #x:Z
    :goto_1
    return-object v3

    .line 11
    .local v2, x:Ljava/lang/Object;
    :cond_1
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    .line 9
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 11
    :cond_3
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_4
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 9
    .local v2, x:Z
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "l"

    .prologue
    .line 15
    sget-object v0, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "l"

    .prologue
    .line 18
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .local v0, head:Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 21
    const-string v1, "\'"

    .line 24
    :goto_0
    return-object v1

    .line 21
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 22
    const-string v1, "`"

    goto :goto_0

    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 23
    const-string v1, ","

    goto :goto_0

    :cond_2
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 20
    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit33:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3

    .line 24
    const-string v1, ",@"

    goto :goto_0

    :cond_3
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method


# virtual methods
.method public lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "str"
    .parameter "col"

    .prologue
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_1

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame;->output:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, x:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0           #x:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #x:Ljava/lang/Object;
    .restart local p1
    :cond_0
    move-object v1, v0

    goto :goto_0

    .end local v0           #x:Ljava/lang/Object;
    :cond_1
    move-object v1, p2

    goto :goto_0

    .restart local v0       #x:Ljava/lang/Object;
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "obj"
    .parameter "col"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 31
    move-object v1, p1

    .local v1, expr:Ljava/lang/Object;
    move-object v0, p0

    .line 32
    .local v0, closureEnv:Lgnu/kawa/slib/genwrite$frame;
    invoke-static {v1}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    .line 33
    invoke-static {v1}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .end local v0           #closureEnv:Lgnu/kawa/slib/genwrite$frame;
    .end local v1           #expr:Ljava/lang/Object;
    .end local p1
    :cond_0
    :goto_0
    return-object v4

    .line 36
    .restart local v0       #closureEnv:Lgnu/kawa/slib/genwrite$frame;
    .restart local v1       #expr:Ljava/lang/Object;
    .restart local p1
    :cond_1
    move-object v2, v1

    .local v2, l:Ljava/lang/Object;
    move-object v4, p2

    move-object v5, v2

    .end local v0           #closureEnv:Lgnu/kawa/slib/genwrite$frame;
    .end local v1           #expr:Ljava/lang/Object;
    .end local v2           #l:Ljava/lang/Object;
    .end local p1
    :goto_1
    move-object v0, p0

    .line 37
    .restart local v0       #closureEnv:Lgnu/kawa/slib/genwrite$frame;
    invoke-static {v5}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 38
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_2

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {p0, v6, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 40
    .restart local v2       #l:Ljava/lang/Object;
    :cond_2
    :goto_2
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_0

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {p0, v6, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local v2           #l:Ljava/lang/Object;
    .local v3, l:Ljava/lang/Object;
    move-object v4, p2

    move-object v2, v3

    .end local v3           #l:Ljava/lang/Object;
    .restart local v2       #l:Ljava/lang/Object;
    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    const-string v5, ")"

    invoke-virtual {p0, v5, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 44
    :cond_4
    const-string v5, ")"

    const-string v6, " . "

    invoke-virtual {p0, v6, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 45
    .end local v2           #l:Ljava/lang/Object;
    :cond_5
    const-string v5, "()"

    invoke-virtual {p0, v5, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .end local v0           #closureEnv:Lgnu/kawa/slib/genwrite$frame;
    .restart local p1
    :cond_6
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, p2

    move-object v5, p1

    .line 48
    goto :goto_1

    :cond_7
    invoke-static {p1}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    :try_start_0
    check-cast p1, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    invoke-static {p1}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {p0, v5, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto/16 :goto_1

    .line 50
    .restart local p1
    :cond_8
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_9

    const-string v5, "~a"

    :goto_3
    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v7, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    const-string v5, "~s"

    goto :goto_3

    .line 49
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "vector->list"

    invoke-direct {v5, v4, v6, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method
