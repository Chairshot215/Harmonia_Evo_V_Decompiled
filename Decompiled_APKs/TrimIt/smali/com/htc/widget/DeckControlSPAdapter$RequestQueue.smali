.class public Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestQueue"
.end annotation


# instance fields
.field private capacity:I

.field private requestiterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private requestqueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 2
    .parameter
    .parameter "icapacity"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    if-lez p2, :cond_0

    .line 671
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    .line 672
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 673
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    .line 675
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Integer;IZ)V
    .locals 5
    .parameter "addposition"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 708
    const/4 v2, -0x1

    .line 709
    .local v2, tmpdistance:I
    const/4 v0, -0x1

    .line 711
    .local v0, maxdistance:I
    const/4 v3, 0x0

    .line 712
    .local v3, tmpposition:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 714
    .local v1, maxposition:Ljava/lang/Integer;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    .line 715
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    .line 717
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 719
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpposition:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 720
    .restart local v3       #tmpposition:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 722
    move-object v1, v3

    .line 723
    move v0, v2

    .line 725
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 727
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpposition:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 728
    .restart local v3       #tmpposition:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 730
    if-ge v0, v2, :cond_0

    .line 732
    move-object v1, v3

    .line 733
    move v0, v2

    goto :goto_0

    .line 738
    :cond_1
    if-eqz p3, :cond_3

    .line 739
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 749
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 750
    const/4 v1, 0x0

    .line 751
    return-void

    .line 742
    :cond_3
    move-object v3, p1

    .line 743
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 745
    if-ge v2, v0, :cond_2

    .line 746
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addFirst(Ljava/lang/Integer;IZ)V
    .locals 2
    .parameter "position"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 771
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 778
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_4

    .line 782
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 785
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 786
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_3

    .line 787
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 792
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addLast(Ljava/lang/Integer;IZ)V
    .locals 2
    .parameter "position"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 798
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 805
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_4

    .line 809
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 812
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 813
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_3

    .line 814
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 819
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 878
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    .line 891
    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 892
    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    .line 893
    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    .line 894
    return-void
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 755
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 761
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeFirst()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 828
    :cond_0
    const/4 v0, 0x0

    .line 843
    :goto_0
    return-object v0

    .line 832
    :cond_1
    const/4 v0, 0x0

    .line 833
    .local v0, position:Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 835
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 836
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #position:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .restart local v0       #position:Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #position:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 850
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 851
    :cond_0
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    .line 855
    :cond_1
    const/4 v0, 0x0

    .line 856
    .local v0, position:Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 858
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #position:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    .restart local v0       #position:Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #position:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setCapacity(I)V
    .locals 4
    .parameter "icapacity"

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-eq p1, v1, :cond_0

    if-ge p1, v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 685
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge p1, v1, :cond_4

    .line 687
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 689
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 690
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 691
    :cond_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    .end local v0           #loop:I
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 694
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 701
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 697
    :cond_4
    :try_start_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
