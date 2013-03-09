.class Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

.field final synthetic val$mRecvAction:Ljava/lang/String;

.field final synthetic val$mRecvIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService$IntentReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iput-object p2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvAction:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x1000

    const/4 v4, -0x1

    .line 409
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvAction:Ljava/lang/String;

    const-string v3, "snooze"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvIntent:Landroid/content/Intent;

    const-string v3, "alarm_description"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvIntent:Landroid/content/Intent;

    const-string v3, "alarm_id"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 412
    .local v1, id:I
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v3, v3, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v4, v4, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I
    invoke-static {v4}, Lcom/htc/android/worldclock/AlarmService;->access$900(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v4

    #calls: Lcom/htc/android/worldclock/AlarmService;->snooze(Landroid/content/Context;ILjava/lang/String;I)V
    invoke-static {v2, v3, v1, v0, v4}, Lcom/htc/android/worldclock/AlarmService;->access$1000(Lcom/htc/android/worldclock/AlarmService;Landroid/content/Context;ILjava/lang/String;I)V

    .line 413
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$600(Lcom/htc/android/worldclock/AlarmService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 419
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #id:I
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvAction:Ljava/lang/String;

    const-string v3, "dismiss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->val$mRecvIntent:Landroid/content/Intent;

    const-string v3, "alarm_id"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 416
    .restart local v1       #id:I
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v3, v3, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #calls: Lcom/htc/android/worldclock/AlarmService;->dismiss(Landroid/content/Context;I)V
    invoke-static {v2, v3, v1}, Lcom/htc/android/worldclock/AlarmService;->access$1100(Lcom/htc/android/worldclock/AlarmService;Landroid/content/Context;I)V

    .line 417
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$600(Lcom/htc/android/worldclock/AlarmService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
