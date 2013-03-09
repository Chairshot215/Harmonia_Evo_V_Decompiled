.class Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, delegate:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TV;>;"
    .local p4, ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 643
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 644
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getSortedSetDelegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, toElement:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 666
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0           #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0       #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 661
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TV;"
    .local p2, toElement:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 673
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0           #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0       #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 680
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0           #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0       #this:Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method
