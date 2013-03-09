.class public Lgnu/commonlisp/lang/setq;
.super Lkawa/lang/Syntax;
.source "setq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 10
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 18
    .local v2, obj:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 19
    .local v4, results:Ljava/util/Vector;
    :goto_0
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v9, :cond_7

    .line 21
    instance-of v9, v2, Lgnu/lists/Pair;

    if-nez v9, :cond_0

    .line 22
    const-string v9, "invalid syntax for setq"

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 54
    :goto_1
    return-object v9

    .line 23
    :cond_0
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 24
    .local v3, pair:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 26
    .local v7, sym:Ljava/lang/Object;
    instance-of v9, v7, Lgnu/mapping/Symbol;

    if-nez v9, :cond_1

    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 27
    :cond_1
    move-object v1, v7

    .line 32
    :goto_2
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 33
    instance-of v9, v2, Lgnu/lists/Pair;

    if-nez v9, :cond_4

    .line 34
    const-string v9, "wrong number of arguments for setq"

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_1

    .line 28
    :cond_2
    sget-object v9, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    if-ne v7, v9, :cond_3

    .line 29
    const-string v1, "nil"

    .local v1, name:Ljava/lang/String;
    goto :goto_2

    .line 31
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    const-string v9, "invalid variable name in setq"

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_1

    .line 35
    :cond_4
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 36
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    .line 37
    .local v8, value:Lgnu/expr/Expression;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 38
    new-instance v5, Lgnu/expr/SetExp;

    invoke-direct {v5, v1, v8}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 39
    .local v5, sexp:Lgnu/expr/SetExp;
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lgnu/expr/SetExp;->setFlag(I)V

    .line 40
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v9, :cond_5

    .line 42
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lgnu/expr/SetExp;->setHasValue(Z)V

    .line 43
    if-nez v4, :cond_5

    move-object v9, v5

    .line 44
    goto :goto_1

    .line 46
    :cond_5
    if-nez v4, :cond_6

    .line 47
    new-instance v4, Ljava/util/Vector;

    .end local v4           #results:Ljava/util/Vector;
    const/16 v9, 0xa

    invoke-direct {v4, v9}, Ljava/util/Vector;-><init>(I)V

    .line 48
    .restart local v4       #results:Ljava/util/Vector;
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v3           #pair:Lgnu/lists/Pair;
    .end local v5           #sexp:Lgnu/expr/SetExp;
    .end local v7           #sym:Ljava/lang/Object;
    .end local v8           #value:Lgnu/expr/Expression;
    :cond_7
    if-nez v4, :cond_8

    .line 51
    sget-object v9, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    goto :goto_1

    .line 52
    :cond_8
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v6, v9, [Lgnu/expr/Expression;

    .line 53
    .local v6, stmts:[Lgnu/expr/Expression;
    invoke-virtual {v4, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 54
    new-instance v9, Lgnu/expr/BeginExp;

    invoke-direct {v9, v6}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    goto :goto_1
.end method
