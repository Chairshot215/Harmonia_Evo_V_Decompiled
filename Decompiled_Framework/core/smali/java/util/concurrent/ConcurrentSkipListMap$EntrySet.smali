.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p0, :cond_1

    move v3, v2

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK1;TV1;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
