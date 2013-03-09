.class Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;
.super Lcom/htc/painting/engine/cachebitmap/CacheTask;
.source "CacheBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/CacheBitmapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateCacheTask"
.end annotation


# instance fields
.field groupIds:[I

.field height:I

.field mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

.field painting:Lcom/htc/painting/engine/HtcPainting;

.field final synthetic this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

.field width:I


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/CacheBitmapWorker;JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;IILcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-direct {p0, p2, p3, p9, p4}, Lcom/htc/painting/engine/cachebitmap/CacheTask;-><init>(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;)V

    iput-object p8, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    iput-object p7, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    iput p5, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->width:I

    iput p6, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->height:I

    return-void
.end method

.method private checkIncrementalValidation(Landroid/graphics/Canvas;)Z
    .locals 21

    new-instance v15, Landroid/graphics/RectF;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/painting/engine/HtcPainting;->getRequestedStrokeGroupIds()[I

    move-result-object v9

    move-object v4, v9

    array-length v10, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v10, :cond_4

    aget v8, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroup(I)Ljava/lang/ref/WeakReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/StrokeGroup;

    if-nez v13, :cond_0

    const/16 v17, 0x0

    :goto_1
    return v17

    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v16

    if-nez v16, :cond_1

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v12}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v12}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v11, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "CacheWorker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " eraser in drawing region, discard incremental display, eraser rect : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " drawingRect : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " visible Region : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_1
.end method

