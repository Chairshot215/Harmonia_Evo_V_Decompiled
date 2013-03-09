.class Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V
    .locals 1
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
            "Ljava/util/Collection",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, delegate:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .local p4, ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 395
    iput-object p3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 396
    iput-object p4, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .line 397
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    .line 399
    return-void

    .line 397
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 533
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 534
    .local v1, wasEmpty:Z
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 535
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 536
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMultimap;->access$208(Lcom/google/common/collect/AbstractMultimap;)I

    .line 537
    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 541
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    const/4 v0, 0x0

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 555
    .local v2, oldSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 556
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 557
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 558
    .local v1, newSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 559
    if-nez v2, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    goto :goto_0
.end method

.method addToMap()V
    .locals 3

    .prologue
    .line 446
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->addToMap()V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 577
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v0

    .line 578
    .local v0, oldSize:I
    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 582
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 567
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 568
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .line 572
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 573
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 459
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    if-ne p1, p0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getAncestor()Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 467
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 468
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 482
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection$WrappedIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 3

    .prologue
    .line 409
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 411
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-eq v1, v2, :cond_1

    .line 412
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 416
    .local v0, newDelegate:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_1

    .line 417
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 420
    .end local v0           #newDelegate:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 587
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 588
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 589
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMultimap;->access$210(Lcom/google/common/collect/AbstractMultimap;)I

    .line 591
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 593
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    const/4 v0, 0x0

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 601
    .local v2, oldSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 602
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 603
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 604
    .local v1, newSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0
.end method

.method removeIfEmpty()V
    .locals 2

    .prologue
    .line 427
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->ancestor:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->size()I

    move-result v2

    .line 613
    .local v2, oldSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 614
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 615
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 616
    .local v1, newSize:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->removeIfEmpty()V

    .line 619
    .end local v1           #newSize:I
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 454
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$WrappedCollection;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
