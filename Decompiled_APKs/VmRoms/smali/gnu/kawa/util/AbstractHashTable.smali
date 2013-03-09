.class public abstract Lgnu/kawa/util/AbstractHashTable;
.super Ljava/util/AbstractMap;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_SIZE:I = 0x40


# instance fields
.field protected mask:I

.field protected num_bindings:I

.field protected table:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TEntry;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "capacity"

    .prologue
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/4 v2, 0x1

    .line 37
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 38
    const/4 v0, 0x4

    .line 39
    .local v0, log2Size:I
    :goto_0
    shl-int v1, v2, v0

    if-le p1, v1, :cond_0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    shl-int p1, v2, v0

    .line 42
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 43
    sub-int v1, p1, v2

    iput v1, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract allocEntries(I)[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TEntry;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/4 v4, 0x0

    .line 210
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 211
    .local v3, t:[Ljava/util/Map$Entry;,"[TEntry;"
    array-length v1, v3

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 215
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/Map$Entry;,"TEntry;"
    :goto_1
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 218
    .local v2, next:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, v0, v4}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 219
    move-object v0, v2

    .line 220
    goto :goto_1

    .line 221
    .end local v2           #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_0
    aput-object v4, v3, v1

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/util/Map$Entry;,"TEntry;"
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 224
    return-void
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
    .line 234
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    new-instance v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    invoke-direct {v0, p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;-><init>(Lgnu/kawa/util/AbstractHashTable;)V

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
    .line 82
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 103
    .local v0, node:Ljava/util/Map$Entry;,"TEntry;"
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getEntryHashCode(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)I"
        }
    .end annotation
.end method

.method protected abstract getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TEntry;"
        }
    .end annotation
.end method

.method public getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TEntry;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 90
    .local v1, index:I
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v2, v3, v1

    .line 91
    .local v2, node:Ljava/util/Map$Entry;,"TEntry;"
    :goto_0
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p0, p1, v0, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 96
    :goto_1
    return-object v3

    .line 91
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 53
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected hashToIndex(I)I
    .locals 1
    .parameter "hash"

    .prologue
    .line 60
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr p1, v0

    .line 61
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method protected abstract makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TEntry;"
        }
    .end annotation
.end method

.method protected matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z
    .locals 1
    .parameter "key"
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ITEntry;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p3, node:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, p3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "key2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key1:Ljava/lang/Object;,"TK;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 157
    .local v1, index:I
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v0, v4, v1

    .line 158
    .local v0, first:Ljava/util/Map$Entry;,"TEntry;"
    move-object v2, v0

    .line 161
    .local v2, node:Ljava/util/Map$Entry;,"TEntry;"
    :goto_0
    if-nez v2, :cond_1

    .line 163
    iget v4, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 165
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractHashTable;->rehash()V

    .line 166
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 167
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v0, v4, v1

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 170
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 171
    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v2, v4, v1

    .line 172
    const/4 v4, 0x0

    .line 178
    :goto_1
    return-object v4

    .line 174
    :cond_1
    invoke-virtual {p0, p1, p2, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, oldValue:Ljava/lang/Object;,"TV;"
    invoke-interface {v2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 178
    goto :goto_1

    .line 180
    .end local v3           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected rehash()V
    .locals 15

    .prologue
    .line 108
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget-object v12, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 109
    .local v12, oldTable:[Ljava/util/Map$Entry;,"[TEntry;"
    array-length v11, v12

    .line 110
    .local v11, oldCapacity:I
    mul-int/lit8 v6, v11, 0x2

    .line 111
    .local v6, newCapacity:I
    invoke-virtual {p0, v6}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v8

    .line 112
    .local v8, newTable:[Ljava/util/Map$Entry;,"[TEntry;"
    const/4 v14, 0x1

    sub-int v7, v6, v14

    .line 113
    .local v7, newMask:I
    iput-object v8, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 114
    iput v7, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 115
    move v4, v11

    .local v4, i:I
    :cond_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 117
    aget-object v0, v12, v4

    .line 118
    .local v0, chain:Ljava/util/Map$Entry;,"TEntry;"
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 124
    const/4 v13, 0x0

    .line 127
    .local v13, prev:Ljava/util/Map$Entry;,"TEntry;"
    :cond_1
    move-object v10, v0

    .line 128
    .local v10, node:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, v10}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v10, v13}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    move-object v13, v10

    .line 132
    if-nez v0, :cond_1

    .line 133
    move-object v0, v13

    .line 136
    .end local v10           #node:Ljava/util/Map$Entry;,"TEntry;"
    .end local v13           #prev:Ljava/util/Map$Entry;,"TEntry;"
    :cond_2
    move-object v1, v0

    .local v1, element:Ljava/util/Map$Entry;,"TEntry;"
    :goto_0
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v9

    .line 139
    .local v9, next:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v2

    .line 140
    .local v2, hash:I
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v5

    .line 141
    .local v5, j:I
    aget-object v3, v8, v5

    .line 142
    .local v3, head:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, v1, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 143
    aput-object v1, v8, v5

    .line 144
    move-object v1, v9

    .line 145
    goto :goto_0

    .line 147
    .end local v0           #chain:Ljava/util/Map$Entry;,"TEntry;"
    .end local v1           #element:Ljava/util/Map$Entry;,"TEntry;"
    .end local v2           #hash:I
    .end local v3           #head:Ljava/util/Map$Entry;,"TEntry;"
    .end local v5           #j:I
    .end local v9           #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, hash:I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 188
    .local v1, index:I
    const/4 v4, 0x0

    .line 189
    .local v4, prev:Ljava/util/Map$Entry;,"TEntry;"
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v3, v5, v1

    .line 190
    .local v3, node:Ljava/util/Map$Entry;,"TEntry;"
    :goto_0
    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {p0, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 193
    .local v2, next:Ljava/util/Map$Entry;,"TEntry;"
    invoke-virtual {p0, p1, v0, v3}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    if-nez v4, :cond_0

    .line 196
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v2, v5, v1

    .line 199
    :goto_1
    iget v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 205
    .end local v2           #next:Ljava/util/Map$Entry;,"TEntry;"
    :goto_2
    return-object v5

    .line 198
    .restart local v2       #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_0
    invoke-virtual {p0, v4, v2}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 202
    :cond_1
    move-object v4, v3

    .line 203
    move-object v3, v2

    .line 204
    goto :goto_0

    .line 205
    .end local v2           #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected abstract setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TEntry;)V"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 228
    .local p0, this:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    return v0
.end method
