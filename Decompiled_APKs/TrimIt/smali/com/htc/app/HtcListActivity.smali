.class public Lcom/htc/app/HtcListActivity;
.super Landroid/app/Activity;
.source "HtcListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lcom/htc/widget/HtcListView;

.field private mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/HtcListActivity;->mHandler:Landroid/os/Handler;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcListActivity;->mFinishedStart:Z

    .line 193
    new-instance v0, Lcom/htc/app/HtcListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcListActivity$1;-><init>(Lcom/htc/app/HtcListActivity;)V

    iput-object v0, p0, Lcom/htc/app/HtcListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Lcom/htc/app/HtcListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcListActivity$2;-><init>(Lcom/htc/app/HtcListActivity;)V

    iput-object v0, p0, Lcom/htc/app/HtcListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    const v0, 0x209009f

    invoke-static {p0, v0}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/app/HtcListActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;->ensureList()V

    .line 292
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 234
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 236
    iget-object v1, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/app/HtcListActivity;->mOnClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 245
    iget-boolean v1, p0, Lcom/htc/app/HtcListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/htc/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/app/HtcListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/htc/app/HtcListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/app/HtcListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/app/HtcListActivity;->mFinishedStart:Z

    .line 250
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 211
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;->ensureList()V

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;->ensureList()V

    .line 258
    iput-object p1, p0, Lcom/htc/app/HtcListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 259
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    monitor-exit p0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/app/HtcListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 271
    return-void
.end method
