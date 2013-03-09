.class public Lgnu/commonlisp/lang/defun;
.super Lkawa/lang/Syntax;
.source "defun.java"


# instance fields
.field lambdaSyntax:Lkawa/lang/Lambda;


# direct methods
.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0
    .parameter "lambdaSyntax"

    .prologue
    .line 17
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    .line 19
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 16
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .line 50
    .local v10, obj:Ljava/lang/Object;
    const/4 v9, 0x0

    .line 51
    .local v9, name:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 52
    .local v15, value:Lgnu/expr/Expression;
    const/4 v8, 0x0

    .line 54
    .local v8, decl:Lgnu/expr/Declaration;
    instance-of v2, v10, Lgnu/lists/Pair;

    if-eqz v2, :cond_6

    .line 56
    move-object v0, v10

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 57
    .local v11, p1:Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    .line 59
    .local v12, p1_car:Ljava/lang/Object;
    instance-of v2, v12, Lgnu/mapping/Symbol;

    if-nez v2, :cond_0

    instance-of v2, v12, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 61
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 68
    .end local v9           #name:Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz v9, :cond_6

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_6

    .line 70
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    .line 71
    .local v13, p2:Lgnu/lists/Pair;
    new-instance v3, Lgnu/expr/LambdaExp;

    invoke-direct {v3}, Lgnu/expr/LambdaExp;-><init>()V

    .line 72
    .local v3, lexp:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    move-object v2, v0

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 73
    invoke-virtual {v3, v9}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 74
    instance-of v2, v13, Lgnu/lists/PairWithPosition;

    if-eqz v2, :cond_2

    .line 75
    check-cast v13, Lgnu/lists/PairWithPosition;

    .end local v13           #p2:Lgnu/lists/Pair;
    invoke-virtual {v3, v13}, Lgnu/expr/LambdaExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 76
    :cond_2
    move-object v15, v3

    .line 77
    new-instance v14, Lgnu/expr/SetExp;

    invoke-direct {v14, v9, v15}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 78
    .local v14, sexp:Lgnu/expr/SetExp;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 80
    if-eqz v8, :cond_4

    .line 82
    invoke-virtual {v14, v8}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 83
    iget-object v2, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    const/4 v15, 0x0

    .line 85
    :cond_3
    invoke-virtual {v8, v15}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_4
    move-object v2, v14

    .line 90
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    .end local v11           #p1:Lgnu/lists/Pair;
    .end local v12           #p1_car:Ljava/lang/Object;
    .end local v14           #sexp:Lgnu/expr/SetExp;
    :goto_1
    return-object v2

    .line 63
    .restart local v9       #name:Ljava/lang/Object;
    .restart local v11       #p1:Lgnu/lists/Pair;
    .restart local v12       #p1_car:Ljava/lang/Object;
    :cond_5
    instance-of v2, v12, Lgnu/expr/Declaration;

    if-eqz v2, :cond_1

    .line 65
    move-object v0, v12

    check-cast v0, Lgnu/expr/Declaration;

    move-object v8, v0

    .line 66
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 90
    .end local v9           #name:Ljava/lang/Object;
    .end local v11           #p1:Lgnu/lists/Pair;
    .end local v12           #p1_car:Ljava/lang/Object;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid syntax for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgnu/commonlisp/lang/defun;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

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

    .line 25
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .local v1, p:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-nez v3, :cond_1

    .line 28
    .end local v1           #p:Lgnu/lists/Pair;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    .line 44
    :goto_0
    return v3

    .line 29
    .restart local v1       #p:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 30
    .local v2, sym:Ljava/lang/Object;
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 31
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_3

    .line 33
    new-instance v0, Lgnu/expr/Declaration;

    .end local v0           #decl:Lgnu/expr/Declaration;
    invoke-direct {v0, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 34
    .restart local v0       #decl:Lgnu/expr/Declaration;
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 35
    invoke-virtual {p3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 40
    :goto_1
    instance-of v3, p3, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 42
    :cond_2
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {p1, p0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v6

    .line 44
    goto :goto_0

    .line 38
    :cond_3
    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1
.end method
