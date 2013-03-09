.class Lcom/android/mms/ui/ComposeMessageActivity$91;
.super Lcom/android/mms/ui/MessagingListener;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 16130
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 3

    .prologue
    .line 16133
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16155
    :cond_0
    :goto_0
    return-void

    .line 16137
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16138
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16142
    :cond_2
    const-string v0, "ComposeMessageActivity"

    const-string v1, "onConatctInfoChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16144
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientList;->refreshList(Landroid/content/Context;)V

    .line 16145
    :cond_3
    const-string v0, "ComposeMessageActivity"

    const-string v1, "refreshList ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16147
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailTitleEnhance()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->refreshHeaderRecipientList()Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13500(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    .line 16151
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16152
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDeleteDetailScreen(J)V
    .locals 5
    .parameter "thread_id"

    .prologue
    .line 16208
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeleteDetailScreen> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16210
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16211
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHtcThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v0

    .line 16215
    .local v0, t_id:J
    :goto_0
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16216
    const-string v2, "ComposeMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish detail screen> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16217
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 16219
    :cond_0
    return-void

    .line 16213
    .end local v0           #t_id:J
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v0

    .restart local v0       #t_id:J
    goto :goto_0
.end method

.method public onNewNotification(ILandroid/content/Intent;)V
    .locals 8
    .parameter "id"
    .parameter "noticeInfo"

    .prologue
    const-wide/16 v6, 0x0

    .line 16159
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewNotification> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mIsForeground> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsForeground:Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16161
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsForeground:Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16162
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16164
    const/16 v3, 0x7b

    if-ne p1, v3, :cond_1

    .line 16165
    if-eqz p2, :cond_1

    .line 16168
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16169
    const-string v3, "notify_contact_id"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 16175
    .local v1, t_id:J
    :goto_0
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t_id> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16177
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    .line 16178
    const-string v3, "notify_is_new_incoming"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 16181
    .local v0, isNew:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->checkPendingNotification()V

    .line 16183
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v4, "notify_time"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLastReceivedNotificationTimestamp:J
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16002(Lcom/android/mms/ui/ComposeMessageActivity;J)J

    .line 16188
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16189
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v4, 0xbb8

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->cancelNotificationByThreadIds(J)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16100(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .line 16198
    .end local v0           #isNew:Z
    .end local v1           #t_id:J
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16199
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->removeNotification(IJ)V

    .line 16204
    :cond_2
    return-void

    .line 16172
    :cond_3
    const-string v3, "notify_thread_id"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .restart local v1       #t_id:J
    goto :goto_0
.end method
