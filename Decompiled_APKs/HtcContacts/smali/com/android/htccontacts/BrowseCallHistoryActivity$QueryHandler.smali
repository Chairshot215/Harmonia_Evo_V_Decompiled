.class public final Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BrowseCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "QueryHandler"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseCallHistoryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1532
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1533
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1534
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1538
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$QueryHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;

    .line 1539
    .local v0, activity:Lcom/android/htccontacts/BrowseCallHistoryActivity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1540
    iget-object v1, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 1548
    iget-object v1, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1550
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1551
    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2500(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1552
    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDeleteAction:Z
    invoke-static {v0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2502(Lcom/android/htccontacts/BrowseCallHistoryActivity;Z)Z

    goto :goto_0

    .line 1558
    :cond_2
    if-eqz p3, :cond_0

    .line 1559
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
