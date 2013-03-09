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

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 44
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    .line 50
    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    .line 55
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 56
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 57
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 64
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 66
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 75
    return-void
.end method

.method constructor <init>(ILcom/htc/painting/engine/ViewPort;)V
    .locals 4
    .parameter "id"
    .parameter "viewport"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 44
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    .line 50
    const v0, -0x7fffffff

    iput v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    .line 55
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 56
    iput-wide v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 57
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 64
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 66
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 69
    iput p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    .line 70
    iput-object p2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 71
    return-void
.end method

.method private checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z
    .locals 8
    .parameter "canvasBound"
    .parameter "s"
    .parameter "matrix"

    .prologue
    const/high16 v7, 0x3f00

    .line 456
    invoke-virtual {p2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 457
    .local v2, strokeRect:Landroid/graphics/RectF;
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

    .line 461
    .local v1, strokeBound:Landroid/graphics/RectF;
    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 462
    invoke-static {p1, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    .line 463
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 471
    :cond_0
    return v0
.end method

.method private static computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 5
    .parameter "viewport"
    .parameter "convertMatrix"

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 913
    .local v0, result:Landroid/graphics/Matrix;
    if-nez v0, :cond_0

    .line 915
    if-nez p1, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    .end local v0           #result:Landroid/graphics/Matrix;
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 916
    .restart local v0       #result:Landroid/graphics/Matrix;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 919
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getScalingPivotY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 922
    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetX()F

    move-result v1

    invoke-virtual {p0}, Lcom/htc/painting/engine/ViewPort;->getOffsetY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 925
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 915
    goto :goto_0
.end method

.method private createStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .line 258
    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 259
    return-object v0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    instance-of v1, v1, Lcom/htc/painting/engine/HtcPen;

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    check-cast v1, Lcom/htc/painting/engine/HtcPen;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v2, v1, v3}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0
.end method

.method private createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 3
    .parameter "type"
    .parameter "is"

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 265
    new-instance v0, Lcom/htc/painting/engine/stroke/EraserStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/EraserStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .line 271
    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V

    .line 272
    return-object v0

    .line 266
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 267
    new-instance v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/HtcPenStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0

    .line 268
    :cond_2
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Lcom/htc/painting/engine/stroke/SimpleStroke;

    .end local v0           #s:Lcom/htc/painting/engine/stroke/Stroke;
    iget v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    invoke-direct {v0, v1, p2}, Lcom/htc/painting/engine/stroke/SimpleStroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    .restart local v0       #s:Lcom/htc/painting/engine/stroke/Stroke;
    goto :goto_0
.end method

.method private createStrokeCore(Lcom/htc/painting/engine/stroke/Stroke;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 278
    monitor-exit v1

    .line 294
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I
    .locals 6
    .parameter "is"

    .prologue
    .line 879
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 881
    .local v2, type:[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
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

    .line 887
    :goto_0
    return v1

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private markModification()V
    .locals 2

    .prologue
    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    .line 930
    return-void
.end method

.method private markSerialization()V
    .locals 2

    .prologue
    .line 933
    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    iput-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mSerializedIndex:J

    .line 934
    return-void
.end method

.method private serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V
    .locals 5
    .parameter "os"
    .parameter "d"
    .parameter "type"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 851
    instance-of v0, p2, Lcom/htc/painting/engine/stroke/SimpleStroke;

    if-eqz v0, :cond_1

    .line 852
    aput-byte v1, p3, v1

    .line 853
    aput-byte v1, p3, v3

    .line 854
    aput-byte v1, p3, v2

    .line 855
    aput-byte v1, p3, v4

    .line 868
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 876
    :goto_1
    return-void

    .line 856
    :cond_1
    instance-of v0, p2, Lcom/htc/painting/engine/stroke/EraserStroke;

    if-eqz v0, :cond_2

    .line 857
    aput-byte v1, p3, v1

    .line 858
    aput-byte v1, p3, v3

    .line 859
    aput-byte v1, p3, v2

    .line 860
    aput-byte v2, p3, v4

    goto :goto_0

    .line 861
    :cond_2
    instance-of v0, p2, Lcom/htc/painting/engine/stroke/HtcPenStroke;

    if-eqz v0, :cond_0

    .line 862
    aput-byte v1, p3, v1

    .line 863
    aput-byte v1, p3, v3

    .line 864
    aput-byte v1, p3, v2

    .line 865
    const/4 v0, 0x4

    aput-byte v0, p3, v4

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 872
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 873
    :catch_1
    move-exception v0

    goto :goto_1

    .line 871
    :catchall_0
    move-exception v0

    .line 872
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 874
    :goto_2
    throw v0

    .line 873
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

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 327
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

    .line 328
    return-void

    .line 325
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
    .parameter "serializedByteArray"

    .prologue
    .line 768
    if-nez p1, :cond_1

    .line 769
    const-string v4, "StrokeGroup"

    const-string v5, "deserialize(null)"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_0
    return-object p0

    .line 772
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 774
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    .line 775
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    .line 776
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

    .line 791
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-eqz v4, :cond_0

    .line 792
    invoke-direct {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->deserializeStrokeType(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 793
    .local v3, type:I
    invoke-direct {p0, v3, v0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke(ILjava/io/ByteArrayInputStream;)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v2

    .line 796
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_2

    .line 797
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v1

    .line 798
    .local v1, i:I
    iget v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    if-le v1, v4, :cond_2

    .line 799
    iput v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeSerialNumber:I

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;I)V
    .locals 3
    .parameter "canvas"
    .parameter "strokeId"

    .prologue
    .line 532
    invoke-virtual {p0, p2}, Lcom/htc/painting/engine/StrokeGroup;->getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    .line 533
    .local v0, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/htc/painting/engine/stroke/Stroke;->getMotionPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;III)V

    .line 536
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;III)V
    .locals 6
    .parameter "canvas"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 482
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V

    .line 483
    return-void
.end method

.method draw(Landroid/graphics/Canvas;IIILandroid/graphics/Matrix;)V
    .locals 4
    .parameter "canvas"
    .parameter "strokeId"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "matrix"

    .prologue
    .line 507
    if-nez p5, :cond_0

    .line 509
    const-string v2, "StrokeGroup"

    const-string v3, "Matrix shouldn\'t be null!"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2, v3}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p5

    .line 513
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 515
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 516
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v1

    .line 517
    .local v1, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1, p5}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {v1, p1, p3, p4}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;II)V

    .line 522
    :cond_1
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "containPaintingStroke"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v0}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V

    .line 401
    return-void
