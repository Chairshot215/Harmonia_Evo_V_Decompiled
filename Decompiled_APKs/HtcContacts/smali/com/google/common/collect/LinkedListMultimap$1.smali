.class Lcom/google/common/collect/LinkedListMultimap$1;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$1;,"Lcom/google/common/collect/LinkedListMultimap.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$1;,"Lcom/google/common/collect/LinkedListMultimap.1;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V

    return-object v0
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
    .line 571
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$1;,"Lcom/google/common/collect/LinkedListMultimap.1;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$1;->iterator()Ljava/util/Iterator;

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
    .line 574
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$1;,"Lcom/google/common/collect/LinkedListMultimap.1;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 565
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$1;,"Lcom/google/common/collect/LinkedListMultimap.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$1;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
