.class public Lcom/android/htccontacts/app/HtcExpandableListActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "HtcExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    const v0, 0x1090001

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Lcom/htc/widget/HtcExpandableListView;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->ensureList()V

    .line 263
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onContentChanged()V

    .line 224
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcExpandableListView;

    iput-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    .line 226
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V

    .line 236
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V

    .line 238
    iget-boolean v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 241
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mFinishedStart:Z

    .line 242
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 179
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 195
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 201
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->ensureList()V

    .line 212
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/android/htccontacts/app/HtcExpandableListActivity;->ensureList()V

    .line 250
    iput-object p1, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 251
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 252
    monitor-exit p0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/app/HtcExpandableListActivity;->mList:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    .line 326
    return-void
.end method
