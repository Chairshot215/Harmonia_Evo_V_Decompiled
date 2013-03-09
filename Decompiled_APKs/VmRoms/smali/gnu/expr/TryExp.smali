.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .parameter "try_clause"
    .parameter "finally_clause"

    .prologue
    .line 28
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 29
    iput-object p1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 30
    iput-object p2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    iget-object v4, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 40
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 44
    .local v2, ex:Ljava/lang/Throwable;
    :try_start_1
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .local v0, clause:Lgnu/expr/CatchClause;
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 48
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 49
    .local v3, typeVal:Lgnu/bytecode/ClassType;
    invoke-virtual {v3, v2}, Lgnu/bytecode/ClassType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    iput-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_1
    :try_start_2
    iget-object v0, v0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    goto :goto_1

    .line 56
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #typeVal:Lgnu/bytecode/ClassType;
    :cond_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v0           #clause:Lgnu/expr/CatchClause;
    .end local v2           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v5, :cond_3

    .line 61
    iget-object v5, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v5, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_3
    throw v4
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 67
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 68
    .local v1, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 70
    .local v2, has_finally:Z
    :goto_0
    instance-of v4, p2, Lgnu/expr/StackTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/ConsumerTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/IgnoreTarget;

    if-nez v4, :cond_0

    instance-of v4, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v4, :cond_2

    .line 73
    :cond_0
    move-object v3, p2

    .line 76
    .local v3, ttarg:Lgnu/expr/Target;
    :goto_1
    instance-of v4, v3, Lgnu/expr/StackTarget;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v2, v4}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 78
    iget-object v4, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 79
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 80
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_3
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0, p1, v3}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_3

    .line 68
    .end local v0           #catch_clause:Lgnu/expr/CatchClause;
    .end local v2           #has_finally:Z
    .end local v3           #ttarg:Lgnu/expr/Target;
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 75
    .restart local v2       #has_finally:Z
    :cond_2
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v3

    .restart local v3       #ttarg:Lgnu/expr/Target;
    goto :goto_1

    .line 76
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 85
    .restart local v0       #catch_clause:Lgnu/expr/CatchClause;
    :cond_4
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_5

    .line 87
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 88
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v4, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 89
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 91
    :cond_5
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 92
    if-eq v3, p2, :cond_6

    .line 93
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 94
    :cond_6
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "ps"

    .prologue
    .line 125
    const-string v1, "(Try"

    const-string v2, ")"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 127
    iget-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 128
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 129
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_0
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 129
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 136
    const-string v1, " finally: "

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 139
    :cond_1
    const-string v1, ")"

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .locals 0
    .parameter "catch_clauses"

    .prologue
    .line 24
    iput-object p1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 25
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 104
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 105
    .local v0, catch_clause:Lgnu/expr/CatchClause;
    :goto_0
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 113
    :cond_1
    return-void
.end method
