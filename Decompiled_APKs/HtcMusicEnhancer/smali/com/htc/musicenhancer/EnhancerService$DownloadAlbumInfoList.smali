.class Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
.super Ljava/lang/Object;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAlbumInfoList"
.end annotation


# instance fields
.field private mDownloadAlbumInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/musicenhancer/DownloadAlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFailCount:I

.field private mTotalDownloadCount:I

.field private mUpdatedCount:I

.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 673
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    .line 677
    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    .line 678
    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    .line 679
    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    return-void
.end method


# virtual methods
.method add(ILcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 1
    .parameter "pos"
    .parameter "downloadAlbumInfo"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 763
    return-void
.end method

.method add(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 1
    .parameter "downloadAlbumInfo"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 758
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    .line 759
    return-void
.end method

.method add([Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 4
    .parameter "downloadAlbumInfos"

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 754
    :goto_0
    return-void

    .line 745
    :cond_0
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadAlbumInfos.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDownloadAlbumInfos size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 748
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->isExist(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 749
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need update albumId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    .line 841
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 842
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/musicenhancer/DownloadAlbumInfo;>;"
    const/4 v0, 0x0

    .line 844
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 846
    .restart local v0       #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->closeTrackCursor()V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 850
    return-void
.end method

.method completeOneDownload(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 3
    .parameter "downloadAlbumInfo"

    .prologue
    .line 721
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 722
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    .line 729
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 724
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    goto :goto_0

    .line 726
    :cond_1
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong status while removing download albume info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method currentDownloadCount()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method downloadFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 861
    const-string v0, "[EnhancerService]"

    const-string v1, "downloadFinish"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iput v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    .line 863
    iput v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    .line 864
    iput v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    .line 865
    return-void
.end method

.method get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;
    .locals 3
    .parameter "albumId"

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 685
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/musicenhancer/DownloadAlbumInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 687
    .restart local v0       #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 693
    :cond_0
    return-object v0

    .line 690
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentFingerprintAlbumInfo()Lcom/htc/musicenhancer/DownloadAlbumInfo;
    .locals 3

    .prologue
    .line 797
    const/4 v0, 0x0

    .line 798
    .local v0, currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 800
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/musicenhancer/DownloadAlbumInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 802
    .restart local v0       #currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 808
    :cond_0
    return-object v0

    .line 805
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentRecognizeAlbumInfo()Lcom/htc/musicenhancer/DownloadAlbumInfo;
    .locals 4

    .prologue
    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 815
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/musicenhancer/DownloadAlbumInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    check-cast v1, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 817
    .restart local v1       #currentDownloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v0

    .line 818
    .local v0, currStatus:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 825
    .end local v0           #currStatus:I
    :cond_0
    return-object v1

    .line 822
    .restart local v0       #currStatus:I
    :cond_1
    const/4 v1, 0x0

    .line 824
    goto :goto_0
.end method

.method getFailCount()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    return v0
.end method

.method getUpdatedCount()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mUpdatedCount:I

    return v0
.end method

.method isExist(I)Z
    .locals 1
    .parameter "albumId"

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(I)V
    .locals 4
    .parameter "albumId"

    .prologue
    .line 697
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removealbum id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->get(I)Lcom/htc/musicenhancer/DownloadAlbumInfo;

    move-result-object v0

    .line 699
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->completeOneDownload(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 701
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->closeTrackCursor()V

    .line 702
    iget v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->sendCompleteOneDownloadBroadcast(Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V

    .line 704
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 705
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->showDownloadingNotification()V
    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->access$400(Lcom/htc/musicenhancer/EnhancerService;)V

    .line 706
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    const/4 v2, 0x1

    #calls: Lcom/htc/musicenhancer/EnhancerService;->completedDownload(Z)V
    invoke-static {v1, v2}, Lcom/htc/musicenhancer/EnhancerService;->access$500(Lcom/htc/musicenhancer/EnhancerService;Z)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->downloadFinish()V

    .line 711
    :cond_0
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDownloadAlbumInfos count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method removeAll()V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->clear()V

    .line 717
    invoke-virtual {p0}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->downloadFinish()V

    .line 718
    return-void
.end method

.method replaceAndInsertToTop(ILcom/htc/musicenhancer/DownloadAlbumInfo;Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 1
    .parameter "albumId"
    .parameter "newInfo"
    .parameter "originalInfo"

    .prologue
    .line 766
    if-eqz p3, :cond_0

    .line 767
    invoke-virtual {p3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->closeTrackCursor()V

    .line 768
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->add(ILcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 771
    return-void
.end method

.method resetStatusPending()V
    .locals 3

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 789
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/musicenhancer/DownloadAlbumInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    check-cast v0, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 791
    .restart local v0       #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    invoke-virtual {v0}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    goto :goto_0

    .line 794
    :cond_1
    return-void
.end method

.method sendCompleteOneDownloadBroadcast(Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    .locals 3
    .parameter "downloadAlbumInfo"
    .parameter "updateCount"

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_complete_one_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "total_download_count"

    iget v2, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string v1, "current_download_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string v1, "is_update_current"

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->isUpdateCurrent()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    const-string v1, "album_id"

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    const-string v1, "albumart_path"

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumArtpath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v1, v0}, Lcom/htc/musicenhancer/EnhancerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 740
    return-void
.end method

.method setFailCount(I)V
    .locals 0
    .parameter "failCount"

    .prologue
    .line 829
    iput p1, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mFailCount:I

    .line 830
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mDownloadAlbumInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method totalDownloadCount()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->mTotalDownloadCount:I

    return v0
.end method
