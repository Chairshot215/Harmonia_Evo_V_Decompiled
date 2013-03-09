.class Lcom/google/common/collect/LinkedListMultimap$MultisetView;
.super Ljava/util/AbstractCollection;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TK;>;",
        "Lcom/google/common/collect/Multiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 609
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 632
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

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
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 703
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 707
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .line 618
    .local v0, nodes:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .line 640
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    if-ltz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v1

    .line 642
    .local v1, oldCount:I
    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v3, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v2, values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    move v0, p2

    .line 643
    .end local p2
    .local v0, occurrences:I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0           #occurrences:I
    .restart local p2
    if-lez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 645
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, p2

    .end local p2
    .restart local v0       #occurrences:I
    goto :goto_1

    .line 640
    .end local v0           #occurrences:I
    .end local v1           #oldCount:I
    .end local v2           #values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    .restart local p2
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 647
    .restart local v1       #oldCount:I
    .restart local v2       #values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_1
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 663
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    .local p1, element:Ljava/lang/Object;,"TK;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)Z"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    .local p1, element:Ljava/lang/Object;,"TK;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 613
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
