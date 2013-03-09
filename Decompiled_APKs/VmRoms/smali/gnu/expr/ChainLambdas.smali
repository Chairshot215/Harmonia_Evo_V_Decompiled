.class public Lgnu/expr/ChainLambdas;
.super Lgnu/expr/ExpExpVisitor;
.source "ChainLambdas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Lgnu/expr/ScopeExp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    return-void
.end method

.method public static chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 13
    new-instance v0, Lgnu/expr/ChainLambdas;

    invoke-direct {v0}, Lgnu/expr/ChainLambdas;-><init>()V

    .line 14
    .local v0, visitor:Lgnu/expr/ChainLambdas;
    invoke-virtual {v0, p1}, Lgnu/expr/ChainLambdas;->setContext(Lgnu/expr/Compilation;)V

    .line 15
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ChainLambdas;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method protected visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "scope"

    .prologue
    .line 63
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 64
    .local v0, parent:Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/ClassExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 67
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    .line 72
    return-object p1
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"
    .parameter "scope"

    .prologue
    .line 30
    iget-object v2, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    .line 31
    .local v2, parent:Lgnu/expr/LambdaExp;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lgnu/expr/ClassExp;

    if-nez v4, :cond_0

    .line 33
    iget-object v4, v2, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v4, p1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 34
    iput-object p1, v2, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 37
    :cond_0
    iput-object p2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 38
    const/4 v4, 0x0

    iput-object v4, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 39
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 43
    const/4 v3, 0x0

    .local v3, prev:Lgnu/expr/LambdaExp;
    iget-object v0, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 44
    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 47
    .local v1, next:Lgnu/expr/LambdaExp;
    iput-object v3, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 48
    move-object v3, v0

    .line 49
    move-object v0, v1

    .line 50
    goto :goto_0

    .line 51
    .end local v1           #next:Lgnu/expr/LambdaExp;
    :cond_1
    iput-object v3, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 53
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v4, :cond_2

    .line 54
    iget-object v4, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 55
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 56
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->mustCompile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    iget-object v4, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 58
    :cond_3
    return-object p1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "scope"

    .prologue
    .line 20
    iput-object p2, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 21
    invoke-virtual {p1, p0, p1}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->setIndexes()V

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 25
    :cond_0
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
