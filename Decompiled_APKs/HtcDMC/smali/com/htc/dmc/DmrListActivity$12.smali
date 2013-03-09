.class Lcom/htc/dmc/DmrListActivity$12;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1355
    const-string v0, "[DmrListActivity]"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBindService:Z
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$1600(Lcom/htc/dmc/DmrListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    const-string v0, "[DmrListActivity]"

    const-string v1, "return, since service should already unbinded"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-static {p2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    #setter for: Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Lcom/htc/dmc/DmrListActivity;->access$1702(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 1366
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$1700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1367
    const-string v0, "[DmrListActivity]"

    const-string v1, "MiddleLayer Service null"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$1700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1900(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 1374
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$1700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mFilter:I
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$2000(Lcom/htc/dmc/DmrListActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(II)V

    .line 1378
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectMode:I
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$1500(Lcom/htc/dmc/DmrListActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$400(Lcom/htc/dmc/DmrListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1380
    const-string v0, "[DmrListActivity]"

    const-string v1, "Direct Mode activates..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v8, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1300(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;-><init>(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$1;)V

    const-wide/16 v3, 0x1388

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/DmrListActivity;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v8, v0}, Lcom/htc/dmc/DmrListActivity;->access$1302(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1389
    :catch_0
    move-exception v7

    .line 1390
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 1397
    :try_start_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$12;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mNotifyCallback:Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;
    invoke-static {v3}, Lcom/htc/dmc/DmrListActivity;->access$1900(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$DlnaNotifyStub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :goto_0
    return-void

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
