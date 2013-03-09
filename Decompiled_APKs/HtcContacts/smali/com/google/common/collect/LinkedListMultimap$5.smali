.class Lcom/google/common/collect/LinkedListMultimap$5;
.super Ljava/util/AbstractMap;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 862
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->entrySet:Ljava/util/Set;

    .line 853
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .restart local v0       #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$5;->entrySet:Ljava/util/Set;

    .line 856
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 848
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 868
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 848
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$5;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$5;,"Lcom/google/common/collect/LinkedListMultimap.5;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$5;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 873
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v0
.end method
