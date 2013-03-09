.class public Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 327
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 328
    const-string v1, "mIntentReceiver, onReceive"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #setter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvIntent:Landroid/content/Intent;
    invoke-static {v1, p2}, Lcom/htc/android/worldclock/AlarmInitService;->access$402(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const-string v2, "alarm_action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$502(Lcom/htc/android/worldclock/AlarmInitService;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIntentReceiver, mRecvAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$500(Lcom/htc/android/worldclock/AlarmInitService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmInitService;->access$500(Lcom/htc/android/worldclock/AlarmInitService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "snooze"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "snooze_duration"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, snooze:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvSnoozeMinutes:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$602(Lcom/htc/android/worldclock/AlarmInitService;I)I

    .line 336
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    const v3, 0x7f08004a

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvSnoozeMinutes:I
    invoke-static {v6}, Lcom/htc/android/worldclock/AlarmInitService;->access$600(Lcom/htc/android/worldclock/AlarmInitService;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/worldclock/AlarmInitService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 340
    .end local v0           #snooze:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;-><init>(Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method
