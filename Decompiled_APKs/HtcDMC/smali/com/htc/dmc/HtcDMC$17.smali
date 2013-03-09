.class Lcom/htc/dmc/HtcDMC$17;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 3892
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 3895
    :try_start_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v1, 0x1

    #setter for: Lcom/htc/dmc/HtcDMC;->mOncePlayed:Z
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC;->access$2702(Lcom/htc/dmc/HtcDMC;Z)Z

    .line 3896
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$5200(Lcom/htc/dmc/HtcDMC;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3897
    iget-object v8, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$5200(Lcom/htc/dmc/HtcDMC;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;

    iget-object v3, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dmc/HtcDMC;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v0

    #setter for: Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v8, v0}, Lcom/htc/dmc/HtcDMC;->access$5202(Lcom/htc/dmc/HtcDMC;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3899
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$1500(Lcom/htc/dmc/HtcDMC;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$1400(Lcom/htc/dmc/HtcDMC;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 3903
    :goto_0
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-virtual {v0}, Lcom/htc/dmc/HtcDMC;->setStateSync()V

    .line 3912
    :cond_0
    :goto_1
    return-void

    .line 3901
    :cond_1
    const-string v0, "[HtcDMC]"

    const-string v1, "UI Next/Prev safty block ..."

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3905
    :catch_0
    move-exception v7

    .line 3906
    .local v7, e:Ljava/lang/NullPointerException;
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$17;->this$0:Lcom/htc/dmc/HtcDMC;

    #calls: Lcom/htc/dmc/HtcDMC;->isServiceHealthy()Z
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$2000(Lcom/htc/dmc/HtcDMC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3907
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 3908
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 3910
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
