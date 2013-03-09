.class public Lcom/htc/widget/InsertNewListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InsertNewListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final CHANGE:I = 0x3e8

.field private static final DBG:Z = false

.field private static final INVALIDATE:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "InsertNewListAdapter"


# instance fields
.field protected mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

.field protected mAdapterItemCount:I

.field protected mAdaptersViewTypeMap:Ljava/util/HashMap;
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

.field private mHandler:Landroid/os/Handler;

.field protected mInsertView:Landroid/view/View;

.field protected mInsertViewType:I

.field protected mInternalViewTypeCount:I

.field protected mIsInsertNewViewShown:Z

.field private mLastObserverOnChangeTime:J

.field protected mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Lcom/htc/widget/InsertNewListAdapterInterface;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V
    .locals 2
    .parameter "adapter"
    .parameter "showInsertNewView"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertViewType:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mInternalViewTypeCount:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mLastObserverOnChangeTime:J

    .line 62
    new-instance v0, Lcom/htc/widget/InsertNewListAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/InsertNewListAdapter$1;-><init>(Lcom/htc/widget/InsertNewListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 94
    new-instance v0, Lcom/htc/widget/InsertNewListAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/InsertNewListAdapter$2;-><init>(Lcom/htc/widget/InsertNewListAdapter;)V

    iput-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    .line 114
    iput-boolean p2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    .line 115
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/InsertNewListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    iget-object v1, p0, Lcom/htc/widget/InsertNewListAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/htc/widget/InsertNewListAdapterInterface;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 129
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 130
    return-void
.end method

.method public getAdapter()Lcom/htc/widget/InsertNewListAdapterInterface;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    .line 139
    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    add-int/lit8 v0, v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v1, "AddItemEntry"

    invoke-direct {v0, v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    .line 157
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_1

    .line 152
    add-int/lit8 p1, p1, -0x1

    .line 154
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    if-ge p1, v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    const-wide/16 v0, 0x0

    .line 161
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-wide v0

    .line 163
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 164
    add-int/lit8 p1, p1, -0x1

    .line 166
    :cond_2
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, returnType:I
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 176
    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertViewType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 177
    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/widget/InsertNewListAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertViewType:I

    .line 179
    :cond_0
    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertViewType:I

    .line 192
    :goto_0
    return v2

    .line 180
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 181
    add-int/lit8 p1, p1, -0x1

    .line 183
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v2, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItemViewType(I)I

    move-result v1

    .line 185
    .local v1, type:I
    iget-object v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v1           #type:I
    :cond_3
    :goto_1
    move v2, v0

    .line 192
    goto :goto_0

    .line 188
    .restart local v1       #type:I
    :cond_4
    iget v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mInternalViewTypeCount:I

    .end local v0           #returnType:I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mInternalViewTypeCount:I

    .line 189
    .restart local v0       #returnType:I
    iget-object v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int v1, v2, v0

    .line 317
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    instance-of v0, v0, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v8, 0x20200fd

    const v7, 0x202001a

    .line 200
    move v3, p1

    .line 201
    .local v3, org_position:I
    iget-boolean v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v5, :cond_8

    if-nez p1, :cond_8

    .line 202
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    if-nez v5, :cond_3

    .line 203
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v5, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    .line 205
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, btnAdd:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, btnImg:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :goto_0
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/InsertNewListAdapter;->getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    .end local v0           #btnAdd:Landroid/view/View;
    .end local v1           #btnImg:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    .line 248
    :goto_2
    return-object v4

    .line 209
    .restart local v0       #btnAdd:Landroid/view/View;
    .restart local v1       #btnImg:Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 215
    .end local v0           #btnAdd:Landroid/view/View;
    .end local v1           #btnImg:Landroid/view/View;
    :cond_3
    if-nez p2, :cond_4

    .line 216
    const-string v5, "InsertNewListAdapter"

    const-string v6, "get view : get insert view : convertview is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v5, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    .line 219
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .restart local v0       #btnAdd:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .restart local v1       #btnImg:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 224
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .end local v0           #btnAdd:Landroid/view/View;
    .end local v1           #btnImg:Landroid/view/View;
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/InsertNewListAdapter;->getInsertViewTag()Lcom/htc/widget/HtcListItemSeparable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 225
    .restart local v0       #btnAdd:Landroid/view/View;
    .restart local v1       #btnImg:Landroid/view/View;
    :cond_6
    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 228
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 235
    .end local v0           #btnAdd:Landroid/view/View;
    .end local v1           #btnImg:Landroid/view/View;
    :cond_8
    iget-boolean v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v5, :cond_9

    .line 236
    add-int/lit8 p1, p1, -0x1

    .line 238
    :cond_9
    if-ltz p1, :cond_a

    iget v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    if-ge p1, v5, :cond_a

    .line 239
    const/4 v4, 0x0

    .line 241
    .local v4, view:Landroid/view/View;
    :try_start_0
    iget-object v5, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v5, p1, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "InsertNewListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #view:Landroid/view/View;
    :cond_a
    move-object v4, p2

    .line 248
    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 276
    const/4 v0, 0x1

    .line 277
    .local v0, isEnanbled:Z
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 280
    add-int/lit8 p1, p1, -0x1

    .line 282
    :cond_2
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-nez v1, :cond_3

    .line 284
    const/4 v1, 0x0

    goto :goto_0

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v1, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isInsertViewShown()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->onInsertViewClick(Landroid/view/View;)V

    .line 295
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->onInsertViewLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/InsertNewListAdapterInterface;->onInsertViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setInsertViewShow(Z)V
    .locals 0
    .parameter "showInsertView"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/htc/widget/InsertNewListAdapter;->mIsInsertNewViewShown:Z

    .line 120
    invoke-virtual {p0}, Lcom/htc/widget/InsertNewListAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method
