.class Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "ServiceManagerDLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v0, 0x0

    .line 391
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][contentAddedNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 411
    .local v1, pageInfoInter:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 412
    cmp-long v2, p3, p5

    if-gez v2, :cond_2

    .line 414
    invoke-virtual {v1, p3, p4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 415
    invoke-virtual {v1, p5, p6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 423
    :goto_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v1, v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 424
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e9b

    invoke-virtual {v2, v3, v1, v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v1, p5, p6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 420
    invoke-virtual {v1, p3, p4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    goto :goto_1
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 7
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 430
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const/4 v0, 0x0

    .line 437
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][contentBrowsingDoneNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 456
    .local v1, pageInfoInter:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 457
    cmp-long v2, p3, p5

    if-gez v2, :cond_2

    .line 459
    invoke-virtual {v1, p3, p4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 460
    invoke-virtual {v1, p5, p6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 467
    :goto_1
    if-ne v5, p7, :cond_4

    .line 469
    cmp-long v2, p3, p5

    if-gez v2, :cond_3

    .line 470
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 482
    :goto_2
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][contentBrowsingDoneNotify]: container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][contentBrowsingDoneNotify]: isComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][contentBrowsingDoneNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 487
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e95

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 488
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e9c

    invoke-virtual {v2, v3, v1, v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 464
    :cond_2
    invoke-virtual {v1, p5, p6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 465
    invoke-virtual {v1, p3, p4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    goto/16 :goto_1

    .line 472
    :cond_3
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_2

    .line 476
    :cond_4
    cmp-long v2, p3, p5

    if-gez v2, :cond_5

    .line 477
    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_2

    .line 479
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    goto/16 :goto_2
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "serve_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v1, "container"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "error_id"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    const-string v1, "error_string"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x2767

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 500
    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;-><init>()V

    .line 507
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iput-object p2, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 508
    iput-object p3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x4ea0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 510
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 3
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][getContentItemDetailsNotify]:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v1, 0x4e94

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 523
    return-void
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;-><init>()V

    .line 514
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iput-object p2, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 515
    iput-object p3, v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 516
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x4e89

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 517
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 528
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 277
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][serverAddedNotify]: name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    .line 280
    .local v0, newServer:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    iput-object p1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 281
    iput-object p2, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x4e88

    invoke-virtual {v1, v2, v0, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 286
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x4e98

    invoke-virtual {v1, v2, v0, v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 287
    return-void
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 7
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 290
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][serverListUpdateNotify]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 293
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    array-length v2, p1

    if-le v2, v0, :cond_0

    .line 295
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    .line 296
    .local v1, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 297
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 298
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v1           #serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 308
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v3, 0x4e99

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 309
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x4e9a

    const/16 v8, 0x4e88

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, object:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 325
    .local v2, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    const/4 v0, 0x0

    .end local v1           #object:Ljava/lang/Object;
    .local v0, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 327
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #object:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 325
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_3
    instance-of v3, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v3, :cond_5

    .line 332
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ServiceManagerDLNA][serverRemovedNotify]: random... break it: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v0           #nIndex:I
    .end local v1           #object:Ljava/lang/Object;
    .end local v2           #serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v3

    iput-boolean v7, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRemove:Z

    .line 355
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v4

    invoke-virtual {v3, v8, v4, v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 356
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    #getter for: Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .restart local v0       #nIndex:I
    .restart local v1       #object:Ljava/lang/Object;
    .restart local v2       #serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    :cond_5
    move-object v2, v1

    .line 335
    check-cast v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 337
    iget-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    iput-boolean v7, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRemove:Z

    .line 341
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 342
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v8, v2, v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 343
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v3, v9, v2, v6}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 345
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ServiceManagerDLNA][serverRemovedNotify]: Name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x4e9d

    const/16 v2, 0x4e89

    const/4 v3, 0x0

    .line 362
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    .line 368
    .local v0, serverInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    iput-object p1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 369
    iput-object p2, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mUriThumb:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 372
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 374
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v4, v0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 375
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;->this$0:Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v1, v4, v0, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 0
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 532
    return-void
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method
