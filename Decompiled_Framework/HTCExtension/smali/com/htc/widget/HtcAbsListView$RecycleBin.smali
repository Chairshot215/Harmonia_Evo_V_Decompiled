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

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/widget/HtcAbsListView$RecycleBin;Lcom/htc/widget/HtcAbsListView$RecyclerListener;)Lcom/htc/widget/HtcAbsListView$RecyclerListener;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/HtcAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/widget/HtcAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 12

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    iget v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    aget-object v4, v5, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v0, v6, v3

    add-int/lit8 v6, v6, -0x1

    const/4 v2, 0x0

    move v7, v6

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/htc/widget/HtcAbsListView;->access$2700(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    move v7, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v3, 0x0

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v2, p1, v3}, Lcom/htc/widget/HtcAbsListView;->access$2500(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    const/4 v7, 0x0

    iget v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/widget/HtcAbsListView;->access$2300(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/widget/HtcAbsListView;->access$2400(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    :cond_0
    iput p2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mFirstActivePosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-eqz v3, :cond_1

    iget v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    aput-object v1, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    aput-object v3, v0, v1

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v4, v4, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    iget v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    if-eqz v10, :cond_1

    move v2, v8

    :goto_0
    iget v10, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v8, :cond_2

    move v4, v8

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    array-length v1, v0

    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    aget-object v6, v0, v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v7, v8, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    const/4 v8, 0x0

    aput-object v8, v0, v3

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v8, v6, v9}, Lcom/htc/widget/HtcAbsListView;->access$2600(Lcom/htc/widget/HtcAbsListView;Landroid/view/View;Z)V

    :cond_0
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v4, v9

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/widget/HtcAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/htc/widget/HtcAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->pruneScrapViews()V

    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10

    iget v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    aget-object v7, v0, v2

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
