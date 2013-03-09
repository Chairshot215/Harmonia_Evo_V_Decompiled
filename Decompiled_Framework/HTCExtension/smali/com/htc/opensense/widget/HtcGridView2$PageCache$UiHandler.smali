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

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method addItemToCache(I)V
    .locals 22

    move/from16 v10, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mCacheBasePos:I

    move/from16 v17, v0

    sub-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    move/from16 v17, v0

    div-int v9, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLockPage:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

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

    :cond_0
    monitor-exit v18

    :cond_1
    :goto_0
    return-void

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

    if-nez v14, :cond_3

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

    const-string v17, "HtcGridView2"

    new-instance v19, Ljava/lang/Exception;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v18

    goto :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPageElements:I

    move/from16 v17, v0

    rem-int v13, v12, v17

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

    const/16 v17, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLoadedPage:[Z

    move-object/from16 v19, v0

    aget-boolean v19, v19, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

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

    :try_start_5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_5

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

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

    invoke-virtual {v14, v5, v4}, Landroid/view/View;->measure(II)V

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

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    add-int v17, v17, v15

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    add-int v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

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

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mLastPage:Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$Page;->addViewInLayout(Landroid/view/View;)V

    :goto_1
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

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

    if-gtz v11, :cond_1

    goto/16 :goto_0

    :catch_0
    move-exception v7

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

    monitor-exit v18

    goto/16 :goto_0

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

    const/16 v8, 0x1111

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_2

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->addItemToCache(I)V

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v4

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    if-gt v4, v6, :cond_0

    if-gt v6, v5, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mPrefetch:Lcom/htc/opensense/widget/HtcGridView2$Prefetch;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3800(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$Prefetch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$Prefetch;->fetchNextItem()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v8, 0x1112

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_5

    const/4 v2, 0x0

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    move-object v0, v7

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    aget v6, v0, v1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->addItemToCache(I)V

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getFirstVisiblePosition()I

    move-result v4

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mGridInfo:Lcom/htc/opensense/widget/HtcGridView2$GridInfo;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3600(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2$GridInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2$GridInfo;->getLastVisiblePosition()I

    move-result v5

    if-gt v4, v6, :cond_3

    if-gt v6, v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->this$0:Lcom/htc/opensense/widget/HtcGridView2$PageCache;

    #getter for: Lcom/htc/opensense/widget/HtcGridView2$PageCache;->mParentView:Lcom/htc/opensense/widget/HtcGridView2;
    invoke-static {v8}, Lcom/htc/opensense/widget/HtcGridView2$PageCache;->access$3700(Lcom/htc/opensense/widget/HtcGridView2$PageCache;)Lcom/htc/opensense/widget/HtcGridView2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

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

    const/16 v0, 0x1111

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeMessages(I)V

    const/16 v0, 0x1112

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcGridView2$PageCache$UiHandler;->removeMessages(I)V

    return-void
.end method