.end method

.method draw(Landroid/graphics/Canvas;ZLandroid/graphics/Matrix;)V
    .locals 5
    .parameter "canvas"
    .parameter "containPaintingStroke"
    .parameter "matrix"

    .prologue
    .line 419
    if-nez p3, :cond_0

    .line 421
    const-string v3, "StrokeGroup"

    const-string v4, "Matrix shouldn\'t be null!"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v3}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 425
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 427
    .local v0, drawingRect:Landroid/graphics/RectF;
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 430
    if-eqz p2, :cond_3

    .line 431
    const-string v3, "StrokeGroup"

    const-string v4, "annotation"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v3, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    const-string v3, "StrokeGroup"

    const-string v4, "draw() cannot getCurrentStroke"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 446
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v2, p3}, Lcom/htc/painting/engine/StrokeGroup;->checkIntersect(Landroid/graphics/RectF;Lcom/htc/painting/engine/stroke/Stroke;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    invoke-virtual {v2, p1}, Lcom/htc/painting/engine/stroke/Stroke;->draw(Landroid/graphics/Canvas;)V

    .line 444
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public enableEraseMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    .line 825
    return-void
.end method

.method getBoundingRectF()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 338
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 339
    .local v1, recf:Landroid/graphics/RectF;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_1

    .line 340
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 341
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 343
    .local v3, strokeBounds:Landroid/graphics/RectF;
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 339
    .end local v3           #strokeBounds:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    return-object v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeGroupId:I

    return v0
.end method

.method public getModificationIndex()J
    .locals 2

    .prologue
    .line 937
    iget-wide v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mModifiedIndex:J

    return-wide v0
.end method

.method getNonEraserStrokeCount()I
    .locals 5

    .prologue
    .line 182
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 194
    :cond_1
    return v0

    .line 186
    :cond_2
    const/4 v0, 0x0

    .line 187
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 189
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
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

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 187
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPaintingStroke()Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public getStroke(I)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 1
    .parameter "id"

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokeInternal(IZ)Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v0

    return v0
.end method

.method getStrokeCount()I
    .locals 1

    .prologue
    .line 177
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
    .parameter "id"
    .parameter "containIneffective"

    .prologue
    const/4 v5, 0x0

    .line 549
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    move-object v4, v5

    .line 571
    :cond_0
    :goto_0
    return-object v4

    .line 551
    :cond_1
    const/4 v0, 0x0

    .line 552
    .local v0, begin:I
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 557
    .local v2, end:I
    move v3, v0

    .local v3, i:I
    :goto_1
    if-gt v3, v2, :cond_3

    .line 559
    :try_start_0
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/stroke/Stroke;

    .line 560
    .local v4, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 561
    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    if-nez p2, :cond_0

    .line 557
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    .end local v4           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v5

    .line 567
    goto :goto_0

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object v4, v5

    .line 571
    goto :goto_0
.end method

.method public getStrokeProperties()Lcom/htc/painting/engine/StrokeProperties;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 816
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

    .prologue
    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->getStrokes(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokes(Z)Ljava/util/List;
    .locals 5
    .parameter "containIneffectives"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/stroke/Stroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 578
    .local v1, l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 579
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 580
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 582
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    return-object v1
.end method

.method public getStrokesMemorySize()J
    .locals 7

    .prologue
    .line 895
    const-wide/16 v1, 0x0

    .line 896
    .local v1, result:J
    const/4 v4, 0x4

    .line 897
    .local v4, strokeType:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v0, v5, :cond_0

    .line 898
    int-to-long v5, v4

    add-long/2addr v1, v5

    .line 899
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v5}, Lcom/htc/painting/engine/stroke/Stroke;->getTotalBytes()I

    move-result v3

    .line 900
    .local v3, size:I
    int-to-long v5, v3

    add-long/2addr v1, v5

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    .end local v3           #size:I
    :cond_0
    return-wide v1
.end method

.method getViewPort()Lcom/htc/painting/engine/ViewPort;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    return-object v0
.end method

.method isClean()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    const/4 v1, 0x1

    .line 165
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v0, v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 167
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
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

    .line 169
    const/4 v1, 0x0

    .line 170
    goto :goto_0

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method isEffective()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    return v0
.end method

.method public isEraseModeOn()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->isEraser()Z

    move-result v0

    return v0
.end method

.method isModified()Z
    .locals 4

    .prologue
    .line 78
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
    .parameter "canvas"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->truncateStrokes()V

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, removeIndices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v4, v5}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 360
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_1

    .line 362
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 363
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
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

    .line 367
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 371
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v5

    .line 372
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 373
    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 378
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->getNonEraserStrokeCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeGroup;->resetStrokes()V

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 382
    const-string v4, "StrokeGroup"

    const-string v5, "purgeStrokes(), mIsModified = true"

    invoke-static {v4, v5}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 375
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

    .prologue
    .line 300
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 304
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

    .line 305
    return-void

    .line 302
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
    .parameter "destroyStrokes"
    .parameter "saveIneffetiveStrokes"

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markSerialization()V

    .line 720
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 725
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 738
    .local v2, intBuffer:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    .line 739
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/Stroke;

    .line 743
    .local v3, s:Lcom/htc/painting/engine/stroke/Stroke;
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-ne v3, v4, :cond_1

    .line 764
    .end local v3           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 746
    .restart local v3       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    .line 748
    :cond_2
    invoke-direct {p0, v0, v3, v2}, Lcom/htc/painting/engine/StrokeGroup;->serializeStrokeType(Ljava/io/ByteArrayOutputStream;Lcom/htc/painting/engine/stroke/Stroke;[B)V

    .line 749
    invoke-virtual {v3, v0}, Lcom/htc/painting/engine/stroke/Stroke;->serialize(Ljava/io/ByteArrayOutputStream;)Z

    .line 751
    if-eqz p1, :cond_3

    .line 752
    invoke-virtual {v3}, Lcom/htc/painting/engine/stroke/Stroke;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 738
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    :catch_0
    move-exception v4

    .line 757
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 758
    :catch_1
    move-exception v4

    goto :goto_1

    .line 756
    :catchall_0
    move-exception v4

    .line 757
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 759
    :goto_2
    throw v4

    .line 758
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method setEffective(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mIsEffective:Z

    .line 87
    return-void
.end method

.method public setPen(Lcom/htc/painting/tool/pen/Pen;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPen:Lcom/htc/painting/tool/pen/Pen;

    .line 843
    return-void
.end method

.method setRotation(I)V
    .locals 7
    .parameter "degree"

    .prologue
    .line 698
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 699
    .local v1, m:Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 700
    :try_start_0
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 701
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    int-to-float v3, p1

    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v5}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPort;->getRotatePivotY()F

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 703
    invoke-virtual {v2, v1}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    .line 704
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 706
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 708
    const-string v3, "StrokeGroup"

    const-string v4, "setRotation(), mIsModified = true"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    .line 813
    return-void
.end method

.method setStrokeEnable(Lcom/htc/painting/engine/stroke/Stroke;Z)V
    .locals 1
    .parameter "s"
    .parameter "enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->setEffective(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method public setStrokeProperties(Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 828
    new-instance v0, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;-><init>(Lcom/htc/painting/engine/StrokeProperties;)V

    .line 829
    .local v0, newP:Lcom/htc/painting/engine/StrokeProperties;
    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    .line 830
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0, p1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    .line 821
    return-void
.end method

.method setViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 0
    .parameter "viewPort"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    .line 600
    return-void
.end method

.method strokeEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3
    .parameter "canvas"
    .parameter "dirtyRect"

    .prologue
    .line 681
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v2, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 685
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 686
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 687
    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v1, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;->end(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 688
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 689
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 691
    :cond_0
    return-void
.end method

.method strokeMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 661
    .local v7, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 662
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 663
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method strokeStart(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)Lcom/htc/painting/engine/stroke/Stroke;
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "dirtyRect"

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->createStroke()Lcom/htc/painting/engine/stroke/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    .line 627
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mViewPort:Lcom/htc/painting/engine/ViewPort;

    iget-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lcom/htc/painting/engine/StrokeGroup;->computeMatrix(Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 630
    .local v7, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 632
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    invoke-virtual {v0, p1, p6}, Lcom/htc/painting/engine/stroke/Stroke;->start(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 635
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/painting/engine/stroke/Stroke;->move(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V

    .line 637
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/StrokeGroup;->mPaintingStroke:Lcom/htc/painting/engine/stroke/Stroke;

    return-object v0
.end method

.method public transformStroke(Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/htc/painting/engine/StrokeGroup$SelectMode;)Z
    .locals 6
    .parameter "region"
    .parameter "transformMatrix"
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 946
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v3, :cond_1

    .line 947
    :cond_0
    const/4 v3, 0x0

    .line 962
    :goto_0
    return v3

    .line 949
    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 950
    :try_start_0
    iget-object v5, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 951
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    const/4 v0, 0x0

    .line 952
    .local v0, doTransform:Z
    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Contain:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_4

    .line 953
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    .line 957
    :cond_3
    :goto_2
    if-eqz v0, :cond_2

    .line 958
    invoke-virtual {v2, p2}, Lcom/htc/painting/engine/stroke/Stroke;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 961
    .end local v0           #doTransform:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 954
    .restart local v0       #doTransform:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/painting/engine/StrokeGroup$SelectMode;->Intersect:Lcom/htc/painting/engine/StrokeGroup$SelectMode;

    if-ne p3, v5, :cond_3

    .line 955
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    goto :goto_2

    .line 961
    .end local v0           #doTransform:Z
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method truncateStrokes()V
    .locals 5

    .prologue
    .line 387
    iget-object v4, p0, Lcom/htc/painting/engine/StrokeGroup;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    .line 388
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 389
    .local v1, l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    iget-object v3, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/stroke/Stroke;

    .line 390
    .local v2, s:Lcom/htc/painting/engine/stroke/Stroke;
    invoke-virtual {v2}, Lcom/htc/painting/engine/stroke/Stroke;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    .end local v2           #s:Lcom/htc/painting/engine/stroke/Stroke;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 394
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #l:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/painting/engine/stroke/Stroke;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/painting/engine/StrokeGroup;->markModification()V

    .line 395
    iput-object v1, p0, Lcom/htc/painting/engine/StrokeGroup;->mStrokes:Ljava/util/Vector;

    .line 396
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    return-void
.end method
