.class Lcom/htc/android/worldclock/TimerService$5;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Lcom/htc/android/worldclock/TimerKlaxon$StopCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerService;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 248
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$100(Lcom/htc/android/worldclock/TimerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$100(Lcom/htc/android/worldclock/TimerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    iget-object v0, v0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    iget-object v1, v1, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/worldclock/TimerService;->mIntentReceiver:Lcom/htc/android/worldclock/TimerService$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 259
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/ResUtils;->stopForeground(Landroid/app/Service;Z)V

    .line 260
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$5;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$200(Lcom/htc/android/worldclock/TimerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method
