.class public Lgnu/expr/ResolveNames;
.super Lgnu/expr/ExpExpVisitor;
.source "ResolveNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected lookup:Lgnu/expr/NameLookup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->setContext(Lgnu/expr/Compilation;)V

    .line 20
    iget-object v0, p1, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    iput-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    .line 21
    return-void
.end method


# virtual methods
.method public lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 1
    .parameter "exp"
    .parameter "symbol"
    .parameter "function"

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p2, p3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method protected push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 42
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 2
    .parameter "exp"

    .prologue
    .line 25
    iget-object v1, p0, Lgnu/expr/ResolveNames;->comp:Lgnu/expr/Compilation;

    invoke-static {v1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 28
    .local v0, saveComp:Lgnu/expr/Compilation;
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lgnu/expr/ModuleExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 37
    return-void

    .line 33
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw v1
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 56
    invoke-virtual {p1, p0, p2}, Lgnu/expr/LetExp;->visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 58
    iget-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/ResolveNames;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    iput-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 59
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 60
    return-object p1
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 70
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 71
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    :cond_0
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 47
    invoke-virtual {p0, p1}, Lgnu/expr/ResolveNames;->push(Lgnu/expr/ScopeExp;)V

    .line 48
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lgnu/expr/ResolveNames;->lookup:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 50
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "ignored"

    .prologue
    .line 82
    iget-object v1, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lgnu/expr/ResolveNames;->lookup(Lgnu/expr/Expression;Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 85
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 87
    :cond_0
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 89
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    return-object p0
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ResolveNames;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
