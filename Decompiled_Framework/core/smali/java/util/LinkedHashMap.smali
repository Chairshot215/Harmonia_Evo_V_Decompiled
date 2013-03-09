.class public Ljava/util/LinkedHashMap;
.super Ljava/util/HashMap;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedHashMap$1;,
        Ljava/util/LinkedHashMap$EntryIterator;,
        Ljava/util/LinkedHashMap$ValueIterator;,
        Ljava/util/LinkedHashMap$KeyIterator;,
        Ljava/util/LinkedHashMap$LinkedHashIterator;,
        Ljava/util/LinkedHashMap$LinkedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34c04e5c106cc0fbL


# instance fields
.field private final accessOrder:Z

.field transient header:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->init()V

    iput-boolean p3, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/LinkedHashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->constructorPutAll(Ljava/util/Map;)V

    return-void
.end method

.method private makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v3, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v2, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, p1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object p1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object p1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v7, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v7, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    iget-object v1, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    aput-object v0, v1, p4

    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v7, v5, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v7, v5, :cond_0

    invoke-virtual {p0, v7}, Ljava/util/LinkedHashMap;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v7, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    return-void
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v3, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-void
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v5, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v6, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;Ljava/util/LinkedHashMap$LinkedEntry;Ljava/util/LinkedHashMap$LinkedEntry;)V

    iput-object v0, v5, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, v6, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    :goto_0
    if-eq v0, v1, :cond_2

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    :goto_2
    if-eq v0, v1, :cond_4

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    :cond_2
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v5, v2, 0x14

    ushr-int/lit8 v6, v2, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v1, p1, :cond_4

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    iget-boolean v4, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, v4}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    :cond_5
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method init()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {v0}, Ljava/util/LinkedHashMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    return-void
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$EntryIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/LinkedHashMap$ValueIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v2, v1, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->prv:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/LinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/LinkedHashMap$LinkedEntry;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;->makeTail(Ljava/util/LinkedHashMap$LinkedEntry;)V

    :cond_0
    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
