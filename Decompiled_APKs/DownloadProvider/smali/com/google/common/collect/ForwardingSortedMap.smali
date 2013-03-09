.class public abstract Lcom/google/common/collect/ForwardingSortedMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ForwardingSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    .local p2, toKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/common/collect/ForwardingSortedMap;,"Lcom/google/common/collect/ForwardingSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
