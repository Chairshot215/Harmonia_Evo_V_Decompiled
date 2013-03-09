.class public Lcom/android/htccontacts/widget/FilterableGroupListAdapter;
.super Lcom/android/htccontacts/widget/GroupListAdapter;
.source "FilterableGroupListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;,
        Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;
    }
.end annotation


# static fields
.field private static final LOG_ENABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "FilterableGroupListAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 105
    .local v0, adapter:Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    new-instance v1, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;

    invoke-direct {v1}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;-><init>()V

    goto :goto_0
.end method

.method public getFirstSelectableItem()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, accumlativeIndex:I
    const/4 v5, 0x1

    new-array v2, v5, [I

    aput v6, v2, v7

    .line 47
    .local v2, firstIndex:[I
    iget-object v5, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    .line 48
    .local v1, adapter:Landroid/widget/BaseAdapter;
    instance-of v5, v1, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;

    if-eqz v5, :cond_1

    move-object v5, v1

    .line 49
    check-cast v5, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;

    invoke-interface {v5, v2}, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$FirstSelectable;->getFirstSelectableItem([I)Z

    move-result v3

    .line 51
    .local v3, hasFirstSelectable:Z
    if-eqz v3, :cond_0

    .line 52
    aget v5, v2, v7

    add-int/2addr v0, v5

    move v5, v0

    .line 63
    .end local v1           #adapter:Landroid/widget/BaseAdapter;
    .end local v3           #hasFirstSelectable:Z
    :goto_1
    return v5

    .line 56
    .restart local v1       #adapter:Landroid/widget/BaseAdapter;
    .restart local v3       #hasFirstSelectable:Z
    :cond_0
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 58
    goto :goto_0

    .end local v3           #hasFirstSelectable:Z
    :cond_1
    move v5, v6

    .line 60
    goto :goto_1

    .end local v1           #adapter:Landroid/widget/BaseAdapter;
    :cond_2
    move v5, v6

    .line 63
    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 78
    .local v0, adapter:Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    .line 79
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 81
    :cond_0
    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 87
    .local v0, adapter:Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    .line 88
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 90
    :cond_0
    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 69
    .local v0, adapter:Landroid/widget/BaseAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
