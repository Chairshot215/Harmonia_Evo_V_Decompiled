.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1302(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "DLNA"

    const-string v2, "mService is null in onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$17;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1400(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$DlnaNotifyStub;

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
