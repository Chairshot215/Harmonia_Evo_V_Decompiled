.class public Lcom/htc/widget/DeckControlSPAdapter;
.super Lcom/htc/sunny/SPresentationLinearAdapter;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;,
        Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;,
        Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    }
.end annotation


# instance fields
.field private final antialias:Z

.field private bmpconfig:Landroid/graphics/Bitmap$Config;

.field private bmpheight:I

.field private bmpwidth:I

.field private capacity:I

.field private center:I

.field private final debugflag:Z

.field private final dfbmpheight:I

.field private final dfbmpwidth:I

.field private final dfcapacity:I

.field private dfsbitmap:Lcom/htc/sunny/SBitmap;

.field private glideadater:Lcom/htc/widget/DeckControlAdapter;

.field private glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

.field private glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

.field private final maxcachesize:I

.field private requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

.field private sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

.field private final sbitmapmaxh:I

.field private final sbitmapmaxw:I

.field private final threadWait:I

.field private final threadlen:I

.field private workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

.field private xrotateang:F

.field private yrotateang:F

.field private zrotateang:F


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/sunny/SPresentationLinearAdapter;-><init>()V

    iput v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->threadlen:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfcapacity:I

    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfbmpwidth:I

    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfbmpheight:I

    const/16 v1, 0x200

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapmaxw:I

    const/16 v1, 0x200

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapmaxh:I

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->threadWait:I

    iput v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->maxcachesize:I

    iput-boolean v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->debugflag:Z

    iput-boolean v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->antialias:Z

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/DeckControlSPAdapter$1;-><init>(Lcom/htc/widget/DeckControlSPAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    iput v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iput v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v6}, Lcom/htc/sunny/SBitmap;->createBitmap(III)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-ge p1, v3, :cond_0

    const/16 p1, 0xf

    :cond_0
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    new-instance v1, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    new-array v1, v3, [Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    iput-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    new-instance v2, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    invoke-direct {v2, p0, v0}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;-><init>(Lcom/htc/widget/DeckControlSPAdapter;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DeckControlSPAdapter;)[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/DeckControlSPAdapter;)Lcom/htc/widget/DeckControl$DCAdapterListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DeckControlSPAdapter;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DeckControlSPAdapter;)Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DeckControlSPAdapter;ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/DeckControlSPAdapter;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/htc/widget/DeckControlAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 21

    if-nez p1, :cond_0

    const/16 v19, 0x0

    :goto_0
    return-object v19

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/4 v2, 0x1

    if-lt v5, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    div-int/lit8 v6, v16, 0x2

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    div-int/lit8 v2, v16, 0x2

    add-int v2, v2, v16

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    new-instance v18, Landroid/graphics/Canvas;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    move/from16 v0, v16

    int-to-float v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v12, v2

    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v10, 0x0

    move/from16 v0, v16

    int-to-float v11, v0

    int-to-float v12, v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v9, v18

    move-object/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter.destroy()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_2

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->destroy()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v11, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v6, v6, v3

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->join(J)V

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v6, "SPresentationAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPresentationAdapter:Thread.join():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_3
    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v6}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_4
    :goto_3
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter.destroy()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    iput-object v10, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v6, "SPresentationAdapter"

    const-string v7, "SPresentationAdapter:destroy"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v6}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v6}, Lcom/htc/sunny/SBitmap;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v7}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->destroy()V

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v7}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->destroy()V

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v7}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_5
    throw v6
.end method

.method public getContainerCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;
    .locals 6

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/widget/DeckControlAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iput v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    iput v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter;->getContainerCount()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    sub-int v3, v0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    neg-float v4, v4

    int-to-float v5, v1

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    sub-int v5, p1, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v3, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    sub-int v5, v0, p1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/Vector3F;->mZ:F

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public getItemBitmap(I)Lcom/htc/sunny/SBitmap;
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v1, :cond_1

    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBitmapCache.pull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->pull(Ljava/lang/Integer;)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBitmapCache.pull("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v1, :cond_2

    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestQueue.addFirst("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->addLast(Ljava/lang/Integer;IZ)V

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "SPresentationAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestQueue.addFirst("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/DeckControlAdapter;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    ushr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public notifySelectionChange(I)V
    .locals 1

    iget v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->center:I

    :cond_0
    return-void
.end method

.method public notifyStateChange(I)V
    .locals 0

    return-void
.end method

.method public setAdatper(Lcom/htc/widget/DeckControlAdapter;)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x4180

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter.setAdatper()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iget-object v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerc:Lcom/htc/widget/DeckControl$DCAdapterListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/DeckControlAdapter;->setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_2

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->setDropTime()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->clear()V

    :cond_4
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_6

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_6

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;->start()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v5

    if-le v5, v4, :cond_8

    move v2, v4

    :goto_3
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v5

    if-le v5, v4, :cond_9

    move v1, v4

    :goto_4
    mul-int v4, v2, v1

    int-to-float v3, v4

    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_a

    const/4 v4, 0x4

    :goto_5
    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x4980

    div-float v3, v4, v5

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    const-string v4, "SPresentationAdapter"

    const-string v5, "SPresentationAdapter.resetCapacity()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    div-float v4, v7, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/DeckControlAdapter;->getContainerCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->capacity:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DeckControlSPAdapter;->setCapacity(I)V

    :cond_7
    const-string v4, "SPresentationAdapter"

    const-string v5, "SPresentationAdapter.setAdatper()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v2

    goto :goto_3

    :cond_9
    iget v4, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/DeckControlSPAdapter;->nextPowerOf2(I)I

    move-result v1

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    goto :goto_5
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public setCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SPresentationAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPresentationAdapter.setcapacity():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->setCapacity(I)V

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;->setCapacity(I)V

    const-string v0, "SPresentationAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPresentationAdapter.setcapacity():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultView(Landroid/view/View;)V
    .locals 10

    const/16 v9, 0x200

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    iget-object v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpconfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :try_start_0
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v7, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    invoke-static {v0, v9, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/DeckControlSPAdapter;->dfsbitmap:Lcom/htc/sunny/SBitmap;

    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "SPresentationAdapter"

    const-string v6, "SPresentationAdapter:setDefaultView()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setGMAdapterListener(Lcom/htc/widget/DeckControl$DCAdapterListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glidelistenerp:Lcom/htc/widget/DeckControl$DCAdapterListener;

    goto :goto_0
.end method

.method public setItemSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    :goto_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    if-lez p2, :cond_3

    :goto_2
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    goto :goto_2
.end method

.method public setSpacing(F)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    iget v2, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpwidth:I

    iget v3, p0, Lcom/htc/widget/DeckControlSPAdapter;->bmpheight:I

    cmpl-float v4, p1, v0

    if-lez v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2, v3, p1}, Lcom/htc/widget/DeckControlAdapter;->adjustLayout(IIF)V

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1
.end method

.method public setXRotateAngle(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->xrotateang:F

    return-void
.end method

.method public setYOffset(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->workerthread:[Lcom/htc/widget/DeckControlSPAdapter$WorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->requestqueue:Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->sbitmapcache:Lcom/htc/widget/DeckControlSPAdapter$SBitmapCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter;->glideadater:Lcom/htc/widget/DeckControlAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DeckControlAdapter;->setYOffset(F)V

    goto :goto_0
.end method

.method public setYRotateAngle(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->yrotateang:F

    return-void
.end method

.method public setZRotateAngle(F)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter;->zrotateang:F

    return-void
.end method
