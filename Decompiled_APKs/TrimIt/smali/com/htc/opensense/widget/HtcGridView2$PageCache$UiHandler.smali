.class Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;
.super Landroid/os/Handler;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2$PageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# static fields
.field static final UI_MSG_DRAW_ITEM:I = 0x1111

.field static final UI_MSG_DRAW_ITEMS:I = 0x1112


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/HtcGridView2$PageCache;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    .line 3457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3458
    return-void
.end method


# virtual methods
.method addItemToCache(I)V
    .locals 22
    .parameter "nPos"

    .prologue
    .line 3467
    move/from16 v10, p1

    .line 3468
    .local v10, nDataIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    move/from16 v17, v0

    sub-int v12, p1, v17

    .line 3469
    .local v12, nPosInCache:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    move/from16 v17, v0

    div-int v9, v12, v17

    .line 3471
    .local v9, nCachePageIndex:I
    const-string v17, "HtcGridView2"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "addItemToCache() nPos="

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3475
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3500(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Landroid/widget/BaseAdapter;

    move-result-object v17

    if-eqz v17, :cond_0

    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->mCanvas:Landroid/graphics/Canvas;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->access$3400(Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;)Landroid/graphics/Canvas;

    move-result-object v17

    if-nez v17, :cond_2

    .line 3481
    :cond_0
    const-string v17, "HtcGridView2"

    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "addItemToCache() return because mAdapter="

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v21 .. v21}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3500(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Landroid/widget/BaseAdapter;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, ", nPosInCache="

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string v21, ", mTotalCacheItems="

    aput-object v21, v19, v20

    const/16 v20, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mTotalCacheItems:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x6

    const-string v21, ", mCachePages.length="

    aput-object v21, v19, v20

    const/16 v20, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3485
    monitor-exit v18

    .line 3565
    :cond_1
    :goto_0
    return-void

    .line 3488
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3500(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Landroid/widget/BaseAdapter;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 3489
    .local v14, v:Landroid/view/View;
    if-nez v14, :cond_3

    .line 3490
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addItemToCache: mAdapter.getView("

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ")==null"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3491
    .local v6, errMsg:Ljava/lang/String;
    const-string v17, "HtcGridView2"

    new-instance v19, Ljava/lang/Exception;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3492
    monitor-exit v18

    goto :goto_0

    .line 3548
    .end local v6           #errMsg:Ljava/lang/String;
    .end local v14           #v:Landroid/view/View;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 3495
    .restart local v14       #v:Landroid/view/View;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    move/from16 v17, v0

    rem-int v13, v12, v17

    .line 3496
    .local v13, nPosInPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    move/from16 v17, v0

    rem-int v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v20 .. v20}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dx:I

    move/from16 v19, v0

    add-int v15, v17, v19

    .line 3498
    .local v15, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nx:I

    move/from16 v17, v0

    div-int v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v20 .. v20}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    move/from16 v20, v0

    add-int v19, v19, v20

    mul-int v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int v16, v17, v19

    .line 3503
    .local v16, y:I
    const/16 v17, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 3504
    const-string v17, "HtcGridView2"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "addItemToCache() return mLoadedPage["

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "]=true"

    aput-object v21, v19, v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3505
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 3507
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    move-object/from16 v17, v0

    const/16 v19, 0x1

    aput-boolean v19, v17, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3518
    :try_start_5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 3519
    .local v8, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v8, :cond_5

    .line 3520
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .end local v8           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, -0x1

    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3523
    .restart local v8       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v19, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 3529
    .local v4, childHeightSpec:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nTotalColumnWidth:I

    move/from16 v17, v0

    const/high16 v19, 0x4000

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    const/16 v19, 0x0

    iget v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 3532
    .local v5, childWidthSpec:I
    invoke-virtual {v14, v5, v4}, Landroid/view/View;->measure(II)V

    .line 3533
    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 3534
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    add-int v17, v17, v15

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3535
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    add-int v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePagesCount:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->isLastPage(I)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3542
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->addViewInLayout(Landroid/view/View;)V

    .line 3548
    :goto_1
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v17 .. v17}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->nItemHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->dy:I

    move/from16 v18, v0

    add-int v11, v17, v18

    .line 3552
    .local v11, nItemHeight:I
    if-gtz v11, :cond_1

    goto/16 :goto_0

    .line 3510
    .end local v4           #childHeightSpec:I
    .end local v5           #childWidthSpec:I
    .end local v8           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v11           #nItemHeight:I
    :catch_0
    move-exception v7

    .line 3512
    .local v7, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v17, "HtcGridView2"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addItemToCache: Exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " @ nPos = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    monitor-exit v18

    goto/16 :goto_0

    .line 3545
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v4       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    .restart local v8       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCachePages:[Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->addViewInLayout(Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 3569
    const/16 v8, 0x1111

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_2

    .line 3570
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->addItemToCache(I)V

    .line 3572
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3573
    .local v6, pos:I
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v4

    .line 3574
    .local v4, nFirstVisiblePos:I
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    .line 3575
    .local v5, nLastVisiblePos:I
    if-gt v4, v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 3576
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 3579
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3800(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    .line 3603
    .end local v4           #nFirstVisiblePos:I
    .end local v5           #nLastVisiblePos:I
    .end local v6           #pos:I
    :cond_1
    :goto_0
    return-void

    .line 3581
    :cond_2
    const/16 v8, 0x1112

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1

    .line 3582
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 3583
    const/4 v2, 0x0

    .line 3584
    .local v2, isInvalidate:Z
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 3585
    .local v7, positions:[I
    move-object v0, v7

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_4

    aget v6, v0, v1

    .line 3586
    .restart local v6       #pos:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 3587
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->addItemToCache(I)V

    .line 3589
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v4

    .line 3590
    .restart local v4       #nFirstVisiblePos:I
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    .line 3591
    .restart local v5       #nLastVisiblePos:I
    if-gt v4, v6, :cond_3

    if-gt v6, v5, :cond_3

    .line 3592
    const/4 v2, 0x1

    .line 3585
    .end local v4           #nFirstVisiblePos:I
    .end local v5           #nLastVisiblePos:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3597
    .end local v6           #pos:I
    :cond_4
    if-eqz v2, :cond_5

    .line 3598
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 3601
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #isInvalidate:Z
    .end local v3           #len$:I
    .end local v7           #positions:[I
    :cond_5
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3800(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    goto :goto_0
.end method

.method removeAllMessages()V
    .locals 1

    .prologue
    .line 3461
    const/16 v0, 0x1111

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeMessages(I)V

    .line 3462
    const/16 v0, 0x1112

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeMessages(I)V

    .line 3463
    return-void
.end method
