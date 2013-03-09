.class abstract Lcom/google/common/collect/AbstractSetMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "AbstractSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


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
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67226fd4cd0928d8L


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
    .line 44
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 45
    return-void
.end method


# virtual methods
.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
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
    .line 54
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 91
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/AbstractSetMultimap;,"Lcom/google/common/collect/AbstractSetMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
