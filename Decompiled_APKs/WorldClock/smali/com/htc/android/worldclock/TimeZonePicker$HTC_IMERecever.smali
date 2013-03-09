.class public Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;
.super Landroid/content/BroadcastReceiver;
.source "TimeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HTC_IMERecever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimeZonePicker;


# direct methods
.method public constructor <init>(Lcom/htc/android/worldclock/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 681
    const-string v1, "SIP_HEIGHT"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 683
    .local v0, sipHeight:I
    if-nez v0, :cond_0

    .line 684
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #setter for: Lcom/htc/android/worldclock/TimeZonePicker;->mIsSipExist:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1502(Lcom/htc/android/worldclock/TimeZonePicker;Z)Z

    .line 688
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    #calls: Lcom/htc/android/worldclock/TimeZonePicker;->checkFocusToHideSIP()V
    invoke-static {v1}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1600(Lcom/htc/android/worldclock/TimeZonePicker;)V

    .line 689
    return-void

    .line 686
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/TimeZonePicker$HTC_IMERecever;->this$0:Lcom/htc/android/worldclock/TimeZonePicker;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/worldclock/TimeZonePicker;->mIsSipExist:Z
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/TimeZonePicker;->access$1502(Lcom/htc/android/worldclock/TimeZonePicker;Z)Z

    goto :goto_0
.end method
