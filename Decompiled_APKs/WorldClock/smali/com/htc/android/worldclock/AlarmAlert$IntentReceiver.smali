.class public Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 860
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 865
    .local v1, pm:Landroid/os/PowerManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm.isScreenOn() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 867
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;

    invoke-direct {v3, p0}, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver$1;-><init>(Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 878
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 889
    .end local v1           #pm:Landroid/os/PowerManager;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const-string v3, "cancel_alert"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 881
    const-string v3, "Receive ACTION_CANCEL_ALERT"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 882
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    const/4 v4, 0x1

    #setter for: Lcom/htc/android/worldclock/AlarmAlert;->mCancelAlert:Z
    invoke-static {v3, v4}, Lcom/htc/android/worldclock/AlarmAlert;->access$2402(Lcom/htc/android/worldclock/AlarmAlert;Z)Z

    .line 883
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/AlarmAlert;->finish()V

    goto :goto_0

    .line 884
    :cond_2
    const-string v3, "com.htc.lockscreen.volumekey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    const-string v3, "Receive ACTION_REQUEST_VOLUMEKEY"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmAlert$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->doActionVolumeKey()V
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmAlert;->access$2200(Lcom/htc/android/worldclock/AlarmAlert;)V

    goto :goto_0
.end method
