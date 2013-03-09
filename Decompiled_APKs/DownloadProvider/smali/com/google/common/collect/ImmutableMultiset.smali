.class public Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMultiset$Builder;,
        Lcom/google/common/collect/ImmutableMultiset$EntrySet;,
        Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    .line 164
    iput p2, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    instance-of v2, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 96
    check-cast v1, Lcom/google/common/collect/ImmutableMultiset;

    .line 105
    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    :goto_0
    return-object v1

    .line 101
    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    :cond_0
    instance-of v2, p0, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    move-object v0, p0

    .line 105
    .local v0, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<+TE;>;"
    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    :goto_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    .end local p0           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    move-result-object v1

    goto :goto_0

    .line 101
    .end local v0           #multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<+TE;>;"
    .restart local p0       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    goto :goto_1
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 143
    .local v0, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 144
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method private static copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, multiset:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<+TE;>;"
    const-wide/16 v4, 0x0

    .line 111
    .local v4, size:J
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 113
    .local v0, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 114
    .local v2, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    .line 115
    .local v1, count:I
    if-lez v1, :cond_0

    .line 118
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 119
    int-to-long v6, v1

    add-long/2addr v4, v6

    goto :goto_0

    .line 123
    .end local v1           #count:I
    .end local v2           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 124
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v6

    .line 126
    :goto_1
    return-object v6

    :cond_2
    new-instance v6, Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    const-wide/32 v8, 0x7fffffff

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-direct {v6, v7, v8}, Lcom/google/common/collect/ImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_1
.end method

.method public static of()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 343
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 345
    .local v3, entryCount:I
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 346
    .local v0, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const-wide/16 v5, 0x0

    .line 347
    .local v5, tmpSize:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 350
    .local v2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 351
    .local v1, count:I
    if-gtz v1, :cond_0

    .line 352
    new-instance v7, Ljava/io/InvalidObjectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 355
    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v1           #count:I
    .end local v2           #element:Ljava/lang/Object;,"TE;"
    :cond_1
    sget-object v7, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    invoke-virtual {v7, p0, v8}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    sget-object v7, Lcom/google/common/collect/ImmutableMultiset$FieldSettersHolder;->SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    const-wide/32 v8, 0x7fffffff

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, p0, v8}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 361
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 338
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultiset(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 339
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 168
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 279
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 280
    .local v0, es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    .end local v0           #es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    instance-of v5, p1, Lcom/google/common/collect/Multiset;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 245
    check-cast v2, Lcom/google/common/collect/Multiset;

    .line 246
    .local v2, that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v3, v4

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 250
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 251
    goto :goto_0

    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    :cond_4
    move v3, v4

    .line 256
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 261
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 176
    .local v0, mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$1;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .parameter "element"
    .parameter "occurrences"

    .prologue
    .line 219
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 197
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 364
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    return-object p0
.end method
