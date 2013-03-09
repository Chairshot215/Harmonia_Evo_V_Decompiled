.class public Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DisplaySuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field public loadChildComplete:Z

.field public loadParentComplete:Z

.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/link/DisplaySuggestionActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 748
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    .line 749
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 744
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->loadParentComplete:Z

    .line 745
    iput-boolean v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->loadChildComplete:Z

    .line 750
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p2

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 751
    iput-object p2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 752
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 757
    if-eqz p3, :cond_0

    .line 759
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    .line 760
    .local v0, activity:Lcom/android/htccontacts/link/DisplaySuggestionActivity;
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$400(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 761
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    if-nez p1, :cond_2

    .line 764
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v2, p3}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->setParentCursor(Landroid/database/Cursor;)V

    .line 800
    :cond_1
    :goto_0
    monitor-exit v3

    .line 801
    return-void

    .line 767
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 769
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->isParentLoadComplete()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 770
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #setter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$502(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 772
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 773
    .local v1, flag:I
    if-nez v1, :cond_3

    .line 775
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->syncOnIds()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$600(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 776
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->backUpIds()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$700(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 779
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$500(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 781
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mListAdapter:Lcom/android/htccontacts/link/DisplaySuggestListAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$500(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/link/DisplaySuggestListAdapter;->updateIndex(Landroid/database/Cursor;)V

    .line 782
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    iget-object v4, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mCreateAdapterInfoRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$800(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/BackgroundWorkerHandler;->postInBackground(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 800
    .end local v1           #flag:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 786
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListEmpty()V

    goto :goto_0

    .line 789
    :cond_5
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 791
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->syncAfterSearch(Landroid/database/Cursor;)V
    invoke-static {v2, p3}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$900(Lcom/android/htccontacts/link/DisplaySuggestionActivity;Landroid/database/Cursor;)V

    .line 792
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->startAsyncQurey()V
    invoke-static {v2}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1000(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    goto :goto_0

    .line 794
    :cond_6
    if-eqz p3, :cond_1

    .line 796
    iget-object v2, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v2, v2, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v2, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
