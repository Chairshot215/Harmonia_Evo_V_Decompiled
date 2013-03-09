.class public Lcom/htc/widget/HtcHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HtcHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNullCheckView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, headerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    .local p2, footerViewInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mNullCheckView:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 63
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mIsFilterable:Z

    .line 65
    if-nez p1, :cond_0

    .line 66
    sget-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 71
    :goto_0
    if-nez p2, :cond_1

    .line 72
    sget-object v0, Lcom/htc/widget/HtcHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 80
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    .line 109
    .local v1, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iget-boolean v2, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 181
    iget-boolean v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .parameter "position"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 235
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 236
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    .line 260
    :goto_0
    return-object v3

    .line 240
    :cond_0
    sub-int v1, p1, v2

    .line 241
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 242
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 244
    if-ge v1, v0, :cond_1

    .line 245
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 251
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_2
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds in HtcHeaderViewListAdapter; position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 255
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; adapterCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 257
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numHeaders "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 259
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numFooters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 269
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 270
    sub-int v1, p1, v2

    .line 271
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 272
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 273
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 276
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 337
    .local v2, numHeaders:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 338
    sub-int v1, p1, v2

    .line 339
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 340
    .local v0, adapterCount:I
    if-ge v1, v0, :cond_0

    .line 341
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 345
    .end local v0           #adapterCount:I
    .end local v1           #adjPosition:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 303
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 304
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 328
    :goto_0
    return-object v3

    .line 308
    :cond_0
    sub-int v1, p1, v2

    .line 309
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 310
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 312
    if-ge v1, v0, :cond_1

    .line 313
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 319
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0

    .line 321
    :cond_2
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds in HtcHeaderViewListAdapter; position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 323
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; adapterCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 325
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numHeaders "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 327
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numFooters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_5
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mNullCheckView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

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

.method public isEnabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 200
    .local v2, numHeaders:I
    if-ge p1, v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-boolean v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    .line 225
    :goto_0
    return v3

    .line 205
    :cond_0
    sub-int v1, p1, v2

    .line 206
    .local v1, adjPosition:I
    const/4 v0, 0x0

    .line 207
    .local v0, adapterCount:I
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 209
    if-ge v1, v0, :cond_1

    .line 210
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 215
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 216
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-boolean v3, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    goto :goto_0

    .line 218
    :cond_2
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds in HtcHeaderViewListAdapter; position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 220
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; adapterCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 222
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numHeaders "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_4
    iget-object v3, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 224
    const-string v3, "HtcHeaderViewListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayIndexOutOfBounds; numFooters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 365
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    .line 147
    .local v1, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iget-object v4, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 148
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 158
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :goto_1
    return v3

    .line 145
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 158
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    .line 125
    .local v1, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iget-object v4, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 126
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 136
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :goto_1
    return v3

    .line 123
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 136
    goto :goto_1
.end method

.method public setNullCheckView(Landroid/view/View;)V
    .locals 0
    .parameter "nullCheckView"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mNullCheckView:Landroid/view/View;

    .line 296
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/widget/HtcHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 374
    :cond_0
    return-void
.end method
