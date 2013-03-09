.class Lcom/android/mms/ui/ConversationListBaseActivity$9;
.super Lcom/android/mms/ui/MessagingListener;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2902
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConatctInfoChange()V
    .locals 3

    .prologue
    .line 2905
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    if-nez v1, :cond_1

    .line 2907
    const/16 v1, 0x7e

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2908
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListCursorAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    .line 2909
    .local v0, adapter:Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;

    if-eqz v1, :cond_0

    .line 2910
    check-cast v0, Lcom/android/mms/ui/ConversationListBaseAdapter;

    .end local v0           #adapter:Landroid/widget/CursorAdapter;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseAdapter;->isRequerying:Z

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2916
    :cond_1
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onConatctInfoChange>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v1, :cond_0

    .line 2919
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onNewNotification(ILandroid/content/Intent;)V
    .locals 4
    .parameter "id"
    .parameter "noticeInfo"

    .prologue
    const/16 v3, 0x11

    .line 2925
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewNotification> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsForeground> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->hasWindowFocus()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2929
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2932
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeMessages(I)V

    .line 2934
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeMessages(I)V

    .line 2935
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->removeMessages(I)V

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->removeNotification(IJI)V

    .line 2948
    :cond_1
    :goto_0
    return-void

    .line 2942
    :cond_2
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    .line 2943
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$9;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->removeNotification(IJI)V

    goto :goto_0
.end method
