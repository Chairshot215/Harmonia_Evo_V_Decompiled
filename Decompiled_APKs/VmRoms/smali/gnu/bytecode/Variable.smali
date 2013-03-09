.class public Lgnu/bytecode/Variable;
.super Lgnu/bytecode/Location;
.source "Variable.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final LIVE_FLAG:I = 0x4

.field private static final PARAMETER_FLAG:I = 0x2

.field private static final SIMPLE_FLAG:I = 0x1

.field static final UNASSIGNED:I = -0x1


# instance fields
.field private flags:I

.field next:Lgnu/bytecode/Variable;

.field offset:I

.field scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 27
    invoke-virtual {p0, p1}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    .line 31
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 32
    invoke-virtual {p0, p1}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 34
    return-void
.end method

.method private setFlag(ZI)V
    .locals 2
    .parameter "setting"
    .parameter "flag"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    or-int/2addr v0, p2

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public allocateLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 124
    iget v1, p0, Lgnu/bytecode/Variable;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 129
    :cond_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final dead()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 6
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 135
    iget v3, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lgnu/bytecode/Variable;->flags:I

    .line 136
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    move v1, v3

    .line 137
    .local v1, size:I
    :goto_0
    iget v3, p0, Lgnu/bytecode/Variable;->offset:I

    add-int v2, v3, v1

    .local v2, vnum:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lgnu/bytecode/Variable;->offset:I

    if-lt v2, v3, :cond_2

    .line 139
    iget-object v3, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aput-object v5, v3, v2

    .line 140
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 141
    .local v0, local_types:[Lgnu/bytecode/Type;
    if-eqz v0, :cond_0

    .line 142
    aput-object v5, v0, v2

    goto :goto_1

    .line 136
    .end local v0           #local_types:[Lgnu/bytecode/Type;
    .end local v1           #size:I
    .end local v2           #vnum:I
    :cond_1
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 144
    .restart local v1       #size:I
    .restart local v2       #vnum:I
    :cond_2
    return-void
.end method

.method public final hasMoreElements()Z
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAssigned()Z
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lgnu/bytecode/Variable;->offset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isParameter()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSimple()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Variable enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public reserveLocal(ILgnu/bytecode/CodeAttr;)Z
    .locals 6
    .parameter "varIndex"
    .parameter "code"

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v2

    .line 91
    .local v2, size:I
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    add-int/lit8 v4, v2, 0x14

    new-array v4, v4, [Lgnu/bytecode/Variable;

    iput-object v4, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    .line 98
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 100
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    add-int v4, p1, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    move v3, v5

    .line 116
    :goto_2
    return v3

    .line 93
    .end local v0           #j:I
    :cond_1
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v4, v4, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 94
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    new-array v1, v3, [Lgnu/bytecode/Variable;

    .line 95
    .local v1, new_locals:[Lgnu/bytecode/Variable;
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iput-object v1, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    goto :goto_0

    .line 98
    .end local v1           #new_locals:[Lgnu/bytecode/Variable;
    .restart local v0       #j:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 104
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    add-int v4, p1, v0

    aput-object p0, v3, v4

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_4
    add-int v3, p1, v2

    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 106
    add-int v3, p1, v2

    invoke-virtual {p2, v3}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 107
    :cond_5
    iput p1, p0, Lgnu/bytecode/Variable;->offset:I

    .line 108
    iget v3, p0, Lgnu/bytecode/Variable;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lgnu/bytecode/Variable;->flags:I

    .line 109
    iget v3, p0, Lgnu/bytecode/Variable;->offset:I

    if-nez v3, :cond_6

    .line 113
    const-string v3, "<init>"

    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v3, v3, v5

    invoke-virtual {p0, v3}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 116
    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public final setParameter(Z)V
    .locals 1
    .parameter "parameter"

    .prologue
    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    .line 83
    return-void
.end method

.method public final setSimple(Z)V
    .locals 1
    .parameter "simple"

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    return-void
.end method

.method shouldEmit()Z
    .locals 5

    .prologue
    .line 148
    iget-object v2, p0, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 151
    .local v2, sc:Lgnu/bytecode/Scope;
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, v2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    .local v3, start:Lgnu/bytecode/Label;
    if-eqz v3, :cond_0

    iget v1, v3, Lgnu/bytecode/Label;->position:I

    .local v1, pos:I
    if-ltz v1, :cond_0

    iget-object v0, v2, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .local v0, end:Lgnu/bytecode/Label;
    if-eqz v0, :cond_0

    iget v4, v0, Lgnu/bytecode/Label;->position:I

    if-le v4, v1, :cond_0

    const/4 v4, 0x1

    .end local v0           #end:Lgnu/bytecode/Label;
    .end local v1           #pos:I
    .end local v3           #start:Lgnu/bytecode/Label;
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
