.class public Lcom/htc/android/worldclock/AlarmService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 394
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 396
    move-object v1, p2

    .line 397
    .local v1, mRecvIntent:Landroid/content/Intent;
    const-string v3, "alarm_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, mRecvAction:Ljava/lang/String;
    const-string v3, "snooze"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "snooze_duration"

    const-string v5, "10"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, snooze:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I
    invoke-static {v3, v4}, Lcom/htc/android/worldclock/AlarmService;->access$902(Lcom/htc/android/worldclock/AlarmService;I)I

    .line 402
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const v5, 0x7f08004a

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I
    invoke-static {v8}, Lcom/htc/android/worldclock/AlarmService;->access$900(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/worldclock/AlarmService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 406
    .end local v2           #snooze:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;-><init>(Lcom/htc/android/worldclock/AlarmService$IntentReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 421
    return-void
.end method
