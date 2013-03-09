.class Lcom/htc/dmc/HtcDMC$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 546
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 550
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurSource:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1300(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    const-string v2, "[HtcDMC]"

    const-string v3, "ACTION_MEDIA_SCANNER_STARTED recieved"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_2
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    const-string v2, "[HtcDMC]"

    const-string v3, "ACTION_MEDIA_SCANNER_FINISHED recieved"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->DMCPreparePlaying()Z
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2200(Lcom/htc/dmc/HtcDMC;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v2, v4}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto :goto_0

    .line 562
    :cond_3
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    const-string v2, "[HtcDMC]"

    const-string v3, "ACTION_MEDIA_UNMOUNTED recieved"

    invoke-static {v2, v3}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :try_start_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 568
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->nUserState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$2;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v3, 0x2

    #calls: Lcom/htc/dmc/HtcDMC;->setDMCLine(I)V
    invoke-static {v2, v3}, Lcom/htc/dmc/HtcDMC;->access$2300(Lcom/htc/dmc/HtcDMC;I)V

    goto/16 :goto_0

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
