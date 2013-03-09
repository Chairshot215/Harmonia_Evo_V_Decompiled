.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/EASRequestController$SyncSourceRequestController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailRequestController"
.end annotation


# instance fields
.field mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

.field mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

.field mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

.field mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

.field private mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)V
    .locals 2
    .parameter
    .parameter "syncManager"
    .parameter "exAccountList"

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 1556
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 1558
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    .line 1559
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    .line 1560
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-direct {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    .line 1561
    new-instance v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    invoke-direct {v0, p1, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    .line 1562
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1565
    const/4 v0, 0x0

    .line 1566
    .local v0, handle:Z
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->dispatchBlockRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 1567
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->dispathSendRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v0, v2

    .line 1568
    :goto_1
    if-nez v0, :cond_2

    .line 1569
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->dispatchSyncRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1571
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1566
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1567
    goto :goto_1
.end method

.method dispatchBlockRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 1602
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_0

    .line 1603
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->getAttachment(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V

    .line 1634
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1604
    :cond_0
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    .line 1605
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->getAttachmentBatch(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1606
    :cond_1
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 1607
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.attach.part_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1608
    .local v0, partId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->cancelFetchEMailAttach(JLjava/lang/String;)V

    goto :goto_0

    .line 1609
    .end local v0           #partId:Ljava/lang/String;
    :cond_2
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 1610
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->isAttachDownloading(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1611
    :cond_3
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x28

    if-ne v2, v3, :cond_4

    .line 1612
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->fetchMailItem(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1613
    :cond_4
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_5

    .line 1614
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v3, "parameter.mailbody.uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1615
    .local v1, uid:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->cancelFetchMailItem(JLjava/lang/String;)V

    goto :goto_0

    .line 1616
    .end local v1           #uid:Ljava/lang/String;
    :cond_5
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x34

    if-ne v2, v3, :cond_6

    .line 1617
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->moveMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1618
    :cond_6
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x35

    if-ne v2, v3, :cond_7

    .line 1619
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->getOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1620
    :cond_7
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x36

    if-ne v2, v3, :cond_8

    .line 1621
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->setOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1622
    :cond_8
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_9

    .line 1623
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->cancelOOF(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto/16 :goto_0

    .line 1624
    :cond_9
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x37

    if-ne v2, v3, :cond_a

    .line 1625
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->cancelSearchGlobalMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1626
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->searchGlobalMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto/16 :goto_0

    .line 1627
    :cond_a
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x38

    if-ne v2, v3, :cond_b

    .line 1628
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->cancelSearchGlobalMail(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto/16 :goto_0

    .line 1629
    :cond_b
    iget v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v3, 0x39

    if-ne v2, v3, :cond_c

    .line 1630
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;->emptyFolderContents(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto/16 :goto_0

    .line 1632
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method dispatchSyncRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1575
    return-void
.end method

.method dispathSendRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 1637
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1644
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1639
    :cond_0
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1642
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->finish()V

    .line 1669
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->finish()V

    .line 1674
    return-void
.end method

.method public getRunningExchangeSyncSources()Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->getRunningExchangeSyncSources()Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v0

    return-object v0
.end method

.method public getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->getRunningRequest()Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v0

    return-object v0
.end method

.method public isBusy(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->isBusy(J)Z

    move-result v0

    return v0
.end method

.method public isOnlyRequest(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->isOnlyRequest(I)Z

    move-result v0

    return v0
.end method

.method public isRequestEmpty()Z
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->isRequestEmpty()Z

    move-result v0

    return v0
.end method

.method public isRequestEmpty(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->isRequestEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isSendingMail(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->isSendingMail(J)Z

    move-result v0

    return v0
.end method

.method public isSendingRequestEmpty()Z
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->isRequestEmpty()Z

    move-result v0

    return v0
.end method

.method public removeAllRequest()V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->removeAllRequest()V

    .line 1649
    return-void
.end method

.method public removeRequestByAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->removeRequestByAccountId(J)V

    .line 1653
    return-void
.end method

.method public setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V

    .line 1657
    return-void
.end method

.method public setPause(Z)V
    .locals 1
    .parameter "isPause"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->setPause(Z)V

    .line 1682
    return-void
.end method

.method public stopRunning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1660
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->stopRunning()V

    .line 1661
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSyncReqThread:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;

    .line 1662
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;->stopRunning()V

    .line 1663
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailSendReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailSendRequestController;

    .line 1664
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mAttachController:Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;

    .line 1665
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestController;->mMailBodyController:Lcom/htc/android/mail/eassvc/core/EASRequestController$MailBodyDownloadController;

    .line 1666
    return-void
.end method
