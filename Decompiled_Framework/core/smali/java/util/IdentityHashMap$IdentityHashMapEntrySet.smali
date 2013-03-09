.class Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #calls: Ljava/util/IdentityHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    invoke-static {v3, v1}, Ljava/util/IdentityHashMap;->access$100(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method hashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    new-instance v1, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;-><init>(Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;)V

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method
