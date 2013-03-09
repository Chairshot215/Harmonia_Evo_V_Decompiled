.class public Lgnu/expr/IfExp;
.super Lgnu/expr/Expression;
.source "IfExp.java"


# instance fields
.field else_clause:Lgnu/expr/Expression;

.field test:Lgnu/expr/Expression;

.field then_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .parameter "i"
    .parameter "t"
    .parameter "e"

    .prologue
    .line 20
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iput-object p3, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 22
    return-void
.end method

.method public static compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 14
    .parameter "test"
    .parameter "then_clause"
    .parameter "else_clause"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 61
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v9

    .line 62
    .local v9, language:Lgnu/expr/Language;
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 63
    .local v5, code:Lgnu/bytecode/CodeAttr;
    const/4 v8, 0x0

    .line 68
    .local v8, falseLabel:Lgnu/bytecode/Label;
    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v13, v0

    if-eqz v13, :cond_4

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v13, v0

    if-eqz v13, :cond_4

    .line 71
    const/4 v7, 0x1

    .line 72
    .local v7, falseInherited:Z
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v13, v0

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 73
    .local v12, value:Ljava/lang/Object;
    invoke-virtual {v9, v12}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 74
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v8, v13, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 87
    .end local v12           #value:Ljava/lang/Object;
    :goto_0
    if-nez v8, :cond_0

    .line 89
    new-instance v8, Lgnu/bytecode/Label;

    .end local v8           #falseLabel:Lgnu/bytecode/Label;
    invoke-direct {v8, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 94
    .restart local v8       #falseLabel:Lgnu/bytecode/Label;
    :cond_0
    if-ne p0, p1, :cond_6

    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v13, v0

    if-eqz v13, :cond_6

    instance-of v13, p1, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_6

    .line 97
    const/4 v10, 0x1

    .line 98
    .local v10, trueInherited:Z
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v11, v13, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 105
    .local v11, trueLabel:Lgnu/bytecode/Label;
    :goto_1
    new-instance v6, Lgnu/expr/ConditionalTarget;

    invoke-direct {v6, v11, v8, v9}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 107
    .local v6, ctarget:Lgnu/expr/ConditionalTarget;
    if-eqz v10, :cond_1

    .line 108
    const/4 v13, 0x0

    iput-boolean v13, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 109
    :cond_1
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitIfThen()V

    .line 111
    if-nez v10, :cond_2

    .line 113
    invoke-virtual {v11, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 117
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 118
    .local v4, callContextSave:Lgnu/bytecode/Variable;
    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    move-object v0, v4

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 121
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :cond_2
    if-nez v7, :cond_8

    .line 123
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 124
    invoke-virtual {v8, v5}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 126
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 127
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    if-nez p2, :cond_7

    .line 128
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p3

    move-object v1, v13

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 131
    :goto_2
    move-object v0, v4

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 135
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :goto_3
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 136
    return-void

    .line 76
    .end local v6           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v10           #trueInherited:Z
    .end local v11           #trueLabel:Lgnu/bytecode/Label;
    .restart local v12       #value:Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p4

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v13, v0

    iget-object v8, v13, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_0

    .line 78
    .end local v7           #falseInherited:Z
    .end local v12           #value:Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ExitExp;

    move v13, v0

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ExitExp;

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_5

    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ExitExp;

    move-object v13, v0

    iget-object v3, v13, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    .local v3, block:Lgnu/expr/BlockExp;
    iget-object v13, v3, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    instance-of v13, v13, Lgnu/expr/IgnoreTarget;

    if-eqz v13, :cond_5

    iget-object v13, v3, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v13}, Lgnu/bytecode/ExitableBlock;->exitIsGoto()Lgnu/bytecode/Label;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 83
    const/4 v7, 0x1

    .restart local v7       #falseInherited:Z
    goto/16 :goto_0

    .line 86
    .end local v3           #block:Lgnu/expr/BlockExp;
    .end local v7           #falseInherited:Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #falseInherited:Z
    goto/16 :goto_0

    .line 102
    :cond_6
    const/4 v10, 0x0

    .line 103
    .restart local v10       #trueInherited:Z
    new-instance v11, Lgnu/bytecode/Label;

    invoke-direct {v11, v5}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .restart local v11       #trueLabel:Lgnu/bytecode/Label;
    goto/16 :goto_1

    .line 130
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v6       #ctarget:Lgnu/expr/ConditionalTarget;
    :cond_7
    invoke-virtual/range {p2 .. p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    .line 134
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    :cond_8
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_3
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
    .line 37
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 52
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :goto_0
    invoke-static {v0, v1, v2, p1, p2}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    return-void

    .line 52
    :cond_0
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public getElseClause()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getThenClause()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 154
    iget-object v2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 155
    .local v0, t1:Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v1, v2

    .line 156
    .local v1, t2:Lgnu/bytecode/Type;
    :goto_0
    invoke-static {v0, v1}, Lgnu/expr/Language;->unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2

    .line 155
    .end local v1           #t2:Lgnu/bytecode/Type;
    :cond_0
    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v1, v2

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
    .locals 3
    .parameter "out"

    .prologue
    const/4 v2, 0x0

    .line 161
    const-string v0, "(If "

    const-string v1, ")"

    invoke-virtual {p1, v0, v2, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v2}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 163
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 164
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 165
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 166
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 169
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 171
    :cond_0
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method select(Z)Lgnu/expr/Expression;
    .locals 1
    .parameter "truth"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v0, :cond_1

    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

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
    .line 140
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 145
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 146
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 148
    :cond_0
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 150
    :cond_1
    return-void
.end method
