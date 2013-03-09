.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DlnaNotifyStub"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isServiceReady(Ljava/lang/ref/WeakReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "DLNA"

    const-string v2, "mActivity.get() is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "DLNA"

    const-string v2, "mActivity is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerAddedNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerAddedNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z
    invoke-static {v1, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Z)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    new-instance v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server update: ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server update: Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server remove: ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error Reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->isServiceReady(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v1, p2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->SetImgPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
