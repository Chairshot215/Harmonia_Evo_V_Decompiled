.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,
        Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, countMap:Ljava/util/concurrent/ConcurrentMap;,"Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 105
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 87
    .local v0, multiset:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 88
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 479
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 480
    sget-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 483
    return-void
.end method

.method private removeAllOccurrences(Ljava/lang/Object;)I
    .locals 3
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v2, 0x0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 258
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    move v1, v2

    .line 256
    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, v2

    .line 258
    goto :goto_0
.end method

.method private snapshot()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 160
    .local v4, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 161
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, element:Ljava/lang/Object;,"TE;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 163
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 166
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v2           #i:I
    :cond_1
    return-object v4
.end method

.method private static unbox(Ljava/lang/Integer;)I
    .locals 1
    .parameter "i"

    .prologue
    .line 464
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 474
    invoke-static {p0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 475
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 8
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    if-nez p2, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v4

    .line 199
    :goto_0
    return v4

    .line 185
    :cond_0
    if-lez p2, :cond_2

    move v2, v3

    :goto_1
    const-string v5, "Invalid occurrences: %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 189
    .local v0, current:I
    if-nez v0, :cond_3

    .line 190
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .end local v0           #current:I
    :cond_2
    move v2, v4

    .line 185
    goto :goto_1

    .line 194
    .restart local v0       #current:I
    :cond_3
    const v2, 0x7fffffff

    sub-int/2addr v2, v0

    if-gt p2, v2, :cond_4

    move v2, v3

    :goto_2
    const-string v5, "Overflow adding %s occurrences to a count of %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    add-int v1, v0, p2

    .line 198
    .local v1, next:I
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, p1, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v0

    .line 199
    goto :goto_0

    .end local v1           #next:I
    :cond_4
    move v2, v4

    .line 194
    goto :goto_2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v2, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 122
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    move v1, v2

    .line 120
    goto :goto_0

    .line 121
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, v2

    .line 122
    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 348
    .local v0, delegate:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 368
    .local v0, result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .end local v0           #result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    .restart local v0       #result:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>.EntrySet;"
    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    .line 371
    :cond_0
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 7
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    if-nez p2, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 237
    :goto_0
    return v1

    .line 220
    :cond_0
    if-lez p2, :cond_2

    move v2, v3

    :goto_1
    const-string v5, "Invalid occurrences: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 224
    .local v1, current:I
    if-nez v1, :cond_3

    move v1, v4

    .line 225
    goto :goto_0

    .end local v1           #current:I
    :cond_2
    move v2, v4

    .line 220
    goto :goto_1

    .line 227
    .restart local v1       #current:I
    :cond_3
    if-lt p2, v1, :cond_4

    .line 228
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 234
    :cond_4
    move-object v0, p1

    .line 236
    .local v0, casted:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int v5, v1, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v0, v3, v5}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeExactly(Ljava/lang/Object;I)Z
    .locals 8
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    if-nez p2, :cond_0

    .line 293
    :goto_0
    return v3

    .line 278
    :cond_0
    if-lez p2, :cond_2

    move v2, v3

    :goto_1
    const-string v5, "Invalid occurrences: %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 282
    .local v1, current:I
    if-le p2, v1, :cond_3

    move v3, v4

    .line 283
    goto :goto_0

    .end local v1           #current:I
    :cond_2
    move v2, v4

    .line 278
    goto :goto_1

    .line 285
    .restart local v1       #current:I
    :cond_3
    if-ne p2, v1, :cond_4

    .line 286
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 291
    :cond_4
    move-object v0, p1

    .line 292
    .local v0, casted:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sub-int v6, v1, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 309
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->removeAllOccurrences(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 4
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    const-string v2, "oldCount"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 329
    const-string v2, "newCount"

    invoke-static {p3, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 330
    if-nez p3, :cond_3

    .line 331
    if-nez p2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_3
    if-nez p2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const-wide/16 v1, 0x0

    .line 135
    .local v1, sum:J
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 136
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    goto :goto_0

    .line 138
    .end local v3           #value:Ljava/lang/Integer;
    :cond_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset;,"Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
