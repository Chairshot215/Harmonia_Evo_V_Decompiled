.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable",
        "<",
        "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 24
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 25
    return-void
.end method

.method static cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Entry::",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/kawa/util/AbstractHashTable",
            "<TEntry;**>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, map:Lgnu/kawa/util/AbstractHashTable;,"Lgnu/kawa/util/AbstractHashTable<TEntry;**>;"
    .local p1, rqueue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<*>;"
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 119
    .local v3, oldref:Ljava/util/Map$Entry;,"TEntry;"
    if-nez v3, :cond_0

    .line 141
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v5

    invoke-virtual {p0, v5}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 122
    .local v0, index:I
    const/4 v4, 0x0

    .line 123
    .local v4, prev:Ljava/util/Map$Entry;,"TEntry;"
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v2, v5, v0

    .line 124
    .local v2, node:Ljava/util/Map$Entry;,"TEntry;"
    :goto_1
    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 127
    .local v1, next:Ljava/util/Map$Entry;,"TEntry;"
    if-ne v2, v3, :cond_3

    .line 129
    if-nez v4, :cond_2

    .line 130
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v1, v5, v0

    .line 138
    .end local v1           #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_1
    :goto_2
    iget v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    goto :goto_0

    .line 132
    .restart local v1       #next:Ljava/util/Map$Entry;,"TEntry;"
    :cond_2
    invoke-virtual {p0, v4, v1}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    goto :goto_2

    .line 135
    :cond_3
    move-object v4, v2

    .line 136
    move-object v2, v1

    .line 137
    goto :goto_1
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 0
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    new-array p0, p1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p0           #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object p0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 108
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 110
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 44
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 45
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I

    move-result v0

    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, node:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    invoke-virtual {p1}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, val:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 39
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 50
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 1
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-direct {v0, p3, p0, p2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;-><init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V

    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 9
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 66
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 67
    .local v2, hash:I
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v3

    .line 68
    .local v3, index:I
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v8, v3

    .line 69
    .local v1, first:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v5, v1

    .line 70
    .local v5, node:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v7, 0x0

    .line 71
    .local v7, prev:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v6, 0x0

    .local v6, oldValue:Ljava/lang/Object;,"TV;"
    move-object v9, v6

    .line 74
    .end local v6           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_0
    if-nez v5, :cond_1

    .line 76
    iget v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    add-int/lit8 v10, v8, 0x1

    iput v10, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    array-length v8, v8

    if-lt v10, v8, :cond_0

    .line 78
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v3

    .line 80
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v1, v8, v3

    .line 82
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v5

    .line 83
    iput-object v1, v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 84
    iget-object p0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    .end local p0           #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p0, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v5, p0, v3

    move-object v8, v9

    .line 89
    :goto_1
    return-object v8

    .line 87
    .restart local p0       #this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    :cond_1
    invoke-virtual {v5}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, curValue:Ljava/lang/Object;,"TV;"
    if-ne v0, p2, :cond_2

    move-object v8, v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v4, v5, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 91
    .local v4, next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 93
    if-nez v7, :cond_3

    .line 94
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v4, v8, v3

    .line 97
    :goto_2
    move-object v6, v0

    .restart local v6       #oldValue:Ljava/lang/Object;,"TV;"
    move-object v8, v6

    .line 101
    .end local v6           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_3
    move-object v5, v4

    move-object v9, v8

    .line 102
    goto :goto_0

    .line 96
    :cond_3
    iput-object v4, v7, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    goto :goto_2

    .line 100
    :cond_4
    move-object v7, v5

    move-object v8, v9

    goto :goto_3
.end method

.method protected setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, entry:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    .local p2, next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;,"Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    check-cast p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p1
    check-cast p2, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lgnu/kawa/util/AbstractWeakHashTable;,"Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, oldValue:Ljava/lang/Object;,"TV;"
    .local p2, newValue:Ljava/lang/Object;,"TV;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
