.class Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/SetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/SetAlarm;Lcom/htc/android/worldclock/SetAlarm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;-><init>(Lcom/htc/android/worldclock/SetAlarm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 889
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 890
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/worldclock/SetAlarm;->mMediaChanged:Z
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/SetAlarm;->access$2702(Lcom/htc/android/worldclock/SetAlarm;Z)Z

    .line 891
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$2800(Lcom/htc/android/worldclock/SetAlarm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$MediaReceiver;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    #getter for: Lcom/htc/android/worldclock/SetAlarm;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/SetAlarm;->access$700(Lcom/htc/android/worldclock/SetAlarm;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
