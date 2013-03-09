.class final Lcom/google/android/talk/ChatView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 776
    iput-object p1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    .line 777
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 778
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 782
    sparse-switch p1, :sswitch_data_0

    .line 828
    :goto_0
    return-void

    .line 784
    :sswitch_0
    new-instance v0, Lcom/google/android/talk/ChatView$DeltaCursor;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {v0, v1, p3}, Lcom/google/android/talk/ChatView$DeltaCursor;-><init>(Lcom/google/android/talk/ChatView;Landroid/database/Cursor;)V

    .line 786
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "chat history onQueryComplete"

    #calls: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "nickname"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mNicknameColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2502(Lcom/google/android/talk/ChatView;I)I

    .line 789
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mBodyColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2602(Lcom/google/android/talk/ChatView;I)I

    .line 790
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mDateColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2702(Lcom/google/android/talk/ChatView;I)I

    .line 791
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mTypeColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2802(Lcom/google/android/talk/ChatView;I)I

    .line 792
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "show_ts"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mDisplaySentTimeColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$2902(Lcom/google/android/talk/ChatView;I)I

    .line 793
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "err_code"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mErrorCodeColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$3002(Lcom/google/android/talk/ChatView;I)I

    .line 794
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "delta"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mDeltaColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$3102(Lcom/google/android/talk/ChatView;I)I

    .line 795
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "send_status"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/google/android/talk/ChatView;->mSendStatusColumn:I
    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$3202(Lcom/google/android/talk/ChatView;I)I

    .line 798
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mChatAdapter:Lcom/google/android/talk/ChatView$ChatAdapter;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$ChatAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/talk/ChatView$ChatAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 799
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->updateState()V
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3300(Lcom/google/android/talk/ChatView;)V

    .line 801
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2100(Lcom/google/android/talk/ChatView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/talk/ChatView;->mChatHistoryQueryComplete:Z
    invoke-static {v1, v3}, Lcom/google/android/talk/ChatView;->access$3402(Lcom/google/android/talk/ChatView;Z)Z

    .line 805
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->insertBuddyStatus()V
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2300(Lcom/google/android/talk/ChatView;)V

    .line 806
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 811
    .end local v0           #cursor:Landroid/database/Cursor;
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x0

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/google/android/talk/ChatView;->mContactId:J
    invoke-static {v1, v2, v3}, Lcom/google/android/talk/ChatView;->access$1602(Lcom/google/android/talk/ChatView;J)J

    .line 816
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHost:Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactId:J
    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$1600(Lcom/google/android/talk/ChatView;)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->cacheContactId(Ljava/lang/String;J)V

    .line 817
    if-eqz p3, :cond_0

    .line 818
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 824
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mHistoryView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$QueryHandler;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/16 v2, -0x1

    #setter for: Lcom/google/android/talk/ChatView;->mContactId:J
    invoke-static {v1, v2, v3}, Lcom/google/android/talk/ChatView;->access$1602(Lcom/google/android/talk/ChatView;J)J

    goto :goto_1

    .line 782
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
