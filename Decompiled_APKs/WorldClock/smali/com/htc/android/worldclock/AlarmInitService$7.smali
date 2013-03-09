.class Lcom/htc/android/worldclock/AlarmInitService$7;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Lcom/htc/android/worldclock/AlarmKlaxon$StopCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmInitService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/worldclock/AlarmInitService;->mIntentReceiver:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 299
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/ResUtils;->stopForeground(Landroid/app/Service;Z)V

    .line 300
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$7;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmInitService;->access$100(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method
