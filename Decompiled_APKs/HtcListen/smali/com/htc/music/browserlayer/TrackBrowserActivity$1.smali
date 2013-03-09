.class Lcom/htc/music/browserlayer/TrackBrowserActivity$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$102(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[PluginNowPlayingListActivity]"

    const-string v2, "mConnection, mDlnaService is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mcurDMR:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->access$402(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
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
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mDlnaService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$DlnaNotifyStub;

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
