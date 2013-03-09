.class public Lgnu/expr/FluidLetExp;
.super Lgnu/expr/LetExp;
.source "FluidLetExp.java"


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method private doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V
    .locals 7
    .parameter "decl"
    .parameter "i"
    .parameter "save"
    .parameter "comp"
    .parameter "ctx"

    .prologue
    .line 62
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 65
    .local v6, code:Lgnu/bytecode/CodeAttr;
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v0

    aput-object v0, p3, p2

    .line 66
    invoke-virtual {p1, v6}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 67
    iget-object v0, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, v1, v2, p4, v3}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 70
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 71
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    aget-object v0, v0, p2

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p4, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 73
    sget-object v0, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v1, "setWithSave"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 75
    aget-object v0, p3, p2

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 13
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 21
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 22
    .local v6, code:Lgnu/bytecode/CodeAttr;
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    move-object v8, v11

    .line 25
    .local v8, result_type:Lgnu/bytecode/Type;
    :goto_0
    if-nez v8, :cond_1

    .line 26
    sget-object v10, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 31
    .local v10, ttarg:Lgnu/expr/Target;
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v9

    .line 32
    .local v9, scope:Lgnu/bytecode/Scope;
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 33
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v6, v0, v11}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v5

    .line 34
    .local v5, ctx:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 35
    invoke-virtual {v6, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 36
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    new-array v3, v0, [Lgnu/bytecode/Variable;

    .line 38
    .local v3, save:[Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 39
    .local v1, decl:Lgnu/expr/Declaration;
    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 40
    invoke-virtual {v6, v12, v8}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 41
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1, v10}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 44
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 46
    const/4 v0, 0x2

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, v11, v0, p1, v2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 48
    aget-object v0, v3, v7

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    sget-object v0, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "setRestore"

    invoke-virtual {v0, v2, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 44
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_2

    .line 22
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #save:[Lgnu/bytecode/Variable;
    .end local v5           #ctx:Lgnu/bytecode/Variable;
    .end local v7           #i:I
    .end local v8           #result_type:Lgnu/bytecode/Type;
    .end local v9           #scope:Lgnu/bytecode/Scope;
    .end local v10           #ttarg:Lgnu/expr/Target;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 27
    .restart local v8       #result_type:Lgnu/bytecode/Type;
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v8, v0, :cond_2

    .line 28
    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .restart local v10       #ttarg:Lgnu/expr/Target;
    goto :goto_1

    .line 30
    .end local v10           #ttarg:Lgnu/expr/Target;
    :cond_2
    new-instance v10, Lgnu/expr/StackTarget;

    invoke-direct {v10, v8}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .restart local v10       #ttarg:Lgnu/expr/Target;
    goto :goto_1

    .line 53
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #save:[Lgnu/bytecode/Variable;
    .restart local v5       #ctx:Lgnu/bytecode/Variable;
    .restart local v7       #i:I
    .restart local v9       #scope:Lgnu/bytecode/Scope;
    :cond_3
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 54
    invoke-virtual {p0, v6}, Lgnu/expr/FluidLetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 55
    if-eqz v8, :cond_4

    .line 56
    invoke-virtual {p2, p1, v8}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 57
    :cond_4
    return-void
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 85
    const-string v0, "(FluidLet"

    const-string v1, ")"

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/FluidLetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
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
    .line 80
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
