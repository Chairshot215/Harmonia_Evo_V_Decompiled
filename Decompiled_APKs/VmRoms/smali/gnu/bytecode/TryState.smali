.class public Lgnu/bytecode/TryState;
.super Ljava/lang/Object;
.source "TryState.java"


# instance fields
.field end_label:Lgnu/bytecode/Label;

.field end_try:Lgnu/bytecode/Label;

.field exception:Lgnu/bytecode/Variable;

.field exitCases:Lgnu/bytecode/ExitableBlock;

.field finally_ret_addr:Lgnu/bytecode/Variable;

.field finally_subr:Lgnu/bytecode/Label;

.field previous:Lgnu/bytecode/TryState;

.field savedStack:[Lgnu/bytecode/Variable;

.field savedTypes:[Lgnu/bytecode/Type;

.field saved_result:Lgnu/bytecode/Variable;

.field start_try:Lgnu/bytecode/Label;

.field tryClauseDone:Z

.field try_type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, p0, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    .line 47
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 48
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    .line 49
    return-void
.end method

.method static outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;
    .locals 1
    .parameter "innerTry"
    .parameter "outerTry"

    .prologue
    .line 56
    :goto_0
    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    goto :goto_0

    .line 58
    :cond_1
    return-object p0
.end method
