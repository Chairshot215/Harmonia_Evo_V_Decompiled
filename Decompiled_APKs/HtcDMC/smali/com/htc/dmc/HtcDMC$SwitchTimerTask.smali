.class Lcom/htc/dmc/HtcDMC$SwitchTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDMC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method private constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dmc/HtcDMC;Lcom/htc/dmc/HtcDMC$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3855
    invoke-direct {p0, p1}, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;-><init>(Lcom/htc/dmc/HtcDMC;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$SwitchTimerTask;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$5200(Lcom/htc/dmc/HtcDMC;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dmc/HtcDMC;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v1

    #setter for: Lcom/htc/dmc/HtcDMC;->mSwitchTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/htc/dmc/HtcDMC;->access$5202(Lcom/htc/dmc/HtcDMC;Ljava/util/Timer;)Ljava/util/Timer;

    .line 3860
    return-void
.end method
