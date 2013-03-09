.class Lcom/htc/android/worldclock/AlarmService$8;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .prologue
    .line 366
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 367
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$800(Lcom/htc/android/worldclock/AlarmService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$800(Lcom/htc/android/worldclock/AlarmService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 371
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/worldclock/AlarmService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 378
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/ResUtils;->stopForeground(Landroid/app/Service;Z)V

    .line 379
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$8;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$600(Lcom/htc/android/worldclock/AlarmService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    return-void

    .line 375
    :catch_0
    move-exception v0

    goto :goto_0
.end method
