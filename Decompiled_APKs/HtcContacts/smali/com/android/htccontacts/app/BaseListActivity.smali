.class public abstract Lcom/android/htccontacts/app/BaseListActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "BaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseListActivity$TapToTopBroadcastReceiver;,
        Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mAppContext:Landroid/content/Context;

.field private mEmptyAdapter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

.field protected mEmptyTextView:Landroid/widget/TextView;

.field protected mEmptyView:Landroid/view/View;

.field protected mList:Lcom/htc/widget/HtcListView;

.field protected mLoadingLayout:Landroid/view/View;

.field protected mLoadingTextView:Landroid/widget/TextView;

.field private mObjectLock:[Ljava/lang/Object;

.field protected mOldAdapter:Landroid/widget/ListAdapter;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mObjectLock:[Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;-><init>(Lcom/android/htccontacts/app/BaseListActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyAdapter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

    .line 321
    new-instance v0, Lcom/android/htccontacts/app/BaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/app/BaseListActivity$1;-><init>(Lcom/android/htccontacts/app/BaseListActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 477
    return-void
.end method

.method private deReciever()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    :cond_0
    return-void
.end method

.method private initPhotoUtility()V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/android/htccontacts/util/PhotoUtils;->getUtility()Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    .line 338
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/PhotoUtils;->acquireContactPhotoCache(Landroid/content/Context;)V

    .line 339
    return-void
.end method

.method private initReciever()V
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Lcom/android/htccontacts/app/BaseListActivity$TapToTopBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/app/BaseListActivity$TapToTopBroadcastReceiver;-><init>(Lcom/android/htccontacts/app/BaseListActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 465
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.status.StatusBarView.STATUS_BAR_TAP_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mTapToTopBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/app/BaseListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 468
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method protected ensureList()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    const v0, 0x209009f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseListActivity;->ensureList()V

    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onContentChanged()V

    .line 132
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_2

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a HtcListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 164
    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    .line 332
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;->initPhotoUtility()V

    .line 333
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;->initReciever()V

    .line 334
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;->deReciever()V

    .line 351
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 109
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseListActivity;->ensureList()V

    .line 120
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method protected resetEmptyView()V
    .locals 2

    .prologue
    const v1, 0x2030036

    .line 503
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 507
    :cond_1
    return-void
.end method

.method public restoreList()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 240
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    .line 251
    :cond_1
    return-void
.end method

.method public setEmptyText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "chars"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    return-void
.end method

.method protected setGenericTitleBar(I)V
    .locals 2
    .parameter "titleTextId"

    .prologue
    .line 426
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 427
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 428
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 429
    return-void
.end method

.method protected setGenericTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "titleText"

    .prologue
    .line 432
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 433
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 434
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/16 v1, 0x8

    .line 257
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mObjectLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseListActivity;->ensureList()V

    .line 266
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 267
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 273
    :cond_2
    return-void

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListEmpty()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 223
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyAdapter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_2
    return-void
.end method

.method public setListLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mOldAdapter:Landroid/widget/ListAdapter;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyAdapter:Lcom/android/htccontacts/app/BaseListActivity$EmptyAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_2
    return-void
.end method

.method public setLoadingText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "chars"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 283
    return-void
.end method

.method protected setTitleBarForQHDProject(I)V
    .locals 2
    .parameter "titleTextId"

    .prologue
    .line 451
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 452
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(I)V

    .line 454
    return-void
.end method

.method protected setTitleBarForQHDProject(Ljava/lang/String;)V
    .locals 2
    .parameter "titleTextId"

    .prologue
    .line 457
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;

    .line 458
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/BrowseHeaderBar;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/BrowseHeaderBar;->setHeaderText(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method protected showAccountTitleBar(I)V
    .locals 0
    .parameter "titleTextId"

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->setTitleBarForQHDProject(I)V

    .line 442
    return-void
.end method

.method protected showAccountTitleBar(Ljava/lang/String;)V
    .locals 0
    .parameter "titleTextId"

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->setTitleBarForQHDProject(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method protected showGenericTitleBar(I)V
    .locals 4
    .parameter "titleTextId"

    .prologue
    const v3, 0x20201ba

    .line 413
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, genericTitleBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 415
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/Title1;

    .line 420
    .local v1, title:Lcom/htc/widget/Title1;
    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1, p1}, Lcom/htc/widget/Title1;->setTitle1(I)V

    .line 423
    :cond_1
    return-void
.end method

.method protected showTitle(IZ)V
    .locals 1
    .parameter "titleTextId"
    .parameter "isOnCreate"

    .prologue
    .line 409
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/BaseListActivity;->showAccountTitleBar(I)V

    .line 410
    return-void
.end method
