.class Lgnu/kawa/functions/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x1

    .line 102
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 103
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 104
    .local v1, args:[Lgnu/expr/Expression;
    array-length v4, v1

    .line 105
    .local v4, nargs:I
    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v7, v7, Lgnu/expr/IgnoreTarget;

    if-nez v7, :cond_0

    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v7, v7, Lgnu/expr/ConsumerTarget;

    if-eqz v7, :cond_2

    :cond_0
    move v5, v8

    .line 107
    .local v5, noStack:Z
    :goto_0
    if-eqz v5, :cond_3

    const/4 v7, 0x0

    move-object v6, v7

    .line 108
    .local v6, typeNeeded:Lgnu/bytecode/Type;
    :goto_1
    if-nez v5, :cond_1

    if-ne v4, v8, :cond_4

    .line 110
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 111
    aget-object v7, v1, v3

    iget-object v8, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v7, p2, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    .end local v3           #i:I
    .end local v5           #noStack:Z
    .end local v6           #typeNeeded:Lgnu/bytecode/Type;
    :cond_2
    const/4 v7, 0x0

    move v5, v7

    goto :goto_0

    .line 107
    .restart local v5       #noStack:Z
    :cond_3
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    move-object v6, v7

    goto :goto_1

    .line 115
    .restart local v6       #typeNeeded:Lgnu/bytecode/Type;
    :cond_4
    sget-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    .line 116
    .local v0, app:Lgnu/kawa/functions/AppendValues;
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-direct {v7, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iget-object v8, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v0, v7, p2, v8}, Lgnu/kawa/functions/AppendValues;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 118
    .end local v0           #app:Lgnu/kawa/functions/AppendValues;
    :cond_5
    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v7}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 119
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 123
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
