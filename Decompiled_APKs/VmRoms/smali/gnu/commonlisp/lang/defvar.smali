.class public Lgnu/commonlisp/lang/defvar;
.super Lkawa/lang/Syntax;
.source "defvar.java"


# instance fields
.field force:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    iput-boolean p1, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    .line 15
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 11
    .parameter "form"
    .parameter "tr"

    .prologue
    const/4 v10, 0x1

    .line 49
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 50
    .local v3, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 51
    .local v2, name:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 52
    .local v7, value:Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 54
    .local v1, decl:Lgnu/expr/Declaration;
    instance-of v8, v3, Lgnu/lists/Pair;

    if-eqz v8, :cond_0

    .line 56
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v4, v0

    .line 57
    .local v4, p1:Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/expr/Declaration;

    if-eqz v8, :cond_0

    .line 59
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #decl:Lgnu/expr/Declaration;
    check-cast v1, Lgnu/expr/Declaration;

    .line 60
    .restart local v1       #decl:Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 61
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_1

    .line 63
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 64
    .local v5, p2:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    .line 65
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_0

    .line 74
    .end local v2           #name:Ljava/lang/Object;
    .end local v4           #p1:Lgnu/lists/Pair;
    .end local v5           #p2:Lgnu/lists/Pair;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid syntax for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgnu/commonlisp/lang/defvar;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 95
    :goto_1
    return-object v8

    .line 70
    .restart local v2       #name:Ljava/lang/Object;
    .restart local v4       #p1:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_0

    .line 71
    const/4 v2, 0x0

    goto :goto_0

    .line 76
    .end local v2           #name:Ljava/lang/Object;
    .end local v4           #p1:Lgnu/lists/Pair;
    :cond_2
    if-nez v7, :cond_3

    .line 78
    iget-boolean v8, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    if-eqz v8, :cond_7

    .line 79
    sget-object v7, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    .line 83
    :cond_3
    new-instance v6, Lgnu/expr/SetExp;

    invoke-direct {v6, v2, v7}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 84
    .local v6, sexp:Lgnu/expr/SetExp;
    iget-boolean v8, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    if-nez v8, :cond_4

    .line 85
    invoke-virtual {v6, v10}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 86
    :cond_4
    invoke-virtual {v6, v10}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 87
    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {v6, v1}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 90
    iget-object v8, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v8, v8, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 92
    const/4 v7, 0x0

    .line 93
    :cond_5
    invoke-virtual {v1, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_6
    move-object v8, v6

    .line 95
    goto :goto_1

    .line 81
    .end local v6           #sexp:Lgnu/expr/SetExp;
    :cond_7
    new-instance v8, Lgnu/expr/QuoteExp;

    invoke-direct {v8, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v6, 0x1

    .line 20
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    .line 44
    :goto_0
    return v3

    .line 22
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 23
    .local v2, p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, name:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_2

    .line 26
    :cond_1
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 27
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_3

    .line 29
    new-instance v0, Lgnu/expr/Declaration;

    .end local v0           #decl:Lgnu/expr/Declaration;
    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 30
    .restart local v0       #decl:Lgnu/expr/Declaration;
    const-wide/32 v3, 0x10000000

    invoke-virtual {v0, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    invoke-virtual {p3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 35
    :goto_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .line 36
    invoke-static {p1, p0, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 37
    instance-of v3, p3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_2

    .line 39
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 40
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 43
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v6

    .line 44
    goto :goto_0

    .line 34
    .restart local v0       #decl:Lgnu/expr/Declaration;
    :cond_3
    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1
.end method
