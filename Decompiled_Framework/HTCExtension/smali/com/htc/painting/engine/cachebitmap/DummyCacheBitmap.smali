.class public Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;
.super Ljava/lang/Object;
.source "DummyCacheBitmap.java"

# interfaces
.implements Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasMatrixInverse:Landroid/graphics/Matrix;

.field private final mCreateTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCreateTime:J

    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getCanvasMatrixInverse()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCreateTime:J

    return-wide v0
.end method

.method public getDrawingStamp()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRect(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public getRefTransformedCanvas(Ljava/util/Collection;)Landroid/graphics/Canvas;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;)",
            "Landroid/graphics/Canvas;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getReferenceRecord()Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public intersects(Landroid/graphics/RectF;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDrawingStamp(J)V
    .locals 0

    return-void
.end method

.method public updateDrawingData(Lcom/htc/painting/engine/StrokeGroup;)V
    .locals 0

    return-void
.end method
