.class public abstract Lcom/android/htcdialer/app/BaseListActivity;
.super Lcom/android/htcdialer/app/BaseActivity;
.source "BaseListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mAppContext:Landroid/content/Context;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mObjectLock:Ljava/lang/Object;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/htcdialer/app/BaseActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mObjectLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/android/htcdialer/app/BaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/app/BaseListActivity$1;-><init>(Lcom/android/htcdialer/app/BaseListActivity;)V

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method private initPhotoUtility()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getUtility()Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    .line 194
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/PhotoUtils;->acquireContactPhotoCache(Landroid/content/Context;)V

    .line 195
    return-void
.end method


# virtual methods
.method protected ensureList()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const v0, 0x1090014

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/app/BaseListActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseListActivity;->ensureList()V

    .line 159
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseActivity;->onContentChanged()V

    .line 106
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/app/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 108
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a HtcListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/htcdialer/app/BaseListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    .line 188
    invoke-direct {p0}, Lcom/android/htcdialer/app/BaseListActivity;->initPhotoUtility()V

    .line 190
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-super {p0}, Lcom/android/htcdialer/app/BaseActivity;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 206
    :cond_0
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 83
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseListActivity;->ensureList()V

    .line 94
    invoke-super {p0, p1}, Lcom/android/htcdialer/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htcdialer/app/BaseListActivity;->ensureList()V

    .line 125
    iput-object p1, p0, Lcom/android/htcdialer/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/htcdialer/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 138
    return-void
.end method
