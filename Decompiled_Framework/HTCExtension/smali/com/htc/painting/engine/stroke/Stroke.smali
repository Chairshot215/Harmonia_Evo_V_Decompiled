.class public abstract Lcom/htc/painting/engine/stroke/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# static fields
.field private static INVALIDATE_POINT_POS:I = 0x0

.field public static final INVALID_STROKE_ID:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "Stroke"

.field private static mBoundaryMargin:I


# instance fields
.field private MOVE_TOLERANCE:F

.field protected mCreationTime:J

.field protected mId:I

.field protected mIsDestroyed:Z

.field protected mIsEffective:Z

.field protected mPath:Landroid/graphics/Path;

.field mPathMeasure:Landroid/graphics/PathMeasure;

.field protected mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPreX:I

.field private mPreY:I

.field protected mRectF:Landroid/graphics/RectF;

.field protected mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x8000

    sput v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    const/16 v0, 0xa

    sput v0, Lcom/htc/painting/engine/stroke/Stroke;->mBoundaryMargin:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->MOVE_TOLERANCE:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsDestroyed:Z

    iput-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    iput-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    iput-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    iput p1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mId:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/engine/StrokeProperties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    iput-object p2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/stroke/Stroke;->deserialize(Ljava/io/ByteArrayInputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract deserialize(Ljava/io/ByteArrayInputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    :cond_2
    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    invoke-virtual {p0}, Lcom/htc/painting/engine/stroke/Stroke;->onDestroy()V

    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final end(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 12

    iget v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    sget v1, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    sget v1, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/painting/engine/MotionPoint;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v0, Lcom/htc/painting/engine/MotionPoint;

    iget v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    iget v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v3

    invoke-virtual {v8}, Lcom/htc/painting/engine/MotionPoint;->getActionAreaSize()F

    move-result v4

    iget-object v5, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    sub-long/2addr v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/stroke/Stroke;->updateBoundingRect(Landroid/graphics/RectF;)V

    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    sget v0, Lcom/htc/painting/engine/stroke/Stroke;->INVALIDATE_POINT_POS:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    goto :goto_0
.end method

.method protected filterOutPoint(FFFF)Z
    .locals 3

    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->MOVE_TOLERANCE:F

    cmpl-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->MOVE_TOLERANCE:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mId:I

    return v0
.end method

.method public getMotionPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/MotionPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public getProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getTotalBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsDestroyed:Z

    return v0
.end method

.method public isEffective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    return v0
.end method

.method public final move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 11

    float-to-int v2, p2

    float-to-int v3, p3

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v9, 0x1

    :goto_0
    if-nez v9, :cond_0

    iget v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    int-to-float v1, v1

    iget v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/htc/painting/engine/stroke/Stroke;->filterOutPoint(FFFF)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz v9, :cond_4

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    :goto_1
    const/high16 v1, 0x3f80

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    const/4 v1, 0x0

    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v1, Lcom/htc/painting/engine/MotionPoint;

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    sub-long v7, v4, v7

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v8}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/htc/painting/engine/stroke/Stroke;->onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/stroke/Stroke;->updateBoundingRect(Landroid/graphics/RectF;)V

    iput v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    iput v3, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreX:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget v7, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPreY:I

    add-int/2addr v7, v3

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method protected onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public abstract serialize(Ljava/io/ByteArrayOutputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setEffective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    return-void
.end method

.method protected setStrokeId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mId:I

    return-void
.end method

.method public final start(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v1, p1}, Lcom/htc/painting/engine/MotionPoint;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    return-void
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v2}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v0, v2

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v2}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    sget v5, Lcom/htc/painting/engine/stroke/Stroke;->mBoundaryMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    sget v5, Lcom/htc/painting/engine/stroke/Stroke;->mBoundaryMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    sget v5, Lcom/htc/painting/engine/stroke/Stroke;->mBoundaryMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v4}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    sget v5, Lcom/htc/painting/engine/stroke/Stroke;->mBoundaryMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    :goto_0
    iget-object v2, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    goto :goto_0
.end method
