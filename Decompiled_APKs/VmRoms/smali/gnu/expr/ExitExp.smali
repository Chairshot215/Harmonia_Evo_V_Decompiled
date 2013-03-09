.class public Lgnu/expr/ExitExp;
.super Lgnu/expr/Expression;
.source "ExitExp.java"


# instance fields
.field block:Lgnu/expr/BlockExp;

.field result:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/BlockExp;)V
    .locals 1
    .parameter "block"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 26
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 27
    iput-object p1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 28
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V
    .locals 0
    .parameter "result"
    .parameter "block"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 21
    iput-object p2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lgnu/expr/BlockExitException;

    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/expr/BlockExitException;-><init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V

    throw v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 39
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 40
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v2, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v1, v2

    .line 41
    .local v1, res:Lgnu/expr/Expression;
    :goto_0
    iget-object v2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    iget-object v2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v2, v2, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v2}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 43
    return-void

    .line 40
    .end local v1           #res:Lgnu/expr/Expression;
    :cond_0
    iget-object v2, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    move-object v1, v2

    goto :goto_0
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 4
    .parameter "mapper"

    .prologue
    .line 47
    iget-object v3, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-static {v3, p1}, Lgnu/expr/ExitExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v2

    .line 48
    .local v2, res:Lgnu/expr/Expression;
    if-nez v2, :cond_0

    iget-object v3, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 49
    const/4 v3, 0x0

    .line 54
    :goto_0
    return-object v3

    .line 50
    :cond_0
    iget-object v3, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    invoke-virtual {p1, v3}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, b:Ljava/lang/Object;
    new-instance v1, Lgnu/expr/ExitExp;

    if-nez v0, :cond_1

    iget-object v3, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .end local v0           #b:Ljava/lang/Object;
    :goto_1
    invoke-direct {v1, v2, v3}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V

    .line 53
    .local v1, copy:Lgnu/expr/ExitExp;
    invoke-virtual {p0}, Lgnu/expr/ExitExp;->getFlags()I

    move-result v3

    iput v3, v1, Lgnu/expr/ExitExp;->flags:I

    move-object v3, v1

    .line 54
    goto :goto_0

    .line 51
    .end local v1           #copy:Lgnu/expr/ExitExp;
    .restart local v0       #b:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lgnu/expr/BlockExp;

    move-object v3, v0

    goto :goto_1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 69
    const-string v0, "(Exit"

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 71
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-nez v0, :cond_2

    .line 72
    :cond_0
    const-string v0, "<unknown>"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 78
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 80
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 81
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_0
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
    .line 59
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
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
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 65
    return-void
.end method
