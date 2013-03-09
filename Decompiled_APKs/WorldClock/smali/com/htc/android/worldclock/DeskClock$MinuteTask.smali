.class Lcom/htc/android/worldclock/DeskClock$MinuteTask;
.super Ljava/util/TimerTask;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinuteTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/DeskClock;Lcom/htc/android/worldclock/DeskClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/DeskClock$MinuteTask;-><init>(Lcom/htc/android/worldclock/DeskClock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 346
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$000(Lcom/htc/android/worldclock/DeskClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$MinuteTask;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mHandy:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2100(Lcom/htc/android/worldclock/DeskClock;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
