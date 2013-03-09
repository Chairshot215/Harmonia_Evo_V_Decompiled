.class Lcom/android/camera/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageLoader$WorkItem;,
        Lcom/android/camera/ImageLoader$LoadedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mBadThumbnailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mInProgress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mBadThumbnailList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    iput p2, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    iput-object p1, p0, Lcom/android/camera/ImageLoader;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/camera/ImageLoader;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ImageLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mBadThumbnailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ImageLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dumpQueue(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ImageLoader$WorkItem;

    iget v2, v2, Lcom/android/camera/ImageLoader$WorkItem;->mTag:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "ImageLoader"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private declared-synchronized start()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v2, "ImageLoader"

    const-string v3, "ImageLoader.start() <<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/ImageLoader$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ImageLoader$1;-><init>(Lcom/android/camera/ImageLoader;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image-loader-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    if-nez p4, :cond_2

    if-ltz v16, :cond_0

    if-gez v18, :cond_2

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    new-instance v26, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v26

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "ImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-object v11

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    div-float v12, v14, v13

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v27, v3, v4

    cmpl-float v3, v12, v27

    if-lez v3, :cond_5

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v25, v3, v13

    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_1
    if-eqz p0, :cond_8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    const/16 p0, 0x0

    goto :goto_1

    :cond_5
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v25, v3, v14

    const v3, 0x3f666666

    cmpg-float v3, v25, v3

    if-ltz v3, :cond_6

    const/high16 v3, 0x3f80

    cmpl-float v3, v25, v3

    if-lez v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    :cond_7
    const/16 p0, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v10, p1

    goto :goto_2
.end method


# virtual methods
.method bitmapSize(Landroid/graphics/Bitmap;)J
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancel(Lcom/android/camera/ImageManager$IImage;)Z
    .locals 9

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/android/camera/ImageLoader$WorkItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    monitor-exit v8

    :goto_0
    return v1

    :cond_0
    monitor-exit v8

    move v1, v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized clear(Landroid/net/Uri;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dump()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loader queue length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmap(Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ImageLoader;->start()V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v1, Lcom/android/camera/ImageLoader$WorkItem;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v2, 0x0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    if-eqz p4, :cond_3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public getBitmap(Lcom/android/camera/ImageManager$IImage;Lcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageLoader;->getBitmap(Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pushToFront(Lcom/android/camera/ImageManager$IImage;)V
    .locals 9

    iget-object v8, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    new-instance v0, Lcom/android/camera/ImageLoader$WorkItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v1, 0x1

    if-lt v6, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ImageLoader$WorkItem;

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageLoader.stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    return-void
.end method
