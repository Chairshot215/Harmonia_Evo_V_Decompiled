.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 394
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 76
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 77
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 78
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 79
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 80
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 81
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 82
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 86
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 395
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter "mi"

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 378
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 380
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 384
    .local v0, pa:Lcom/htc/preference/HtcPreferenceActivity;
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b38

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 387
    .end local v0           #pa:Lcom/htc/preference/HtcPreferenceActivity;
    .end local v2           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 402
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04007f

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 403
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "list_selector_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 407
    .local v3, selector:I
    if-eqz v3, :cond_0

    .line 408
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 410
    :cond_0
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 412
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 414
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 415
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 416
    new-instance v4, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 417
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    const v4, 0x7f08015b

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/LinearColorBar;

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 419
    const v4, 0x7f08015d

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 420
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v4, 0x7f08015c

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 427
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/applications/RunningProcessesView$2;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/RunningProcessesView$2;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 435
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 436
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 437
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 441
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 442
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 443
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 446
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 447
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 448
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 455
    :goto_0
    return v0

    .line 454
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 369
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 370
    .local v1, mi:Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 371
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 372
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_0

    .line 486
    :goto_0
    return-void

    .line 475
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 478
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 482
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 14
    .parameter "dataChanged"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v8

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 308
    .local v0, adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 309
    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 312
    .end local v0           #adapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v8, :cond_1

    .line 313
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 314
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 319
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 320
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v1, v8, v10

    .line 322
    .local v1, availMem:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 323
    const-wide/16 v1, 0x0

    .line 326
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v9, v8, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 327
    :try_start_0
    iget v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v10, v10, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v8, v10, :cond_3

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v8, v10, v1

    if-eqz v8, :cond_4

    .line 330
    :cond_3
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 331
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 332
    iput-wide v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 333
    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v12, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long v3, v10, v12

    .line 334
    .local v3, freeMem:J
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, sizeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0b30

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 339
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0b31

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .end local v3           #freeMem:J
    .end local v5           #sizeStr:Ljava/lang/String;
    :cond_4
    iget v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v10, v10, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v10, v10, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v8, v10, v12

    if-eqz v8, :cond_6

    .line 346
    :cond_5
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 347
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 348
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v8, v8, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 349
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 358
    :cond_6
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-float v6, v10

    .line 359
    .local v6, totalMem:F
    iget-wide v10, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v10, v1

    iget-wide v12, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v10, v12

    long-to-float v7, v10

    .line 361
    .local v7, totalShownMem:F
    iget-object v8, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    sub-float v10, v6, v7

    div-float/2addr v10, v6

    iget-wide v11, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v11, v11

    div-float/2addr v11, v6

    iget-wide v12, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v6

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 364
    monitor-exit v9

    .line 365
    return-void

    .line 364
    .end local v6           #totalMem:F
    .end local v7           #totalShownMem:F
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 459
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 462
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 469
    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