.method private clipRectWithOverlay(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iput v2, p1, Landroid/graphics/RectF;->left:F

    const/4 v0, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->sort()V

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_6

    :cond_3
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_4
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iput v2, p1, Landroid/graphics/RectF;->right:F

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private executeSubTask(Landroid/graphics/Canvas;I)V
    .locals 25

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    if-lez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->subList(II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/painting/engine/cachebitmap/CacheTask;

    move-object/from16 v0, v17

    check-cast v0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;

    move-object v14, v0

    iget-object v0, v14, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v16

    invoke-virtual/range {v19 .. v19}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :cond_0
    const-string v21, "CacheWorker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " run sub Task , refresh region : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v21

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-lez v21, :cond_1

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v21

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_3

    :cond_1
    const-string v21, "CacheWorker"

    const-string v22, "r have invalidate width/height"

    invoke-static/range {v21 .. v22}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/InterruptRef;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    #setter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v0, v1}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    monitor-exit v22

    goto :goto_1

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v21

    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v21

    const/high16 v22, 0x3f00

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v22

    const/high16 v23, 0x3f00

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_5

    new-instance v6, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v6, v4}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    :goto_4
    invoke-interface {v6}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    if-eqz v9, :cond_6

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/htc/painting/engine/ViewPort;

    move-object/from16 v20, v0

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    invoke-virtual/range {v21 .. v22}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v21

    aput-object v21, v20, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :catch_2
    move-exception v8

    const-string v21, "CacheWorker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "fail to buffer cache, width :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " height : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v5, v15}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v23, v0

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static/range {v23 .. v23}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V
    :try_end_5
    .catch Lcom/htc/painting/engine/exception/PaintingException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v13

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-interface {v6}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-interface {v6}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->destroy()V

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Lcom/htc/painting/engine/exception/PaintingException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v21, v0

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/painting/engine/InterruptRef;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static/range {v21 .. v22}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    goto/16 :goto_1
.end method

.method private prepareDrawingRecords()[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 10

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    array-length v0, v0

    new-array v7, v0, [Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->getStrokeGroupCore(I)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getViewPort()Lcom/htc/painting/engine/ViewPort;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    iget-object v1, p0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    aget v1, v1, v9

    invoke-virtual {v8}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;-><init>(ILcom/htc/painting/engine/ViewPort;JJ)V

    aput-object v0, v7, v9

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method private validateOverlay(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .locals 9

    const/4 v4, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/16 v3, 0x9

    new-array v1, v3, [F

    const/16 v3, 0x9

    new-array v2, v3, [F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->getValues([F)V

    aget v3, v1, v4

    aget v4, v2, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x7

    aget v3, v1, v3

    const/4 v4, 0x7

    aget v4, v2, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aget v3, v1, v3

    const/16 v4, 0x8

    aget v4, v2, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v1, v5

    aget v4, v2, v5

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v1, v8

    aget v4, v2, v8

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v1, v6

    aget v4, v2, v6

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v1, v7

    aget v4, v2, v7

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->width:I

    int-to-float v2, v2

    invoke-static {}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$000()[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    float-to-int v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->height:I

    int-to-float v2, v2

    invoke-static {}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$000()[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    float-to-int v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->getRequestKey()J

    move-result-wide v3

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->taskValid(J)Z
    invoke-static {v2, v3, v4}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$100(Lcom/htc/painting/engine/CacheBitmapWorker;J)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CacheWorker"

    const-string v3, "Task aborted"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->prepareDrawingRecords()[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    move-result-object v7

    new-instance v2, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->height:I

    invoke-direct/range {v2 .. v7}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;-><init>(IIII[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    new-instance v19, Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvasMatrixInverse()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v24, Landroid/graphics/RectF;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v23

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    if-eqz v2, :cond_2

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getAllReferenceRecords()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->findDrawingRecordOfTheSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    move-result-object v18

    :cond_2
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v17

    if-eqz v18, :cond_4

    if-eqz v23, :cond_4

    const/16 v2, 0x9

    new-array v10, v2, [F

    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v25, v0

    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPortSnapShot;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->validateOverlay(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-result v27

    const/4 v2, 0x2

    aget v2, v10, v2

    const/4 v3, 0x2

    aget v3, v25, v3

    sub-float v11, v2, v3

    const/4 v2, 0x5

    aget v2, v10, v2

    const/4 v3, 0x5

    aget v3, v25, v3

    sub-float v12, v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {v23 .. v24}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRect(Landroid/graphics/RectF;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    invoke-virtual {v2, v9}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getRect(Landroid/graphics/RectF;)V

    invoke-virtual {v9}, Landroid/graphics/RectF;->sort()V

    const-string v2, "CacheWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " refRect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v27, :cond_3

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->clipRectWithOverlay(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    const/16 v22, 0x1

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string v2, "CacheWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delta y is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clipped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->getRequestKey()J

    move-result-wide v3

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->taskValid(J)Z
    invoke-static {v2, v3, v4}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$100(Lcom/htc/painting/engine/CacheBitmapWorker;J)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CacheWorker"

    const-string v3, "Task aborted"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    goto/16 :goto_0

    :cond_4
    const-string v2, "CacheWorker"

    const-string v3, "no drawing record"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->checkIncrementalValidation(Landroid/graphics/Canvas;)Z

    move-result v13

    if-eqz v27, :cond_6

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    move/from16 v0, v17

    int-to-long v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v4, v0}, Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;->onTaskBegin(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->clearInterruptRef()V
    invoke-static {v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$200(Lcom/htc/painting/engine/CacheBitmapWorker;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    new-instance v3, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v3}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    #setter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2, v3}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->groupIds:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    move-object/from16 v28, v0

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static/range {v28 .. v28}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[ILcom/htc/painting/engine/InterruptRef;)V
    :try_end_0
    .catch Lcom/htc/painting/engine/exception/PaintingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CacheWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawOnCacheBitmap took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v20

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v23, :cond_9

    :cond_7
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getDrawingStamp()J

    move-result-wide v2

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getModifyTime()J

    move-result-wide v28

    cmp-long v2, v2, v28

    if-lez v2, :cond_9

    :try_start_1
    const-string v2, "CacheWorker"

    const-string v3, "check drawing stamp"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->setModifyTime(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_a

    const/16 v26, 0x0

    :goto_3
    if-gtz v26, :cond_8

    if-eqz v22, :cond_b

    :cond_8
    const/4 v14, 0x1

    :goto_4
    if-nez v14, :cond_c

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/InterruptRef;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "CacheWorker"

    const-string v3, "Task aborted"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/InterruptRef;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    const/4 v3, 0x0

    #setter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2, v3}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;

    goto/16 :goto_0

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Lcom/htc/painting/engine/exception/PaintingException;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    #getter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$300(Lcom/htc/painting/engine/CacheBitmapWorker;)Lcom/htc/painting/engine/InterruptRef;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/InterruptRef;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    const/4 v3, 0x0

    #setter for: Lcom/htc/painting/engine/CacheBitmapWorker;->mExecutingInterruptRef:Lcom/htc/painting/engine/InterruptRef;
    invoke-static {v2, v3}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$302(Lcom/htc/painting/engine/CacheBitmapWorker;Lcom/htc/painting/engine/InterruptRef;)Lcom/htc/painting/engine/InterruptRef;

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mSubTask:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v26

    goto :goto_3

    :cond_b
    const/4 v14, 0x0

    goto :goto_4

    :cond_c
    const-wide/16 v2, 0x4b0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->executeSubTask(Landroid/graphics/Canvas;I)V

    if-eqz v22, :cond_7

    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    monitor-enter v23
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v2, "CacheWorker"

    const-string v3, "do refresh source "

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v16

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    monitor-exit v23

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->getRequestKey()J

    move-result-wide v3

    #calls: Lcom/htc/painting/engine/CacheBitmapWorker;->taskValid(J)Z
    invoke-static {v2, v3, v4}, Lcom/htc/painting/engine/CacheBitmapWorker;->access$100(Lcom/htc/painting/engine/CacheBitmapWorker;J)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "CacheWorker"

    const-string v3, "Task aborted"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->abort()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/cachebitmap/CacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->getRequestKey()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/CacheBitmapWorker$CreateCacheTask;->mData:Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v4, v0}, Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;->onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    goto/16 :goto_0
.end method
