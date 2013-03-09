.class public Lgnu/bytecode/LocalVarsAttr;
.super Lgnu/bytecode/Attribute;
.source "LocalVarsAttr.java"


# instance fields
.field public current_scope:Lgnu/bytecode/Scope;

.field private method:Lgnu/bytecode/Method;

.field parameter_scope:Lgnu/bytecode/Scope;

.field used:[Lgnu/bytecode/Variable;


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 23
    const-string v0, "LocalVariableTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 25
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    iput-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 32
    const-string v1, "LocalVariableTable"

    invoke-direct {p0, v1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 34
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    .line 35
    iput-object p0, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 36
    return-void
.end method


# virtual methods
.method public allVars()Lgnu/bytecode/VarEnumerator;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lgnu/bytecode/VarEnumerator;

    iget-object v1, p0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-direct {v0, v1}, Lgnu/bytecode/VarEnumerator;-><init>(Lgnu/bytecode/Scope;)V

    return-object v0
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 4
    .parameter "cl"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v1

    .line 110
    .local v1, vars:Lgnu/bytecode/VarEnumerator;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .local v0, var:Lgnu/bytecode/Variable;
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    iget v2, v0, Lgnu/bytecode/Variable;->name_index:I

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v2, v0, Lgnu/bytecode/Variable;->name_index:I

    .line 116
    :cond_1
    iget v2, v0, Lgnu/bytecode/Variable;->signature_index:I

    if-nez v2, :cond_0

    .line 117
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v2, v0, Lgnu/bytecode/Variable;->signature_index:I

    goto :goto_0

    .line 121
    :cond_2
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 6
    .parameter "scope"

    .prologue
    .line 46
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {p1, v2}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 47
    iput-object p1, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 48
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 49
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v1

    .local v1, var:Lgnu/bytecode/Variable;
    :goto_0
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->isAssigned()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 56
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aput-object v1, v2, v3

    goto :goto_1

    .line 57
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v3, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v2, v2, v3

    if-eq v2, v1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent local variable assignments for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    iget v5, v1, Lgnu/bytecode/Variable;->offset:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    return-void
.end method

.method public final getCount()I
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, local_variable_count:I
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v2

    .line 91
    .local v2, vars:Lgnu/bytecode/VarEnumerator;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v1

    .local v1, var:Lgnu/bytecode/Variable;
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return v0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v1

    .line 78
    .local v1, vars:Lgnu/bytecode/VarEnumerator;
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .local v0, var:Lgnu/bytecode/Variable;
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 83
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public preserveVariablesUpto(Lgnu/bytecode/Scope;)V
    .locals 2
    .parameter "scope"

    .prologue
    .line 70
    iget-object v0, p0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .local v0, cur:Lgnu/bytecode/Scope;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/Scope;->preserved:Z

    .line 70
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .parameter "dst"

    .prologue
    .line 147
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v4

    .line 148
    .local v4, vars:Lgnu/bytecode/VarEnumerator;
    const-string v5, "Attribute \""

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v5, "\", length:"

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getLength()I

    move-result v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 152
    const-string v5, ", count: "

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 156
    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v3

    .local v3, var:Lgnu/bytecode/Variable;
    if-eqz v3, :cond_3

    .line 158
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 160
    const-string v5, "  slot#"

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    iget v5, v3, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 162
    const-string v5, ": name: "

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 163
    iget v5, v3, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 165
    const-string v5, ", type: "

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    iget v5, v3, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 167
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 168
    const-string v5, " (pc: "

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v1, v3, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 171
    .local v1, scope:Lgnu/bytecode/Scope;
    if-eqz v1, :cond_1

    iget-object v5, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v2, v5, Lgnu/bytecode/Label;->position:I

    .local v2, start_pc:I
    if-ltz v2, :cond_1

    iget-object v5, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v0, v5, Lgnu/bytecode/Label;->position:I

    .local v0, end_pc:I
    if-gez v0, :cond_2

    .line 174
    .end local v0           #end_pc:I
    .end local v2           #start_pc:I
    :cond_1
    const-string v5, "unknown"

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 181
    :goto_1
    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_0

    .line 177
    .restart local v0       #end_pc:I
    .restart local v2       #start_pc:I
    :cond_2
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 178
    const-string v5, " length: "

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 179
    sub-int v5, v0, v2

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_1

    .line 184
    .end local v0           #end_pc:I
    .end local v1           #scope:Lgnu/bytecode/Scope;
    .end local v2           #start_pc:I
    :cond_3
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->allVars()Lgnu/bytecode/VarEnumerator;

    move-result-object v4

    .line 127
    .local v4, vars:Lgnu/bytecode/VarEnumerator;
    invoke-virtual {p0}, Lgnu/bytecode/LocalVarsAttr;->getCount()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->reset()V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Lgnu/bytecode/VarEnumerator;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v3

    .local v3, var:Lgnu/bytecode/Variable;
    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->shouldEmit()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    iget-object v1, v3, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 134
    .local v1, scope:Lgnu/bytecode/Scope;
    iget-object v5, v1, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v2, v5, Lgnu/bytecode/Label;->position:I

    .line 135
    .local v2, start_pc:I
    iget-object v5, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v0, v5, Lgnu/bytecode/Label;->position:I

    .line 136
    .local v0, end_pc:I
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 137
    sub-int v5, v0, v2

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 138
    iget v5, v3, Lgnu/bytecode/Variable;->name_index:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 139
    iget v5, v3, Lgnu/bytecode/Variable;->signature_index:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 140
    iget v5, v3, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 143
    .end local v0           #end_pc:I
    .end local v1           #scope:Lgnu/bytecode/Scope;
    .end local v2           #start_pc:I
    :cond_1
    return-void
.end method
