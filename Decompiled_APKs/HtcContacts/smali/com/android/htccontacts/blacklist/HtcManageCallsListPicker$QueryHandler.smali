.class public Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcManageCallsListPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 495
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 496
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 501
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    .line 503
    .local v0, activity:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$202(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Z)Z

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$300()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$302(J)J

    .line 514
    if-nez p1, :cond_5

    .line 515
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 516
    if-eqz p3, :cond_2

    .line 520
    #calls: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$400(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/database/Cursor;)V

    .line 527
    :cond_2
    :goto_1
    if-eqz p3, :cond_7

    .line 528
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    #setter for: Lcom/android/htccontacts/ContactListSearchPicker;->misEmptyList:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$502(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Z)Z

    .line 529
    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$600(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 530
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$800(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 531
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactListSearchPicker;->mListState:Landroid/os/Parcelable;
    invoke-static {v0, v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$902(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 533
    :cond_4
    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->misEmptyList:Z
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1000(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 534
    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->setListEmpty()V

    goto :goto_0

    .line 523
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_1

    .line 537
    :cond_6
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1100(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1200(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 539
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1300(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 543
    :cond_7
    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->setListEmpty()V

    goto :goto_0
.end method
