.class Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;
.super Ljava/lang/Object;
.source "LocalPlaylist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/LocalPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenCacheRunnable"
.end annotation


# instance fields
.field private bSkipUnPlayable:Z

.field private bStop:Z

.field private rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

.field private requestIndex:I

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V
    .locals 1
    .parameter
    .parameter "type"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bStop:Z

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bSkipUnPlayable:Z

    .line 676
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    .line 677
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bStop:Z

    .line 815
    return-void
.end method

.method public getFirst(Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 686
    sget-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$1;->$SwitchMap$com$htc$dlnamiddlelayer$LocalPlaylist$RunnableType:[I

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 700
    :goto_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    return v0

    .line 689
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    goto :goto_0

    .line 696
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNext(Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)I
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 705
    sget-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$1;->$SwitchMap$com$htc$dlnamiddlelayer$LocalPlaylist$RunnableType:[I

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 733
    :goto_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    return v0

    .line 708
    :pswitch_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 710
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 711
    iput v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->setListNextIndex(I)V

    goto :goto_0

    .line 717
    :pswitch_1
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 718
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 719
    iput v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    goto :goto_0

    .line 724
    :pswitch_2
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 726
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    if-gez v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 738
    const/4 v3, -0x1

    .line 740
    .local v3, prevGenIndex:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bStop:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-boolean v4, v4, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    if-nez v4, :cond_1

    .line 742
    const/4 v2, 0x0

    .line 744
    .local v2, index:I
    iget v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->requestIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 745
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->getFirst(Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)I

    move-result v2

    .line 749
    :goto_1
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Runnable : index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move v1, v2

    .line 753
    .local v1, genIndex:I
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-boolean v4, v4, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    aget v1, v4, v2

    .line 758
    :cond_0
    if-ne v3, v1, :cond_3

    .line 760
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "same with previous generate item."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v1           #genIndex:I
    .end local v2           #index:I
    :cond_1
    :goto_2
    return-void

    .line 747
    .restart local v2       #index:I
    :cond_2
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->getNext(Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)I

    move-result v2

    goto :goto_1

    .line 764
    .restart local v1       #genIndex:I
    :cond_3
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-object v5, v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    aget v5, v5, v1

    #calls: Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genURICache(II)Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    invoke-static {v4, v5, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->access$000(Lcom/htc/dlnamiddlelayer/LocalPlaylist;II)Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    move-result-object v0

    .line 767
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    if-nez v0, :cond_5

    .line 769
    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bSkipUnPlayable:Z

    if-nez v4, :cond_4

    .line 771
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    const/16 v5, -0x134

    invoke-virtual {v4, v5, v8}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_2

    .line 777
    :cond_4
    move v3, v1

    .line 778
    goto :goto_0

    .line 782
    :cond_5
    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bStop:Z

    if-eqz v4, :cond_6

    .line 784
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Runnable is cancel..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 788
    :cond_6
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->add(Lcom/htc/dlnamiddlelayer/CacheItem;I)Z

    .line 790
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    sget-object v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    if-ne v4, v5, :cond_7

    .line 792
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    sget v5, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    invoke-virtual {v4, v5, v8}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_2

    .line 797
    :cond_7
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    sget-object v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    sget-object v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_PREV:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    if-ne v4, v5, :cond_9

    .line 800
    :cond_8
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    sget v5, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    invoke-virtual {v4, v5, v8}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_2

    .line 802
    :cond_9
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->rType:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    sget-object v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    if-ne v4, v5, :cond_1

    .line 804
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->this$0:Lcom/htc/dlnamiddlelayer/LocalPlaylist;

    sget v5, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    invoke-virtual {v4, v5, v8}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_2
.end method

.method public setSkipUnPlayable(Z)V
    .locals 0
    .parameter "bValue"

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->bSkipUnPlayable:Z

    .line 682
    return-void
.end method
