.class public final Lcom/jme3/util/ListMap;
.super Ljava/lang/Object;
.source "ListMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/ListMap$ListMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final backingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private entries:[Lcom/jme3/util/ListMap$ListMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/jme3/util/ListMap$ListMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/util/ListMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    const/4 v1, 0x4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v0, v1, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 105
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-array v0, p1, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    .line 115
    invoke-virtual {p0, p1}, Lcom/jme3/util/ListMap;->putAll(Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method private static keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "keyA"
    .parameter "keyB"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 279
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 281
    return-void
.end method

.method public clone()Lcom/jme3/util/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/util/ListMap;-><init>(I)V

    .line 286
    .local v0, clone:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/jme3/util/ListMap;->putAll(Ljava/util/Map;)V

    .line 287
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->clone()Lcom/jme3/util/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 151
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Ljava/util/Map$Entry;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v0, v0, p1

    #getter for: Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/jme3/util/ListMap$ListMapEntry;->access$000(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 139
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    .line 186
    iget-object v4, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    .line 189
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    iget-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v0, v4, v1

    .line 191
    .local v0, entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    #getter for: Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lcom/jme3/util/ListMap$ListMapEntry;->access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/jme3/util/ListMap;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    #setter for: Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/jme3/util/ListMap$ListMapEntry;->access$002(Lcom/jme3/util/ListMap$ListMapEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .end local v0           #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    .end local v1           #i:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 189
    .restart local v0       #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0           #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_2
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    .line 199
    .restart local v2       #size:I
    iget-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    array-length v4, v4

    if-ne v2, v4, :cond_3

    .line 200
    iget-object v3, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 201
    .local v3, tmpEntries:[Lcom/jme3/util/ListMap$ListMapEntry;,"[Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [Lcom/jme3/util/ListMap$ListMapEntry;

    iput-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    .line 202
    iget-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    .end local v3           #tmpEntries:[Lcom/jme3/util/ListMap$ListMapEntry;,"[Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    :cond_3
    iget-object v4, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    new-instance v5, Lcom/jme3/util/ListMap$ListMapEntry;

    invoke-direct {v5, p1, p2}, Lcom/jme3/util/ListMap$ListMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v2

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v5, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, element:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_3

    .line 229
    invoke-virtual {p0}, Lcom/jme3/util/ListMap;->size()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 230
    .local v4, size:I
    const/4 v3, -0x1

    .line 231
    .local v3, removedIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 232
    iget-object v5, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    aget-object v1, v5, v2

    .line 233
    .local v1, entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    #getter for: Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;
    invoke-static {v1}, Lcom/jme3/util/ListMap$ListMapEntry;->access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/jme3/util/ListMap;->keyEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    move v3, v2

    .line 238
    .end local v1           #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    :cond_0
    sget-boolean v5, Lcom/jme3/util/ListMap;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-gez v3, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 231
    .restart local v1       #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v1           #entry:Lcom/jme3/util/ListMap$ListMapEntry;,"Lcom/jme3/util/ListMap$ListMapEntry<TK;TV;>;"
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 241
    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_3

    .line 242
    iget-object v5, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    iget-object v6, p0, Lcom/jme3/util/ListMap;->entries:[Lcom/jme3/util/ListMap$ListMapEntry;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v2           #i:I
    .end local v3           #removedIndex:I
    .end local v4           #size:I
    :cond_3
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 120
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, this:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<TK;TV;>;"
    iget-object v0, p0, Lcom/jme3/util/ListMap;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
