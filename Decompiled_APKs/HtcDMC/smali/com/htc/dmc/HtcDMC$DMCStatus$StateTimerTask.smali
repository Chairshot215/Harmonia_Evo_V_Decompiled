.class Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC$DMCStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateTimerTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/dmc/HtcDMC$DMCStatus;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC$DMCStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;->this$1:Lcom/htc/dmc/HtcDMC$DMCStatus;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC$DMCStatus;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;-><init>(Lcom/htc/dmc/HtcDMC$DMCStatus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x68

    .line 645
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;->this$1:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 646
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;->this$1:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$DMCStatus$StateTimerTask;->this$1:Lcom/htc/dmc/HtcDMC$DMCStatus;

    iget-object v1, v1, Lcom/htc/dmc/HtcDMC$DMCStatus;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dmc/HtcDMC;->access$2800(Lcom/htc/dmc/HtcDMC;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 648
    return-void
.end method
