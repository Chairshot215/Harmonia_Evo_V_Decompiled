.class Lcom/htc/android/worldclock/Timer$MediaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$MediaReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/Timer;Lcom/htc/android/worldclock/Timer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/Timer$MediaReceiver;-><init>(Lcom/htc/android/worldclock/Timer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 555
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 556
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$MediaReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/Timer;->mMediaChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$1802(Lcom/htc/android/worldclock/Timer;Z)Z

    .line 557
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$MediaReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$1900(Lcom/htc/android/worldclock/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$MediaReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$800(Lcom/htc/android/worldclock/Timer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
