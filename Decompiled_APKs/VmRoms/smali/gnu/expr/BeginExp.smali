.class public Lgnu/expr/BeginExp;
.super Lgnu/expr/Expression;
.source "BeginExp.java"


# instance fields
.field compileOptions:Ljava/util/Vector;

.field exps:[Lgnu/expr/Expression;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 3
    .parameter "exp0"
    .parameter "exp1"

    .prologue
    const/4 v2, 0x2

    .line 40
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 41
    new-array v0, v2, [Lgnu/expr/Expression;

    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 42
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 43
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 44
    iput v2, p0, Lgnu/expr/BeginExp;->length:I

    .line 45
    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 37
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v0, p1

    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method public static final canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 52
    instance-of v3, p0, Lgnu/expr/BeginExp;

    if-eqz v3, :cond_2

    .line 54
    move-object v0, p0

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v1, v0

    .line 55
    .local v1, bexp:Lgnu/expr/BeginExp;
    iget-object v3, v1, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v3, :cond_0

    move-object v3, p0

    .line 63
    .end local v1           #bexp:Lgnu/expr/BeginExp;
    :goto_0
    return-object v3

    .line 57
    .restart local v1       #bexp:Lgnu/expr/BeginExp;
    :cond_0
    iget v2, v1, Lgnu/expr/BeginExp;->length:I

    .line 58
    .local v2, len:I
    if-nez v2, :cond_1

    .line 59
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 60
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 61
    iget-object v3, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .end local v1           #bexp:Lgnu/expr/BeginExp;
    .end local v2           #len:I
    :cond_2
    move-object v3, p0

    .line 63
    goto :goto_0
.end method

.method public static final canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exps"

    .prologue
    .line 68
    array-length v0, p0

    .line 69
    .local v0, len:I
    if-nez v0, :cond_0

    .line 70
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 73
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Lgnu/expr/BeginExp;

    invoke-direct {v1, p0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Lgnu/expr/Expression;)V
    .locals 4
    .parameter "exp"

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    if-nez v1, :cond_0

    .line 79
    const/16 v1, 0x8

    new-array v1, v1, [Lgnu/expr/Expression;

    iput-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 80
    :cond_0
    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 82
    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 83
    .local v0, ex:[Lgnu/expr/Expression;
    iget-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v2, p0, Lgnu/expr/BeginExp;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 86
    .end local v0           #ex:[Lgnu/expr/Expression;
    :cond_1
    iget-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v2, p0, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/BeginExp;->length:I

    aput-object p1, v1, v2

    .line 87
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 107
    iget v2, p0, Lgnu/expr/BeginExp;->length:I

    .line 109
    .local v2, n:I
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 110
    .local v0, consumerSave:Lgnu/lists/Consumer;
    sget-object v3, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x1

    sub-int v3, v2, v3

    if-ge v1, v3, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iput-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 120
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v3

    iput-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v3
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 140
    :try_start_0
    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    .line 141
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    .line 149
    return-void

    .line 147
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    throw v2
.end method

.method public final getExpressionCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    return v0
.end method

.method public final getExpressions()[Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public popOptions(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 131
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 133
    :cond_0
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 8
    .parameter "out"

    .prologue
    const/4 v7, 0x2

    .line 171
    const-string v5, "(Begin"

    const-string v6, ")"

    invoke-virtual {p1, v5, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 173
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 174
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 177
    const-string v5, "(CompileOptions"

    const-string v6, ")"

    invoke-virtual {p1, v5, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 179
    .local v3, sizeOptions:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 181
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, key:Ljava/lang/Object;
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 183
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 184
    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p1, v5, v6, v7}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 186
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 187
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 188
    const-string v5, ""

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 190
    .end local v1           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_0
    const-string v5, ")"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 192
    .end local v0           #i:I
    .end local v3           #sizeOptions:I
    :cond_1
    iget v2, p0, Lgnu/expr/BeginExp;->length:I

    .line 193
    .local v2, n:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 195
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 196
    iget-object v5, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_2
    const-string v5, ")"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public pushOptions(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 125
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setCompileOptions(Ljava/util/Vector;)V
    .locals 0
    .parameter "options"

    .prologue
    .line 100
    iput-object p1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    .line 101
    return-void
.end method

.method public final setExpressions([Lgnu/expr/Expression;)V
    .locals 1
    .parameter "exps"

    .prologue
    .line 94
    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 95
    array-length v0, p1

    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 96
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
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
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v0}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 156
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 160
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    throw v0
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
    .line 166
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 167
    return-void
.end method
