.class public Lcom/htc/widget/WrapingExpandedListAdapter;
.super Ljava/lang/Object;
.source "WrapingExpandedListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field private static final Icon_OFFSET:I


# instance fields
.field private final mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mIndicatorWidht:I

.field private final mIsFilterable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, p2, Landroid/widget/Filterable;

    iput-boolean v1, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIsFilterable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20807c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIndicatorWidht:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "borranx mIndicatorWidht "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIndicatorWidht:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCombinedGroupId(J)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HtcListItem;

    iget v2, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIndicatorWidht:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem;->setRightSpace(I)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mIndicatorWidht:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1, p2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/WrapingExpandedListAdapter;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
