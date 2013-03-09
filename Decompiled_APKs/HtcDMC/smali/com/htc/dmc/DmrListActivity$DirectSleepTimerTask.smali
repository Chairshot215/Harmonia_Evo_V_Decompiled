.class Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;
.super Ljava/util/TimerTask;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectSleepTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1326
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1330
    const-string v1, "[DmrListActivity]"

    const-string v2, "DMR Selection delayed, now go..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/htc/dmc/DmrListActivity;->access$1300(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/dmc/DmrListActivity;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v2

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/htc/dmc/DmrListActivity;->access$1202(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1333
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1334
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1335
    return-void
.end method
