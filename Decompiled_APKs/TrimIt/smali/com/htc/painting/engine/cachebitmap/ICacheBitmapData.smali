.class public interface abstract Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;
.super Ljava/lang/Object;
.source "ICacheBitmapData.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract findRecord(Lcom/htc/painting/engine/StrokeGroup;)Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCanvas()Landroid/graphics/Canvas;
.end method

.method public abstract getCanvasMatrixInverse()Landroid/graphics/Matrix;
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getDrawingStamp()J
.end method

.method public abstract getRect(Landroid/graphics/RectF;)V
.end method

.method public abstract getRefTransformedCanvas(Ljava/util/Collection;)Landroid/graphics/Canvas;
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
.end method

.method public abstract getReferenceRecord()Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
.end method

.method public abstract intersects(Landroid/graphics/RectF;)Z
.end method

.method public abstract setDrawingStamp(J)V
.end method
