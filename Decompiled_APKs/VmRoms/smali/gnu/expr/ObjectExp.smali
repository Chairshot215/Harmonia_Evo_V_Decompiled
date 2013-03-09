.class public Lgnu/expr/ObjectExp;
.super Lgnu/expr/ClassExp;
.source "ObjectExp.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 21
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 22
    .local v2, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 23
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 24
    iget-object v4, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-static {v4, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 25
    .local v3, init:Lgnu/bytecode/Method;
    iget-object v4, p0, Lgnu/expr/ObjectExp;->closureEnvField:Lgnu/bytecode/Field;

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 28
    .local v0, caller:Lgnu/expr/LambdaExp;
    sget v4, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    iget-object v4, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v1, v4

    .line 31
    .local v1, closureEnv:Lgnu/bytecode/Variable;
    :goto_0
    if-nez v1, :cond_3

    .line 32
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 36
    .end local v0           #caller:Lgnu/expr/LambdaExp;
    .end local v1           #closureEnv:Lgnu/bytecode/Variable;
    :cond_0
    :goto_1
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 38
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 39
    return-void

    .line 28
    .restart local v0       #caller:Lgnu/expr/LambdaExp;
    :cond_1
    iget-object v4, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v1, v4

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v1, v4

    goto :goto_0

    .line 34
    .restart local v1       #closureEnv:Lgnu/bytecode/Variable;
    :cond_3
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
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
    .line 15
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
