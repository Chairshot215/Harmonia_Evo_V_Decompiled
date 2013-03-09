.class Lcom/htc/music/DMCServiceManager$2;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method

.method private CheckAndUpdateAlbumArt(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p3, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    :cond_0
    return-void
.end method

.method private SendErr(ILjava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p3, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private SendRefresh(I)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private SendRefresh(ILjava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
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

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
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

.method public contentThumbnailUpdateNotify2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;)V
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentItemDetailsNotify of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2400(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback:already unreg, or this callback is not called by DMC, return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z
    invoke-static {v1, v2}, Lcom/htc/music/DMCServiceManager;->access$2402(Lcom/htc/music/DMCServiceManager;Z)Z

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v1, p3}, Lcom/htc/music/DMCServiceManager;->access$2502(Lcom/htc/music/DMCServiceManager;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-wide p2, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-wide p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Added:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[DMCServiceManager]"

    const-string v3, "MLCallback:already unreg, return"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[DMCServiceManager]"

    const-string v3, "Selected DMR added"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(ILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto :goto_0
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback: DMR List update"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback:already unreg, return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[DMCServiceManager]"

    const-string v2, "Selected DMR existed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "Selected DMR Removed"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
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

.method public rendererThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "Current DMS added"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "Current DMS Removed"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6a

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->SendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public serverThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerItemInfo"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szAlbum:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szDate:Ljava/lang/String;

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    :goto_1
    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J

    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->saveInfo()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->CheckAndUpdateAlbumArt(JLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerItemThumbnail"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto :goto_0
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerStatus"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-eq v0, v1, :cond_1

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    if-eq v0, v1, :cond_3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    if-eq v0, v1, :cond_4

    const-string v0, "[DMCServiceManager]"

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

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    :cond_4
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bMuteState:Z

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    goto/16 :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateDownloadStoreAlbumArtNotify"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->SendRefresh(I)V

    goto :goto_0
.end method
