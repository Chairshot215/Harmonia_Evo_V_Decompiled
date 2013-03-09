.class public Lcom/htc/music/widget/GroupListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "GroupListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/widget/GroupListView$OnChildClickListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;
.implements Lcom/htc/music/widget/GroupListView$OnGroupClickListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lcom/htc/music/widget/GroupListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getGroupListView()Lcom/htc/music/widget/GroupListView;
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onContentChanged()V

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/GroupListView;

    iput-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/GroupListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupExpandListener(Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupCollapseListener(Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v1, p0}, Lcom/htc/music/widget/GroupListView;->setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V

    iget-boolean v1, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/GroupListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/GroupListActivity;->mFinishedStart:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapse(I)V
    .locals 0

    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/music/widget/GroupListActivity;->ensureList()V

    iput-object p1, p0, Lcom/htc/music/widget/GroupListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/widget/GroupListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListActivity;->mList:Lcom/htc/music/widget/GroupListView;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListView;->setSelectedGroup(I)V

    return-void
.end method
