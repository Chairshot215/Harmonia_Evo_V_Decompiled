.class Lcom/htc/dmc/HtcDMC$3;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method

.method private CheckAndUpdateAlbumArt(JLjava/lang/String;)V
    .locals 1
    .parameter "newIndex"
    .parameter "newPath"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    if-eq v0, p3, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iput-object p3, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1289
    :cond_0
    return-void
.end method

.method private SendErr(ILjava/lang/String;I)V
    .locals 5
    .parameter "nToastee"
    .parameter "szArg"
    .parameter "nArg"

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1359
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1360
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1362
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 1364
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1365
    return-void
.end method

.method private SendRefresh(I)V
    .locals 4
    .parameter "nRefreshee"

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1345
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1346
    return-void
.end method

.method private SendRefresh(ILjava/lang/String;)V
    .locals 5
    .parameter "nRefreshee"
    .parameter "szArg"

    .prologue
    .line 1349
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1350
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1351
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1354
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1355
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
    .line 1033
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1038
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
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
    .line 1386
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_0
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1043
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 2
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
    .line 1397
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_0
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1049
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
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
    .line 1408
    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    return-void
.end method

.method public contentThumbnailUpdateNotify2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;)V
    .locals 0
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1063
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
    .line 1413
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1068
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:!!controllerError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    :goto_0
    return-void

    .line 1075
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/dmc/HtcDMC$3;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1081
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:controllerResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_0
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    const-string v1, "[HtcDMC]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentItemDetailsNotify of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$4000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1372
    :cond_0
    const-string v1, "[HtcDMC]"

    const-string v2, "MLCallback:already unreg, or this callback is not called by DMC, return"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :goto_0
    return-void

    .line 1375
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v2, 0x0

    #setter for: Lcom/htc/dmc/HtcDMC;->mIsRequestDetails:Z
    invoke-static {v1, v2}, Lcom/htc/dmc/HtcDMC;->access$4002(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 1377
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #setter for: Lcom/htc/dmc/HtcDMC;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v1, p3}, Lcom/htc/dmc/HtcDMC;->access$4102(Lcom/htc/dmc/HtcDMC;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1378
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1380
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1093
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 3
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback: playlist created res - Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iput-wide p2, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCount:J

    .line 1108
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iput-wide p4, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    .line 1110
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1132
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 1133
    .local v1, uniqueID:Ljava/lang/String;
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 1135
    .local v0, rendererName:Ljava/lang/String;
    const-string v2, "[HtcDMC]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Added:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1137
    const-string v2, "[HtcDMC]"

    const-string v3, "MLCallback:already unreg, return"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1141
    const-string v2, "[HtcDMC]"

    const-string v3, "Selected DMR added"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(ILjava/lang/String;)V

    .line 1144
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1127
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 3
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1153
    const-string v1, "[HtcDMC]"

    const-string v2, "MLCallback: DMR List update"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    const-string v1, "[HtcDMC]"

    const-string v2, "MLCallback:already unreg, return"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1159
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1160
    const-string v1, "[HtcDMC]"

    const-string v2, "Selected DMR existed"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/16 v1, 0x8

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(ILjava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const-string v0, "[HtcDMC]"

    const-string v1, "Selected DMR Removed"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/16 v0, 0x67

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/dmc/HtcDMC$3;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
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
    .line 1185
    return-void
.end method

.method public rendererThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1190
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1195
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    const-string v0, "[HtcDMC]"

    const-string v1, "Current DMS added"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1213
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3900(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    const-string v0, "[HtcDMC]"

    const-string v1, "Current DMS Removed"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/dmc/HtcDMC$3;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    return-void
.end method

.method public serverThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1241
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 6
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1246
    const-string v0, "[HtcDMC]"

    const-string v1, "updateControllerItemInfo"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 1253
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 1254
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 1257
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1258
    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/dmc/HtcDMC$3;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    .line 1262
    :goto_1
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path ori:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path dl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1266
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPosition:J

    .line 1267
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPositionDyn:J

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->lCurrentIndex:J

    .line 1272
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lDuration:J

    .line 1275
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->saveInfo()V

    .line 1277
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1280
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurMode:I
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$000(Lcom/htc/dmc/HtcDMC;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1281
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto/16 :goto_0

    .line 1260
    :cond_4
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/dmc/HtcDMC$3;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :goto_0
    return-void

    .line 1298
    :cond_0
    const-string v0, "[HtcDMC]"

    const-string v1, "updateControllerItemThumbnail"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto :goto_0
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1307
    const-string v0, "[HtcDMC]"

    const-string v1, "updateControllerStatus"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-eq v0, v1, :cond_1

    .line 1315
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** updStatus - Playstate Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nPlayState:I

    .line 1318
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1322
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    if-eq v0, v1, :cond_2

    .line 1323
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1324
    :cond_2
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    if-eq v0, v1, :cond_3

    .line 1325
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1327
    :cond_3
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    if-eq v0, v1, :cond_4

    .line 1328
    const-string v0, "[HtcDMC]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updStatus - Vol Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nVolume:I

    .line 1330
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    .line 1333
    :cond_4
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPositionDyn:J

    .line 1334
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bMuteState:Z

    .line 1335
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->bShuffleState:Z

    .line 1336
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/dmc/HtcDMC$DMCStatus;->nRepeatState:I

    goto/16 :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3700(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    const-string v0, "[HtcDMC]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :goto_0
    return-void

    .line 1422
    :cond_0
    const-string v0, "[HtcDMC]"

    const-string v1, "updateDownloadStoreAlbumArtNotify"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$3;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCItemInfo:Lcom/htc/dmc/HtcDMC$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$3800(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/dmc/HtcDMC$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1425
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/dmc/HtcDMC$3;->SendRefresh(I)V

    goto :goto_0
.end method
