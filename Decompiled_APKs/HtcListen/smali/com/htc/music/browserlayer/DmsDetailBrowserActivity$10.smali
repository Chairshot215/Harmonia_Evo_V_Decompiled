.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverSubscribed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDlnaMode:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurDMR:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "[DMS]"

    const-string v2, "ServiceConnection"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[DMS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$10;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
