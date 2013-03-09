.class public Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;
.super Lcom/android/htccontacts/widget/GroupListAdapter;
.source "SimpleIndexableListAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/IIndexableListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleIndexableListAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field protected mHeaderView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderViewTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexStatusMap_Sring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

.field protected mLabelRes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowingHeaderCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderViewTypeMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexViewMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap_Sring:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 127
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    iput-object p1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method


# virtual methods
.method public add(ILandroid/widget/BaseAdapter;)V
    .locals 2
    .parameter "index"
    .parameter "adapter"

    .prologue
    .line 341
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(ILandroid/widget/BaseAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    const v1, 0x7f0a0242

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p2, Landroid/widget/BaseAdapter;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(ILandroid/widget/BaseAdapter;)V

    return-void
.end method

.method public add(Landroid/widget/BaseAdapter;)Z
    .locals 3
    .parameter "adapter"

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    move-result v0

    .line 334
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    const v2, 0x7f0a0242

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    return v0
.end method

.method public add(Landroid/widget/BaseAdapter;I)Z
    .locals 3
    .parameter "adapter"
    .parameter "resId"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    move-result v0

    .line 201
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/widget/BaseAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->add(Landroid/widget/BaseAdapter;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Landroid/widget/BaseAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/widget/BaseAdapter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v0, coll:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const v2, 0x7f0a0242

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 358
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/widget/GroupListAdapter;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 359
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 362
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/widget/BaseAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Landroid/widget/BaseAdapter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .local v0, coll:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const v2, 0x7f0a0242

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 348
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 349
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 352
    :cond_0
    return v1
.end method

.method public addListHeaderView(Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;->clear()V

    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 96
    .local v0, a:Landroid/widget/BaseAdapter;
    instance-of v3, v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    if-nez v3, :cond_1

    .line 97
    invoke-super {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;->getCount()I

    move-result v3

    .line 106
    .end local v0           #a:Landroid/widget/BaseAdapter;
    :goto_0
    return v3

    .line 99
    .restart local v0       #a:Landroid/widget/BaseAdapter;
    :cond_1
    check-cast v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    .end local v0           #a:Landroid/widget/BaseAdapter;
    invoke-interface {v0}, Lcom/android/htccontacts/widget/IWrapperAdapter;->getWrappedAdapterCount()I

    move-result v2

    .line 101
    .local v2, thisCount:I
    if-eqz v2, :cond_0

    .line 102
    invoke-super {p0}, Lcom/android/htccontacts/widget/GroupListAdapter;->getCount()I

    move-result v3

    goto :goto_0

    .line 106
    .end local v2           #thisCount:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIndexAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    .local v0, headerCount:I
    if-ge p1, v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndexCount()I
    .locals 6

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->getShowingHeaderViewCount()I

    move-result v4

    iput v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    .line 139
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    iget-boolean v4, v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    if-lez v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    add-int/2addr v4, v5

    .line 155
    :goto_1
    return v4

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/widget/GroupListAdapter;->mAdapterList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 146
    .local v0, a:Landroid/widget/BaseAdapter;
    instance-of v4, v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    if-nez v4, :cond_3

    .line 147
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 149
    :cond_3
    check-cast v0, Lcom/android/htccontacts/widget/IWrapperAdapter;

    .end local v0           #a:Landroid/widget/BaseAdapter;
    invoke-interface {v0}, Lcom/android/htccontacts/widget/IWrapperAdapter;->getWrappedAdapterCount()I

    move-result v3

    .line 151
    .local v3, thisCount:I
    if-eqz v3, :cond_2

    .line 152
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 155
    .end local v3           #thisCount:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getIndexItemCountAt(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowingHeaderCount:I

    .line 188
    .local v0, headerCount:I
    if-ge p1, v0, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->get(I)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public getIndexItemInfo()[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 160
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    .local v2, headerCount:I
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    if-nez v4, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    iput-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 167
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 168
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v4, v4, v3

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    new-instance v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    invoke-direct {v6}, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;-><init>()V

    aput-object v6, v4, v3

    .line 171
    :cond_1
    if-ge v3, v2, :cond_3

    .line 172
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v4, v4, v3

    iput v5, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    .line 173
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v6, v4, v3

    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    iget-boolean v4, v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    iput-boolean v4, v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    .line 167
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .end local v3           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    array-length v4, v4

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->size()I

    move-result v6

    add-int/2addr v6, v2

    if-eq v4, v6, :cond_0

    .line 164
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    .line 165
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    iput-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    goto :goto_0

    .line 176
    .restart local v3       #i:I
    :cond_3
    sub-int v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->get(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 177
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 179
    .local v1, count:I
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v4, v4, v3

    iput v1, v4, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->count:I

    .line 180
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    aget-object v6, v4, v3

    if-lez v1, :cond_4

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v6, Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;->isShow:Z

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 182
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v1           #count:I
    :cond_5
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mItems:[Lcom/android/htccontacts/widget/IIndexable$IndexItemInfo;

    return-object v4
.end method

.method public getIndexViewAt(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x208066b

    const v9, 0x208066a

    const v8, 0x2020013

    const v7, 0x2020010

    const/4 v6, 0x0

    .line 245
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, headerCount:I
    if-ge p1, v0, :cond_0

    .line 247
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    iget-object v4, v4, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->view:Landroid/view/View;

    .line 308
    :goto_0
    return-object v4

    .line 250
    :cond_0
    if-nez p2, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090026

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 252
    new-instance v4, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v5, "index"

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, label:Landroid/widget/TextView;
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    .local v2, status:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 259
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x2090026

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 260
    new-instance v4, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v5, "index"

    invoke-direct {v4, v5, v6}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #label:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 263
    .restart local v1       #label:Landroid/widget/TextView;
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #status:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #status:Landroid/widget/TextView;
    move-object v4, p2

    .line 264
    goto :goto_0

    .line 268
    :cond_3
    const/4 v4, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v5

    if-ne v4, v5, :cond_4

    .line 269
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 272
    :cond_4
    sub-int v4, p1, v0

    iget-object v5, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 273
    sub-int v4, p1, v0

    if-nez v4, :cond_8

    .line 274
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    :goto_1
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    sub-int v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 279
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    sub-int v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0a01fa

    if-ne v4, v5, :cond_5

    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 281
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    :cond_5
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    sub-int v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0a00d8

    if-ne v4, v5, :cond_6

    if-nez p1, :cond_6

    .line 283
    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_b

    .line 289
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap:Ljava/util/HashMap;

    sub-int v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 290
    .local v3, statusRes:Ljava/lang/Integer;
    if-eqz v3, :cond_7

    .line 291
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_a

    .line 292
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .end local v3           #statusRes:Ljava/lang/Integer;
    :cond_7
    :goto_3
    move-object v4, p2

    .line 308
    goto/16 :goto_0

    .line 276
    :cond_8
    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 286
    :cond_9
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    .restart local v3       #statusRes:Ljava/lang/Integer;
    :cond_a
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 297
    .end local v3           #statusRes:Ljava/lang/Integer;
    :cond_b
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap_Sring:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    iget-object v4, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap_Sring:Ljava/util/HashMap;

    sub-int v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    .local v3, statusRes:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 300
    if-nez v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 301
    :cond_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 303
    :cond_d
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getIndexViewTypeAt(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 218
    .local v0, headerCount:I
    if-ge p1, v0, :cond_0

    .line 223
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0
.end method

.method public getIndexViewTypeCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLabelRes(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShowingHeaderViewCount()I
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, headerCount:I
    iget-object v3, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    .line 118
    .local v2, v:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
    iget-boolean v3, v2, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    if-eqz v3, :cond_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2           #v:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
    :cond_1
    return v0
.end method

.method public isIndexEnabled(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 312
    move v1, p1

    .line 313
    .local v1, org_index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    add-int/lit8 p1, p1, -0x1

    .line 317
    :cond_0
    if-gtz p1, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    iget-boolean v2, v2, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isEnabled:Z

    if-eqz v2, :cond_1

    .line 319
    const/4 v2, 0x1

    .line 323
    :goto_1
    return v2

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public remove(I)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "index"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->remove(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->remove(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, index:I
    invoke-super {p0, p1}, Lcom/android/htccontacts/widget/GroupListAdapter;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 379
    .local v1, success:Z
    if-eqz v1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_0
    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeLabelRes(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mLabelRes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setListHeaderVisibility(IZ)V
    .locals 2
    .parameter "index"
    .parameter "visible"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mHeaderView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    iput-boolean p2, v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    .line 111
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mShowStatus:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public setStatus(II)V
    .locals 3
    .parameter "index"
    .parameter "resId"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "test"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->mIndexStatusMap_Sring:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
