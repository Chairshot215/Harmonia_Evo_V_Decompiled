.class final Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SearchResultActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    .line 399
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 400
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mCursorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$200(Lcom/android/mms/ui/SearchResultActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$300(Lcom/android/mms/ui/SearchResultActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$300(Lcom/android/mms/ui/SearchResultActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_0
    if-eqz p3, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #setter for: Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/mms/ui/SearchResultActivity;->access$302(Lcom/android/mms/ui/SearchResultActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 411
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    const-string v0, "SearchResultActivity"

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

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$300(Lcom/android/mms/ui/SearchResultActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->displayInfo()V

    .line 437
    :goto_1
    monitor-exit v1

    .line 438
    return-void

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    new-instance v2, Lcom/android/mms/ui/SearchResultListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchResultActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-direct {v2, v3, p3, v4}, Lcom/android/mms/ui/SearchResultListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    #setter for: Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;
    invoke-static {v0, v2}, Lcom/android/mms/ui/SearchResultActivity;->access$402(Lcom/android/mms/ui/SearchResultActivity;Lcom/android/mms/ui/SearchResultListAdapter;)Lcom/android/mms/ui/SearchResultListAdapter;

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 417
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    new-instance v2, Lcom/android/mms/ui/SearchResultListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchResultActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-direct {v2, v3, p3, v4}, Lcom/android/mms/ui/SearchResultListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/widget/HtcListView;)V

    #setter for: Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;
    invoke-static {v0, v2}, Lcom/android/mms/ui/SearchResultActivity;->access$402(Lcom/android/mms/ui/SearchResultActivity;Lcom/android/mms/ui/SearchResultListAdapter;)Lcom/android/mms/ui/SearchResultListAdapter;

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$500(Lcom/android/mms/ui/SearchResultActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/SearchResultActivity;->access$300(Lcom/android/mms/ui/SearchResultActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    const v4, 0x7f090159

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SearchResultActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mTitleShadow:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/SearchResultActivity;->access$600(Lcom/android/mms/ui/SearchResultActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/SearchResultActivity;->access$500(Lcom/android/mms/ui/SearchResultActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    #getter for: Lcom/android/mms/ui/SearchResultActivity;->mListAdapter:Lcom/android/mms/ui/SearchResultListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/SearchResultActivity;->access$400(Lcom/android/mms/ui/SearchResultActivity;)Lcom/android/mms/ui/SearchResultListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SearchResultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 434
    .restart local p2
    :cond_2
    const-string v0, "SearchResultActivity"

    const-string v2, "Cannot init the cursor for the thread list."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/SearchResultActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/SearchResultActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchResultActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
