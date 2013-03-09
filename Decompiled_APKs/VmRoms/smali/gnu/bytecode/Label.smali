.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field needsStackMapEntry:Z

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;

.field private typeChangeListeners:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lgnu/bytecode/Label;->position:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 40
    return-void
.end method

.method private mergeLocalType(ILgnu/bytecode/Type;)V
    .locals 3
    .parameter "varnum"
    .parameter "newType"

    .prologue
    .line 119
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v1, v2, p1

    .line 120
    .local v1, oldLocal:Lgnu/bytecode/Type;
    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 121
    .local v0, newLocal:Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v0, v2, p1

    .line 122
    if-eq v0, v1, :cond_0

    .line 123
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Label;->notifyTypeChangeListeners(ILgnu/bytecode/Type;)V

    .line 124
    :cond_0
    return-void
.end method

.method private notifyTypeChangeListeners(ILgnu/bytecode/Type;)V
    .locals 5
    .parameter "varnum"
    .parameter "newType"

    .prologue
    .line 128
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 129
    .local v0, arr:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-gt v4, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    aget-object v3, v0, p1

    .line 132
    .local v3, listeners:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 134
    instance-of v4, v3, Lgnu/bytecode/Label;

    if-eqz v4, :cond_3

    .line 135
    check-cast v3, Lgnu/bytecode/Label;

    .end local v3           #listeners:Ljava/lang/Object;
    invoke-direct {v3, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 141
    :cond_2
    if-nez p2, :cond_0

    .line 142
    const/4 v4, 0x0

    aput-object v4, v0, p1

    goto :goto_0

    .line 138
    .restart local v3       #listeners:Ljava/lang/Object;
    :cond_3
    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #listeners:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Label;

    .line 139
    .local v2, listener:Lgnu/bytecode/Label;
    invoke-direct {v2, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_1
.end method


# virtual methods
.method addTypeChangeListener(ILgnu/bytecode/Label;)V
    .locals 7
    .parameter "varnum"
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    .line 154
    iget-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 155
    .local v1, arr:[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 156
    add-int/lit8 v4, p1, 0xa

    new-array v1, v4, [Ljava/lang/Object;

    iput-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 163
    :cond_0
    :goto_0
    aget-object v3, v1, p1

    .line 164
    .local v3, set:Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 165
    aput-object p2, v1, p1

    .line 179
    .end local v3           #set:Ljava/lang/Object;
    :goto_1
    return-void

    .line 157
    :cond_1
    array-length v4, v1

    if-gt v4, p1, :cond_0

    .line 159
    add-int/lit8 v4, p1, 0xa

    new-array v1, v4, [Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    iget-object v5, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    goto :goto_0

    .line 169
    .restart local v3       #set:Ljava/lang/Object;
    :cond_2
    instance-of v4, v3, Lgnu/bytecode/Label;

    if-eqz v4, :cond_3

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    check-cast v3, Lgnu/bytecode/Label;

    .end local v3           #set:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    aput-object v2, v1, p1

    .line 177
    :goto_2
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    .restart local v3       #set:Ljava/lang/Object;
    :cond_3
    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    goto :goto_2
.end method

.method addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 183
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v0, v2

    .line 186
    .local v0, len:I
    const/4 v1, 0x0

    .local v1, varnum:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 188
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-eqz v2, :cond_0

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v2, v2

    if-le v2, v1, :cond_0

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    .line 192
    :cond_0
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v1, p0}, Lgnu/bytecode/Label;->addTypeChangeListener(ILgnu/bytecode/Label;)V

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0           #len:I
    .end local v1           #varnum:I
    :cond_2
    return-void
.end method

.method public define(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 231
    :cond_0
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    .line 232
    iput-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 234
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 237
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 238
    return-void

    .line 220
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v0, v1

    .local v0, i:I
    :cond_3
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 224
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 227
    :cond_4
    iget-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 202
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/Error;

    const-string v1, "label definition more than once"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    iput v0, p0, Lgnu/bytecode/Label;->position:I

    .line 205
    iget v0, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    .line 206
    iget v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    if-ltz v0, :cond_1

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 208
    :cond_1
    return-void
.end method

.method public final defined()Z
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 49
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    instance-of v1, p2, Lgnu/bytecode/PrimType;

    if-eq v0, v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V

    .line 103
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p1, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 109
    return-void

    .line 105
    :cond_1
    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 113
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    iget-object v2, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v3, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 115
    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .locals 8
    .parameter "locals"
    .parameter "usedLocals"
    .parameter "stack"
    .parameter "usedStack"

    .prologue
    const/4 v6, 0x0

    .line 57
    :goto_0
    if-lez p2, :cond_0

    .line 59
    const/4 v5, 0x1

    sub-int v5, p2, v5

    aget-object v2, p1, v5

    .line 60
    .local v2, last:Lgnu/bytecode/Type;
    if-eqz v2, :cond_2

    .line 63
    .end local v2           #last:Lgnu/bytecode/Type;
    :cond_0
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_5

    .line 65
    if-nez p4, :cond_3

    .line 66
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 72
    :goto_1
    if-nez p2, :cond_4

    .line 73
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 98
    :cond_1
    :goto_2
    return-void

    .line 57
    .restart local v2       #last:Lgnu/bytecode/Type;
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 69
    .end local v2           #last:Lgnu/bytecode/Type;
    :cond_3
    new-array v5, p4, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 70
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-static {p3, v6, v5, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 76
    :cond_4
    new-array v5, p2, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 77
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    invoke-static {p1, v6, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 82
    :cond_5
    move v0, p4

    .line 83
    .local v0, SP:I
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v4, v5

    .line 84
    .local v4, slen:I
    if-eq v0, v4, :cond_6

    .line 85
    new-instance v5, Ljava/lang/InternalError;

    const-string v6, "inconsistent stack length"

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 88
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v6, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v6, v6, v1

    aget-object v7, p3, v1

    invoke-virtual {p0, v6, v7}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v5, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 90
    :cond_7
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge p2, v5, :cond_8

    move v3, p2

    .line 91
    .local v3, min:I
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_9

    .line 93
    aget-object v5, p1, v1

    invoke-direct {p0, v1, v5}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 90
    .end local v3           #min:I
    :cond_8
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    move v3, v5

    goto :goto_4

    .line 95
    .restart local v3       #min:I
    :cond_9
    move v1, p2

    :goto_6
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 96
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
