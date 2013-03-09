.class Lcom/android/mms/ui/MessageTabSwitchActivity$2;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "MessageTabSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTabSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 472
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTabSwitchActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 475
    :sswitch_0
    const-string v2, "MessageTabSwitchActivity"

    const-string v3, "get unread count> "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 478
    .local v1, counts:[I
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v2, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-object v3, v3, Lcom/android/mms/ui/MessageTabSwitchActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 484
    .end local v1           #counts:[I
    :sswitch_1
    const-string v2, "MessageTabSwitchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel notification> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    goto :goto_0

    .line 489
    :sswitch_2
    const-string v2, "MessageTabSwitchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel notification> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->removeMessages(I)V

    .line 492
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 493
    .local v0, Newmsg:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v0, Landroid/os/Message;->what:I

    .line 494
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 495
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/mms/ui/MessageTabSwitchActivity$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method
