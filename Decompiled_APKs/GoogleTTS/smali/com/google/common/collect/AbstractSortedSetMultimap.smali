.class abstract Lcom/google/common/collect/AbstractSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "AbstractSortedSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


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
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5faae81de71c4a4L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 46
    return-void
.end method


# virtual methods
.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/AbstractSortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
