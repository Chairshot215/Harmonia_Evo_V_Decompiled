.class final Lcom/android/mms/ui/DraftList$MainListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainListQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/DraftList$MainListQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DraftList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    .line 569
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 570
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 591
    new-instance v0, Lcom/android/mms/ui/DraftList$MainListQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/DraftList$MainListQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/mms/ui/DraftList$MainListQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 641
    packed-switch p1, :pswitch_data_0

    .line 651
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->finish()V

    .line 648
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$300(Lcom/android/mms/ui/DraftList;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 601
    monitor-exit v1

    .line 637
    .end local p2
    :goto_0
    return-void

    .line 604
    .restart local p2
    :cond_0
    if-eqz p3, :cond_4

    .line 605
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #setter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/DraftList;->access$002(Lcom/android/mms/ui/DraftList;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 606
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 615
    const-string v0, "DraftList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad query token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->finish()V

    .line 636
    :cond_2
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 609
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/DraftMessagesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v2}, Lcom/android/mms/ui/DraftList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/DraftList;->access$000(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/DraftMessagesListAdapter;->setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z

    goto :goto_1

    .line 626
    :cond_3
    const-string v0, "DraftList"

    const-string v2, "Cannot load undelivered messages."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->finish()V

    goto :goto_2

    .line 630
    .restart local p2
    :cond_4
    const-string v0, "DraftList"

    const-string v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$MainListQueryHandler;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftList;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
    .end packed-switch
.end method
