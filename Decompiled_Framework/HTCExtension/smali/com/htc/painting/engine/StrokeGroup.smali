.class public Lcom/htc/painting/engine/StrokeGroup;
.super Ljava/lang/Object;
.source "StrokeGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/StrokeGroup$SelectMode;
    }
.end annotation


# static fields
.field private static final ERASER_STROKE_ID:I = 0x2

.field private static final HTC_PEN_STROKE_ID:I = 0x4

.field private static final SIMPLE_STROKE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StrokeGroup"


# instance fields
.field private mIsEffective:Z

.field private mLockObject:Ljava/lang/Object;

.field private volatile mModifiedIndex:J

.field mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private volatile mSerializedIndex:J

.field private mStrokeGroupId:I

.field private mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

.field private mStrokeSerialNumber:I

.field private mStrokes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mViewPort:Lcom/htc/painting/engine/ViewPort;


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-void
.end method

.method constructor <init>(ILcom/htc/painting/engine/ViewPort;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    iput p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    iput-object p2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    return-void
.end method

.method private checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z
    .locals 8

    const/high16 v7, 0x3f00

    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {p1, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return v0
.end method

.method private static computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private createStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    instance-of v1, v1, Lcom/htc/painting/engine/HtcPen;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    check-cast v1, Lcom/htc/painting/engine/HtcPen;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    goto :goto_0
.end method

.method private createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    goto :goto_0
.end method

.method private createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I
    .locals 6

    const/4 v3, 0x4

    new-array v2, v3, [B

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private markModification()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    return-void
.end method

.method private markSerialization()V
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    return-void
.end method

.method private serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    instance-of v0, p2, Lcom/htc/painting/engine/stroke/SimpleStroke;

    if-eqz v0, :cond_1

    aput-byte v1, p3, v1

    aput-byte v1, p3, v3

    aput-byte v1, p3, v2

    aput-byte v1, p3, v4

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :cond_1
    instance-of v0, p2, Lcom/htc/painting/engine/stroke/EraserStroke;

    if-eqz v0, :cond_2

    aput-byte v1, p3, v1

    aput-byte v1, p3, v3

    aput-byte v1, p3, v2

    aput-byte v2, p3, v4

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    if-eqz v0, :cond_0

    aput-byte v1, p3, v1

    aput-byte v1, p3, v3

    aput-byte v1, p3, v2

    const/4 v0, 0x4

    aput-byte v0, p3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method clearStrokes()V
    .locals 3

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    const-string v0, "StrokeGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStrokes(), mIsModified = truegroupd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method deserialize([B)Lcom/htc/painting/engine/StrokeGroup;
    .locals 7

    if-nez p1, :cond_1

    const-string v4, "StrokeGroup"

    const-string v5, "deserialize(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    const-string v4, "StrokeGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deserialize(), mIsModified = falsegroupd id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v1

    iget v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    if-le v1, v4, :cond_2

    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;III)V

    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;III)V
    .locals 6

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V
    .locals 4

    if-nez p5, :cond_0

    const-string v2, "StrokeGroup"

    const-string v3, "Matrix shouldn\'t be null!"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2, v3}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p5

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1, p5}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p3, p4}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;II)V

    :cond_1
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V
    .locals 5

    if-nez p3, :cond_0

    const-string v3, "StrokeGroup"

    const-string v4, "Matrix shouldn\'t be null!"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_3

    const-string v3, "StrokeGroup"

    const-string v4, "annotation"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "StrokeGroup"

    const-string v4, "draw() cannot getCurrentStroke"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v2, p3}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public enableEraseMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    return-void
.end method

.method getBoundingRectF()Landroid/graphics/RectF;
    .locals 5

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_1

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    return v0
.end method

.method public getModificationIndex()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    return-wide v0
.end method

.method getNonEraserStrokeCount()I
    .locals 5

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPaintingStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    move v3, v0

    :goto_1
    if-gt v3, v2, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    if-nez p2, :cond_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v5

    goto :goto_0

    :cond_3
    move-object v4, v5

    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    return v0
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokes(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public getStrokesMemorySize()J
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v0, v5, :cond_0

    int-to-long v5, v4

    add-long/2addr v1, v5

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v5}, Lcom/htc/painting/engine/stroke/Stroke;->getTotalBytes()I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method getViewPort()Lcom/htc/painting/engine/ViewPort;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    return-object v0
.end method

.method isClean()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isEffective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    return v0
.end method

.method public isEraseModeOn()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    return v0
.end method

.method isModified()Z
    .locals 4

    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iget-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method purgeStrokes(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->truncateStrokes()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v4, v5}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_1

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "StrokeGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StrokeGroup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Stroke "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will be removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->getNonEraserStrokeCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    :cond_3
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    const-string v4, "StrokeGroup"

    const-string v5, "purgeStrokes(), mIsModified = true"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method resetStrokes()V
    .locals 3

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    const-string v0, "StrokeGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetStrokes(), mIsModified = truegroupd id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method serialize(ZZ)[B
    .locals 6

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x4

    new-array v2, v4, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    :cond_2
    invoke-direct {p0, v0, v3, v2}, Lcom/htc/painting/engine/StrokeGroup;->serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V

    invoke-virtual {v3, v0}, Lcom/htc/painting/engine/stroke/Stroke;->serialize(Ljava/io/ByteArrayOutputStream;)Z

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    throw v4

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method setEffective(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    return-void
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    return-void
.end method

.method setRotation(I)V
    .locals 7

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    int-to-float v3, p1

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotY()F

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v2, v1}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    const-string v3, "StrokeGroup"

    const-string v4, "setRotation(), mIsModified = true"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    return-void
.end method

.method setStrokeEnable(Lcom/htc/painting/engine/stroke/Stroke;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    :cond_0
    return-void
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1

    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    return-void
.end method

.method setViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    return-void
.end method

.method strokeEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->end(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    :cond_0
    return-void
.end method

.method strokeMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method strokeStart(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v0, p1, p6}, Lcom/htc/painting/engine/stroke/Stroke;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public transformStroke(Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    const/4 v0, 0x0

    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_4

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    :cond_3
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_3

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    goto :goto_2

    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method truncateStrokes()V
    .locals 5

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
