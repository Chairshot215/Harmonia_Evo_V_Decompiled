.class public abstract Lcom/jme3/animation/CompactArray;
.super Ljava/lang/Object;
.source "CompactArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected array:[F

.field protected index:[I

.field private indexPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invalid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/animation/CompactArray;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    .local p1, objArray:[Ljava/lang/Object;,"[TT;"
    const/4 v7, 0x0

    .line 72
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 103
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, base:I
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    if-nez v5, :cond_2

    .line 78
    array-length v5, p1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    .line 90
    :goto_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_0

    .line 91
    aget-object v3, p1, v2

    .line 92
    .local v3, obj:Ljava/lang/Object;,"TT;"
    if-nez v3, :cond_4

    .line 93
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    add-int v6, v0, v2

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 90
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v2           #j:I
    .end local v3           #obj:Ljava/lang/Object;,"TT;"
    :cond_2
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Internal is already fixed"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_3
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    array-length v0, v5

    .line 85
    array-length v5, p1

    add-int/2addr v5, v0

    new-array v4, v5, [I

    .line 86
    .local v4, tmp:[I
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    iget-object v6, p0, Lcom/jme3/animation/CompactArray;->index:[I

    array-length v6, v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v4, p0, Lcom/jme3/animation/CompactArray;->index:[I

    goto :goto_0

    .line 95
    .end local v4           #tmp:[I
    .restart local v2       #j:I
    .restart local v3       #obj:Ljava/lang/Object;,"TT;"
    :cond_4
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 96
    .local v1, i:Ljava/lang/Integer;
    if-nez v1, :cond_5

    .line 97
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 98
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_5
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->index:[I

    add-int v6, v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    goto :goto_2
.end method

.method protected abstract deserialize(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation
.end method

.method protected ensureCapacity([FI)[F
    .locals 3
    .parameter "arr"
    .parameter "size"

    .prologue
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    const/4 v2, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 177
    new-array p1, p2, [F

    .line 183
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 178
    .restart local p1
    :cond_1
    array-length v1, p1

    if-ge v1, p2, :cond_0

    .line 181
    new-array v0, p2, [F

    .line 182
    .local v0, tmp:[F
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 183
    goto :goto_0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    .line 111
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    return-void
.end method

.method public final get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    .local p2, store:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/jme3/animation/CompactArray;->getCompactIndex(I)I

    move-result v0

    .line 132
    .local v0, j:I
    invoke-virtual {p0, v0, p2}, Lcom/jme3/animation/CompactArray;->deserialize(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getCompactIndex(I)I
    .locals 1
    .parameter "objIndex"

    .prologue
    .line 208
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    aget p1, v0, p1

    .end local p1
    :cond_0
    return p1
.end method

.method protected abstract getElementClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final getSerializedData()[F
    .locals 1

    .prologue
    .line 140
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->serialize()V

    .line 141
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->array:[F

    return-object v0
.end method

.method protected final getSerializedSize()I
    .locals 1

    .prologue
    .line 166
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedData()[F

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getTotalObjectSize()I
    .locals 2

    .prologue
    .line 215
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    sget-boolean v0, Lcom/jme3/animation/CompactArray;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/animation/CompactArray;->index:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method protected abstract getTupleSize()I
.end method

.method public final serialize()V
    .locals 7

    .prologue
    .line 148
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    iget-boolean v5, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    if-eqz v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v6

    mul-int v3, v5, v6

    .line 150
    .local v3, newSize:I
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->array:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->array:[F

    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 151
    :cond_0
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->array:[F

    invoke-virtual {p0, v5, v3}, Lcom/jme3/animation/CompactArray;->ensureCapacity([FI)[F

    move-result-object v5

    iput-object v5, p0, Lcom/jme3/animation/CompactArray;->array:[F

    .line 152
    iget-object v5, p0, Lcom/jme3/animation/CompactArray;->indexPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    .local v1, i:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 155
    .local v4, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v1, v4}, Lcom/jme3/animation/CompactArray;->serialize(ILjava/lang/Object;)V

    goto :goto_0

    .line 158
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #obj:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jme3/animation/CompactArray;->invalid:Z

    .line 160
    .end local v3           #newSize:I
    :cond_2
    return-void
.end method

.method protected abstract serialize(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public final toObjectArray()[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Lcom/jme3/animation/CompactArray;,"Lcom/jme3/animation/CompactArray<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getSerializedSize()I

    move-result v7

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTupleSize()I

    move-result v8

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 234
    .local v1, compactArr:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v4

    .line 236
    aget-object v6, v1, v4

    invoke-virtual {p0, v4, v6}, Lcom/jme3/animation/CompactArray;->deserialize(ILjava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getElementClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0}, Lcom/jme3/animation/CompactArray;->getTotalObjectSize()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 240
    .local v5, objArr:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 241
    invoke-virtual {p0, v4}, Lcom/jme3/animation/CompactArray;->getCompactIndex(I)I

    move-result v2

    .line 242
    .local v2, compactIndex:I
    aget-object v6, v1, v2

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v1           #compactArr:[Ljava/lang/Object;,"[TT;"
    .end local v2           #compactIndex:I
    .end local v4           #i:I
    .end local v5           #objArr:[Ljava/lang/Object;,"[TT;"
    :catch_0
    move-exception v3

    .line 246
    .local v3, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method
