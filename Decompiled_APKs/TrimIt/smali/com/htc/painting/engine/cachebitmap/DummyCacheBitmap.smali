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
    .parameter "src"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCreateTime:J

    .line 29
    iget-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 30
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 31
    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    .line 32
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    .line 48
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    iput-object v1, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method

.method public findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 1
    .parameter "group"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getCanvasMatrixInverse()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvasMatrixInverse:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCreateTime:J

    return-wide v0
.end method

.method public getDrawingStamp()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRect(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 57
    return-void
.end method

.method public getRefTransformedCanvas(Ljava/util/Collection;)Landroid/graphics/Canvas;
    .locals 1
    .parameter
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

    .prologue
    .line 62
    .local p1, targetRecords:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/engine/ViewPortSnapShot;>;"
    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/DummyCacheBitmap;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getReferenceRecord()Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public intersects(Landroid/graphics/RectF;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawingStamp(J)V
    .locals 0
    .parameter "stamp"

    .prologue
    .line 92
    return-void
.end method

.method public updateDrawingData(Lcom/htc/painting/engine/StrokeGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 76
    return-void
.end method
