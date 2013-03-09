.class Lcom/google/common/collect/AbstractMultimap$WrappedList;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/List",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 0
    .parameter
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
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, delegate:Ljava/util/List;,"Ljava/util/List<TV;>;"
    .local p4, ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 689
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 690
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    .local p2, element:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 724
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 725
    .local v0, wasEmpty:Z
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 726
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 727
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->addToMap()V

    .line 730
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TV;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    const/4 v0, 0x0

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->size()I

    move-result v2

    .line 701
    .local v2, oldSize:I
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 702
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 704
    .local v1, newSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 705
    if-nez v2, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->addToMap()V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getListDelegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 741
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 742
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 746
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 747
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 752
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 757
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/AbstractMultimap$WrappedList$WrappedListIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 734
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 736
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->removeIfEmpty()V

    .line 737
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    .local p2, element:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 719
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "List.subList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->refreshIfEmpty()V

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedList;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/google/common/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object v3

    if-nez v3, :cond_0

    .end local p0           #this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    :goto_0
    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/AbstractMultimap;->access$300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .restart local p0       #this:Lcom/google/common/collect/AbstractMultimap$WrappedList;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedList;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedList;->getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method
