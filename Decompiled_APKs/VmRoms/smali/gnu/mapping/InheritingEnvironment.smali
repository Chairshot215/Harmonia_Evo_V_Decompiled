.class public Lgnu/mapping/InheritingEnvironment;
.super Lgnu/mapping/SimpleEnvironment;
.source "InheritingEnvironment.java"


# instance fields
.field baseTimestamp:I

.field inherited:[Lgnu/mapping/Environment;

.field namespaceMap:[Lgnu/mapping/Namespace;

.field numInherited:I

.field propertyMap:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .locals 2
    .parameter "name"
    .parameter "parent"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lgnu/mapping/InheritingEnvironment;->addParent(Lgnu/mapping/Environment;)V

    .line 18
    instance-of v1, p2, Lgnu/mapping/SimpleEnvironment;

    if-eqz v1, :cond_0

    .line 20
    check-cast p2, Lgnu/mapping/SimpleEnvironment;

    .end local p2
    iget v1, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p2, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    .line 21
    .local v0, timestamp:I
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 22
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->currentTimestamp:I

    .line 24
    .end local v0           #timestamp:I
    :cond_0
    return-void
.end method


# virtual methods
.method public addParent(Lgnu/mapping/Environment;)V
    .locals 4
    .parameter "env"

    .prologue
    const/4 v3, 0x0

    .line 31
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-nez v1, :cond_1

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [Lgnu/mapping/Environment;

    iput-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    aput-object p1, v1, v2

    .line 41
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 42
    return-void

    .line 33
    :cond_1
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    iget-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 35
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/mapping/Environment;

    .line 37
    .local v0, newInherited:[Lgnu/mapping/Environment;
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    goto :goto_0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v2, 0x1

    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 129
    .local v0, it:Lgnu/mapping/LocationEnumeration;
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 130
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 133
    iput v4, v0, Lgnu/mapping/LocationEnumeration;->index:I

    .line 135
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 6
    .parameter "name"
    .parameter "property"
    .parameter "hash"
    .parameter "create"

    .prologue
    const/4 v5, 0x0

    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 95
    .local v1, loc:Lgnu/mapping/NamedLocation;
    if-eqz v1, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->isBound()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v1

    .line 123
    :goto_0
    monitor-exit p0

    return-object v3

    .line 97
    :cond_1
    :try_start_1
    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_4

    if-eqz p4, :cond_4

    .line 98
    iget-object v3, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 102
    :goto_1
    if-eqz v1, :cond_8

    .line 104
    if-eqz p4, :cond_7

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 107
    .local v2, xloc:Lgnu/mapping/NamedLocation;
    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/InheritingEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 109
    :cond_2
    iput-object v1, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 110
    iget-object v3, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v4, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v3, v4, :cond_5

    .line 111
    iget-object v3, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 116
    :goto_2
    instance-of v3, v2, Lgnu/mapping/SharedLocation;

    if-eqz v3, :cond_3

    .line 117
    move-object v0, v2

    check-cast v0, Lgnu/mapping/SharedLocation;

    move-object v3, v0

    iget v4, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    iput v4, v3, Lgnu/mapping/SharedLocation;->timestamp:I

    :cond_3
    move-object v3, v2

    .line 118
    goto :goto_0

    .line 100
    .end local v2           #xloc:Lgnu/mapping/NamedLocation;
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    goto :goto_1

    .line 112
    .restart local v2       #xloc:Lgnu/mapping/NamedLocation;
    :cond_5
    iget v3, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 113
    sget-object v3, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 94
    .end local v1           #loc:Lgnu/mapping/NamedLocation;
    .end local v2           #xloc:Lgnu/mapping/NamedLocation;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 115
    .restart local v1       #loc:Lgnu/mapping/NamedLocation;
    .restart local v2       #xloc:Lgnu/mapping/NamedLocation;
    :cond_6
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_2

    .end local v2           #xloc:Lgnu/mapping/NamedLocation;
    :cond_7
    move-object v3, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_0

    :cond_9
    move-object v3, v5

    goto :goto_0
.end method

.method public final getNumParents()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    return v0
.end method

.method public final getParent(I)Lgnu/mapping/Environment;
    .locals 1
    .parameter "index"

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 5
    .parameter "it"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 140
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    if-eqz v1, :cond_0

    .line 144
    :goto_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 147
    .local v0, loc:Lgnu/mapping/NamedLocation;
    :goto_1
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iput-object v0, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 148
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iput-object v4, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 151
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v1, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 162
    iget v1, p1, Lgnu/mapping/LocationEnumeration;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lgnu/mapping/LocationEnumeration;->index:I

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ne v1, v2, :cond_3

    .line 166
    iput-object v4, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 167
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 168
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int v1, v3, v1

    iput v1, p1, Lgnu/mapping/LocationEnumeration;->index:I

    .line 170
    .end local v0           #loc:Lgnu/mapping/NamedLocation;
    :cond_0
    invoke-super {p0, p1}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v1

    :goto_2
    return v1

    .line 154
    .restart local v0       #loc:Lgnu/mapping/NamedLocation;
    :cond_1
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v0, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 155
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iget-object v2, v0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lgnu/mapping/InheritingEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 157
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    move v1, v3

    .line 158
    goto :goto_2

    .line 160
    :cond_2
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_1

    .line 164
    :cond_3
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    goto :goto_0
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 2
    .parameter "name"
    .parameter "property"
    .parameter "hash"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 86
    .local v0, loc:Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 88
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    goto :goto_0
.end method

.method public lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 11
    .parameter "name"
    .parameter "property"
    .parameter "hash"

    .prologue
    .line 46
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v9, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v3, v9, :cond_7

    .line 48
    move-object v8, p1

    .line 49
    .local v8, sym:Lgnu/mapping/Symbol;
    move-object v5, p2

    .line 50
    .local v5, prop:Ljava/lang/Object;
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    array-length v9, v9

    mul-int/lit8 v10, v3, 0x2

    if-le v9, v10, :cond_3

    .line 52
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    mul-int/lit8 v10, v3, 0x2

    aget-object v6, v9, v10

    .line 53
    .local v6, srcNamespace:Lgnu/mapping/Namespace;
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-object v1, v9, v10

    .line 54
    .local v1, dstNamespace:Lgnu/mapping/Namespace;
    if-nez v6, :cond_0

    if-eqz v1, :cond_3

    .line 56
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v9

    if-eq v9, v1, :cond_2

    .line 46
    .end local v1           #dstNamespace:Lgnu/mapping/Namespace;
    .end local v6           #srcNamespace:Lgnu/mapping/Namespace;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .restart local v1       #dstNamespace:Lgnu/mapping/Namespace;
    .restart local v6       #srcNamespace:Lgnu/mapping/Namespace;
    :cond_2
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 61
    .end local v1           #dstNamespace:Lgnu/mapping/Namespace;
    .end local v6           #srcNamespace:Lgnu/mapping/Namespace;
    :cond_3
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    array-length v9, v9

    mul-int/lit8 v10, v3, 0x2

    if-le v9, v10, :cond_5

    .line 63
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    mul-int/lit8 v10, v3, 0x2

    aget-object v7, v9, v10

    .line 64
    .local v7, srcProperty:Ljava/lang/Object;
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-object v2, v9, v10

    .line 65
    .local v2, dstProperty:Ljava/lang/Object;
    if-nez v7, :cond_4

    if-eqz v2, :cond_5

    .line 67
    :cond_4
    if-ne p2, v2, :cond_1

    .line 69
    move-object v5, v7

    .line 72
    .end local v2           #dstProperty:Ljava/lang/Object;
    .end local v7           #srcProperty:Ljava/lang/Object;
    :cond_5
    iget-object v9, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v9, v9, v3

    invoke-virtual {v9, v8, v5, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v4

    .line 73
    .local v4, loc:Lgnu/mapping/NamedLocation;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 75
    instance-of v9, v4, Lgnu/mapping/SharedLocation;

    if-eqz v9, :cond_6

    move-object v0, v4

    check-cast v0, Lgnu/mapping/SharedLocation;

    move-object v9, v0

    iget v9, v9, Lgnu/mapping/SharedLocation;->timestamp:I

    iget v10, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    if-ge v9, v10, :cond_1

    :cond_6
    move-object v9, v4

    .line 80
    .end local v4           #loc:Lgnu/mapping/NamedLocation;
    .end local v5           #prop:Ljava/lang/Object;
    .end local v8           #sym:Lgnu/mapping/Symbol;
    :goto_1
    return-object v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "sbuf"

    .prologue
    .line 175
    const-string v1, " baseTs:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_0

    .line 179
    const-string v1, " base:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Environment;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method
