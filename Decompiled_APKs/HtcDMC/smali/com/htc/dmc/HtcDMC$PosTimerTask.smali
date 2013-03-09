.class Lcom/htc/dmc/HtcDMC$PosTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3641
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3641
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$PosTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 3645
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3661
    :goto_0
    return-void

    .line 3648
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mDMCStatus:Lcom/htc/dmc/HtcDMC$DMCStatus;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2400(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dmc/HtcDMC$DMCStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v3}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v4}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/dmc/HtcDMC$DMCStatus;->lPositionDyn:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3658
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3659
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3660
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3650
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 3651
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$PosTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$2000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3652
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 3653
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3655
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
