.class Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 343
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$500(Lcom/htc/android/worldclock/AlarmInitService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "snooze"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$400(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "alarm_description"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$400(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "alarm_id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 346
    .local v1, id:I
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v3, v3, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v4, v4, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvSnoozeMinutes:I
    invoke-static {v4}, Lcom/htc/android/worldclock/AlarmInitService;->access$600(Lcom/htc/android/worldclock/AlarmInitService;)I

    move-result v4

    #calls: Lcom/htc/android/worldclock/AlarmInitService;->snooze(Landroid/content/Context;ILjava/lang/String;I)V
    invoke-static {v2, v3, v1, v0, v4}, Lcom/htc/android/worldclock/AlarmInitService;->access$700(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Context;ILjava/lang/String;I)V

    .line 347
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$100(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #id:I
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mRecvAction:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$500(Lcom/htc/android/worldclock/AlarmInitService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dismiss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v3, v3, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #calls: Lcom/htc/android/worldclock/AlarmInitService;->dismiss(Landroid/content/Context;)V
    invoke-static {v2, v3}, Lcom/htc/android/worldclock/AlarmInitService;->access$800(Lcom/htc/android/worldclock/AlarmInitService;Landroid/content/Context;)V

    .line 350
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver$1;->this$1:Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;

    iget-object v2, v2, Lcom/htc/android/worldclock/AlarmInitService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$100(Lcom/htc/android/worldclock/AlarmInitService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
