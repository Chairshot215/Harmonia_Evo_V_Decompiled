.class Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;
.super Lcom/htc/painting/engine/cachebitmap/CacheTask;
.source "CacheBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/CacheBitmapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialUpdateCacheTask"
.end annotation


# instance fields
.field groupIds:[I

.field mStroke:Lcom/htc/painting/engine/stroke/Stroke;

.field mViewPort:Lcom/htc/painting/engine/ViewPort;

.field painting:Lcom/htc/painting/engine/HtcPainting;

.field final synthetic this$0:Lcom/htc/painting/engine/CacheBitmapWorker;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/CacheBitmapWorker;JLcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;Lcom/htc/painting/engine/HtcPainting;[ILcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/stroke/Stroke;Lcom/htc/painting/engine/ViewPort;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "list"
    .parameter "p"
    .parameter "ids"
    .parameter "ref"
    .parameter "s"
    .parameter "vp"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->this$0:Lcom/htc/painting/engine/CacheBitmapWorker;

    .line 198
    invoke-direct {p0, p2, p3, p7, p4}, Lcom/htc/painting/engine/cachebitmap/CacheTask;-><init>(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;)V

    .line 199
    iput-object p6, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->groupIds:[I

    .line 200
    iput-object p5, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    .line 201
    iput-object p8, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 202
    iput-object p9, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 203
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x3f00

    const/4 v12, 0x0

    .line 206
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v11}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 207
    .local v8, r:Landroid/graphics/RectF;
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v11}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpg-float v11, v11, v12

    if-lez v11, :cond_0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v11

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    add-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    add-float/2addr v12, v13

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_1
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 223
    .local v4, hasCache:Z
    :goto_2
    if-eqz v4, :cond_4

    new-instance v2, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;

    invoke-direct {v2, v0}, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 225
    .local v2, data:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    :goto_3
    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->isDestroyed()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->abort()V

    goto :goto_0

    .line 216
    .end local v2           #data:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    .end local v4           #hasCache:Z
    :catch_0
    move-exception v3

    .line 217
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v11, "CacheWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to partial cache, width :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 223
    .restart local v4       #hasCache:Z
    :cond_4
    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v2

    goto :goto_3

    .line 229
    .restart local v2       #data:Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v9

    .line 230
    .local v9, targetCanvas:Landroid/graphics/Canvas;
    invoke-interface {v2}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 231
    .local v1, cacheCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 232
    .local v6, k:I
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 234
    .local v7, k2:I
    if-eqz v4, :cond_6

    .line 235
    iget v11, v8, Landroid/graphics/RectF;->left:F

    neg-float v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    neg-float v12, v12

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    :goto_4
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->groupIds:[I

    array-length v11, v11

    new-array v10, v11, [Lcom/htc/painting/engine/ViewPort;

    .line 241
    .local v10, vps:[Lcom/htc/painting/engine/ViewPort;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->groupIds:[I

    array-length v11, v11

    if-ge v5, v11, :cond_7

    .line 242
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v12, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->groupIds:[I

    aget v12, v12, v5

    invoke-virtual {v11, v12}, Lcom/htc/painting/engine/HtcPainting;->getViewPort(I)Lcom/htc/painting/engine/ViewPort;

    move-result-object v11

    aput-object v11, v10, v5

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 237
    .end local v5           #i:I
    .end local v10           #vps:[Lcom/htc/painting/engine/ViewPort;
    :cond_6
    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 238
    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_4

    .line 244
    .restart local v5       #i:I
    .restart local v10       #vps:[Lcom/htc/painting/engine/ViewPort;
    :cond_7
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->painting:Lcom/htc/painting/engine/HtcPainting;

    iget-object v12, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->groupIds:[I

    new-instance v13, Lcom/htc/painting/engine/InterruptRef;

    invoke-direct {v13}, Lcom/htc/painting/engine/InterruptRef;-><init>()V

    invoke-virtual {v11, v2, v12, v10, v13}, Lcom/htc/painting/engine/HtcPainting;->drawOnCacheBitmap(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/InterruptRef;)V

    .line 247
    if-eqz v4, :cond_8

    .line 248
    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 249
    invoke-static {}, Lcom/htc/painting/engine/HtcPaintingUtil;->getClearPaint()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 250
    invoke-interface {v2}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v11, v14, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 251
    invoke-interface {v2}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->destroy()V

    .line 254
    :cond_8
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 256
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    if-eqz v11, :cond_0

    .line 257
    iget-object v11, p0, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->mListener:Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;

    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRequestKey()J

    move-result-wide v12

    invoke-virtual {p0}, Lcom/htc/painting/engine/CacheBitmapWorker$PartialUpdateCacheTask;->getRefData()Lcom/htc/painting/engine/cachebitmap/CacheBitmapData;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lcom/htc/painting/engine/CacheBitmapWorker$OnProgressiveTaskListener;->onTaskEnd(JLcom/htc/painting/engine/cachebitmap/CacheBitmapData;)V

    goto/16 :goto_0
.end method
