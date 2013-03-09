.class Lcom/htc/dmc/DmrListActivity$DirectTimerTask;
.super Ljava/util/TimerTask;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1338
    invoke-direct {p0, p1}, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;-><init>(Lcom/htc/dmc/DmrListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1342
    const-string v1, "[DmrListActivity]"

    const-string v2, "DirectMode not get DMR, showing DMRDialog"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v3, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/htc/dmc/DmrListActivity;->access$1300(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/dmc/DmrListActivity;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v2

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/htc/dmc/DmrListActivity;->access$1302(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1344
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectMode:I
    invoke-static {v1, v2}, Lcom/htc/dmc/DmrListActivity;->access$1502(Lcom/htc/dmc/DmrListActivity;I)I

    .line 1346
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1347
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DirectTimerTask;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1348
    return-void
.end method
