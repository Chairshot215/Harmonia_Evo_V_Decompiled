.class Lcom/htc/widget/HtcAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 5207
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5221
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5207
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 5445
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 5446
    .local v3, maxViews:I
    iget v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5447
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5448
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 5449
    aget-object v4, v5, v1

    .line 5450
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5451
    .local v6, size:I
    sub-int v0, v6, v3

    .line 5452
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 5453
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 5454
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/htc/widget/HtcAbsListView;->access$3100(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    .line 5453
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 5448
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5457
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4
    .parameter "scrap"

    .prologue
    .line 5367
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 5368
    .local v0, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 5391
    :cond_0
    :goto_0
    return-void

    .line 5374
    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 5375
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5376
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 5377
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Lcom/htc/widget/HtcAbsListView;->access$2900(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 5382
    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 5383
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5388
    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 5389
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 5385
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5273
    iget v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5274
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5275
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5276
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 5277
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/widget/HtcAbsListView;->access$2700(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    .line 5276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5280
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5281
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 5282
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5283
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5284
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 5285
    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/widget/HtcAbsListView;->access$2800(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    .line 5284
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5289
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 5299
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 5300
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5302
    :cond_0
    iput p2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 5304
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5305
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 5306
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5307
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 5309
    .local v3, lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 5312
    aput-object v1, v0, v2

    .line 5305
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5315
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 5325
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 5326
    .local v1, index:I
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5327
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 5328
    aget-object v2, v0, v1

    .line 5329
    .local v2, match:Landroid/view/View;
    aput-object v3, v0, v1

    .line 5332
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 5340
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5341
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5342
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5343
    .local v1, size:I
    if-lez v1, :cond_0

    .line 5344
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5358
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_0
    :goto_0
    return-object v3

    .line 5349
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 5350
    .local v2, whichScrap:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 5351
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v4, v2

    .line 5352
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5353
    .restart local v1       #size:I
    if-lez v1, :cond_0

    .line 5354
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    .line 5247
    iget v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5248
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5249
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5250
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 5251
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5254
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5255
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 5256
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 5257
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5258
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 5259
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 5258
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5263
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5463
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 5464
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5473
    :cond_0
    return-void

    .line 5466
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5467
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5468
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 5469
    aget-object v1, v2, v0

    .line 5470
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 5397
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5398
    .local v0, activeViews:[Landroid/view/View;
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    if-eqz v10, :cond_1

    move v2, v8

    .line 5399
    .local v2, hasListener:Z
    :goto_0
    iget v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v8, :cond_2

    move v4, v8

    .line 5401
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5402
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 5403
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_5

    .line 5404
    aget-object v6, v0, v3

    .line 5405
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 5406
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v7, v8, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 5409
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 5411
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5413
    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    .line 5414
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v8, v6, v9}, Lcom/htc/widget/HtcAbsListView;->access$3000(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    .line 5403
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v9

    .line 5398
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v9

    .line 5399
    goto :goto_1

    .line 5419
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 5420
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 5422
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 5423
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5425
    if-eqz v2, :cond_0

    .line 5426
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 5437
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->pruneScrapViews()V

    .line 5438
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .parameter "color"

    .prologue
    .line 5481
    iget v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 5482
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5483
    .local v4, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5484
    .local v5, scrapCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 5485
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5484
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5488
    .end local v2           #i:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    :cond_0
    iget v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5489
    .local v6, typeCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 5490
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 5491
    .restart local v4       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 5492
    .restart local v5       #scrapCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 5493
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5492
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5489
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5498
    .end local v3           #j:I
    .end local v4           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5           #scrapCount:I
    .end local v6           #typeCount:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 5499
    .local v0, activeViews:[Landroid/view/View;
    array-length v1, v0

    .line 5500
    .local v1, count:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 5501
    aget-object v7, v0, v2

    .line 5502
    .local v7, victim:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 5503
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5500
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5506
    .end local v7           #victim:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 5233
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 5234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5237
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 5238
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 5238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5241
    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    .line 5242
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5243
    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 5244
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 5266
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
