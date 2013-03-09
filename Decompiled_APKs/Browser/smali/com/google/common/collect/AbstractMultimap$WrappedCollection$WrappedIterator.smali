.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field

.field final originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 2
    .parameter

    .prologue
    .line 490
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 491
    iget-object v0, p1, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p1, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    #calls: Lcom/google/common/collect/AbstractMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$100(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 492
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;Ljava/util/Iterator;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    .local p2, delegateIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 495
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    .line 496
    return-void
.end method


# virtual methods
.method getDelegateIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 510
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 520
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 523
    return-void
.end method

.method validateIterator()V
    .locals 2

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection.WrappedIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 504
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 505
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 507
    :cond_0
    return-void
.end method
