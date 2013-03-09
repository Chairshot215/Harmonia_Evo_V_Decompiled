.class Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;
.super Landroid/database/DataSetObserver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 14711
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 14712
    return-void
.end method


# virtual methods
.method public declared-synchronized onChanged()V
    .locals 3

    .prologue
    .line 14716
    monitor-enter p0

    :try_start_0
    const-string v0, "ComposeMessageActivity"

    const-string v1, "dataSet onChange."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsSendto"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14734
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14735
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCalulateTimeHandler:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCalulateTimeHandler:Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->run()V

    .line 14739
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->hasCountChanged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedresetPanel:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14740
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->resetPanelView()V

    .line 14741
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedresetPanel:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13902(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 14744
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14745
    :try_start_2
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 14748
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14749
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->hasNewMsg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setNewMessage(Z)V

    .line 14750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSelectID:I
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14000(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 14751
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->clearTranscriptMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14757
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 14725
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->goToRootActivity()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10800(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 14726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 14716
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 14744
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 14761
    const-string v0, "ComposeMessageActivity"

    const-string v1, "dataSet invalidated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->notifyDataSetInvalidated()V

    .line 14764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DSObserver;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->clearDayHeaderInfo()V

    .line 14766
    :cond_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 14767
    return-void
.end method
