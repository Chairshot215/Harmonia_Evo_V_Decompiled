.class public Lgnu/bytecode/ExitableBlock;
.super Ljava/lang/Object;
.source "ExitableBlock.java"


# instance fields
.field code:Lgnu/bytecode/CodeAttr;

.field currentTryState:Lgnu/bytecode/TryState;

.field endLabel:Lgnu/bytecode/Label;

.field initialTryState:Lgnu/bytecode/TryState;

.field nextCase:Lgnu/bytecode/ExitableBlock;

.field outer:Lgnu/bytecode/ExitableBlock;

.field resultType:Lgnu/bytecode/Type;

.field resultVariable:Lgnu/bytecode/Variable;

.field switchCase:I


# direct methods
.method constructor <init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V
    .locals 2
    .parameter "resultType"
    .parameter "code"
    .parameter "runFinallyBlocks"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    .line 48
    iput-object p1, p0, Lgnu/bytecode/ExitableBlock;->resultType:Lgnu/bytecode/Type;

    .line 49
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    .line 50
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 53
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 54
    .local v0, var:Lgnu/bytecode/Variable;
    iput-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    .line 56
    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 57
    iget v1, p2, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    iput v1, p0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    .line 59
    .end local v0           #var:Lgnu/bytecode/Variable;
    :cond_0
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v1, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    .line 60
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v0, v1}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    .line 82
    return-void
.end method

.method exit(Lgnu/bytecode/TryState;)V
    .locals 3
    .parameter "activeTry"

    .prologue
    .line 98
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne p1, v1, :cond_0

    .line 99
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 123
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 103
    .local v0, stack:Lgnu/bytecode/TryState;
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-eq v0, v1, :cond_2

    .line 105
    iget-object v1, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 103
    :cond_1
    iget-object v0, v0, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    goto :goto_1

    .line 111
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 115
    .end local v0           #stack:Lgnu/bytecode/TryState;
    :cond_3
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-nez v1, :cond_4

    .line 116
    invoke-virtual {p0, p1}, Lgnu/bytecode/ExitableBlock;->linkCase(Lgnu/bytecode/TryState;)V

    .line 117
    :cond_4
    iget-object v1, p1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_5

    .line 118
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 119
    :cond_5
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget v2, p0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 120
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 121
    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v2, p1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0
.end method

.method public exitIsGoto()Lgnu/bytecode/Label;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v0, v0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v0, v1}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method finish()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 67
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/ExitableBlock;->resultVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 70
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 71
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->code:Lgnu/bytecode/CodeAttr;

    iget v1, v0, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lgnu/bytecode/CodeAttr;->exitableBlockLevel:I

    .line 73
    :cond_1
    return-void
.end method

.method linkCase(Lgnu/bytecode/TryState;)V
    .locals 1
    .parameter "tryState"

    .prologue
    .line 127
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-eq v0, p1, :cond_1

    .line 129
    iget-object v0, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    iput-object v0, p0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 132
    iput-object p0, p1, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 133
    iput-object p1, p0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 135
    :cond_1
    return-void
.end method
