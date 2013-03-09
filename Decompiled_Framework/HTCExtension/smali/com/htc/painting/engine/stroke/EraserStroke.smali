.class public Lcom/htc/painting/engine/stroke/EraserStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "EraserStroke.java"


# static fields
.field private static final METAINFO_BYTESIZE:I = 0x10

.field private static final MOTION_POINT_BYTESIZE:I = 0x8

.field private static VERSION:B

.field private static sIntBuffer:[B

.field private static sLongBuffer:[B

.field private static sShortBuffer:[B


# instance fields
.field mDirtyRect:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;

.field mSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-byte v0, Lcom/htc/painting/engine/stroke/EraserStroke;->VERSION:B

    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->init()V

    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/engine/StrokeProperties;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->init()V

    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->prepareEraserPaint()V

    return-void
.end method

.method private prepareEraserPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/high16 v2, -0x8000

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    new-array v10, v2, [B

    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v24, v0

    const/4 v2, 0x4

    new-array v15, v2, [B

    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v26, v10, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v20

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v21, 0x0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v12

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v11

    int-to-float v2, v12

    add-float v28, v17, v2

    int-to-float v2, v13

    add-float v29, v18, v2

    int-to-long v2, v11

    add-long v8, v21, v2

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v30, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v28

    float-to-int v3, v0

    move/from16 v0, v29

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v17, v28

    move/from16 v18, v29

    move-wide/from16 v21, v8

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v2, v20, -0x1

    if-ne v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v28, v17

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v29, v18

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->setStrokeId(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v16 .. v16}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArraytoLong([B)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    new-instance v19, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v19 .. v19}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v24 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v27

    move/from16 v0, v27

    int-to-float v2, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    new-instance v23, Landroid/graphics/RectF;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-int/lit8 v4, v27, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/RectF;->top:F

    div-int/lit8 v5, v27, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/RectF;->right:F

    div-int/lit8 v6, v27, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v7, v27, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/StrokeProperties;->setEraser(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->prepareEraserPaint()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v22

    const/16 v23, 0x0

    cmpg-float v22, v22, v23

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getProperties()Lcom/htc/painting/engine/StrokeProperties;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v10

    move/from16 v19, v10

    const v15, 0x7f7fffff

    const v16, 0x7f7fffff

    const v13, -0x800001

    const v14, -0x800001

    move/from16 v11, p2

    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-eq v11, v0, :cond_3

    if-ltz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v22

    sub-int v22, v23, v22

    move/from16 v0, v22

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    add-int/lit8 v23, v11, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    sub-int v22, v23, v22

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v23

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v7, v22, v23

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    div-float v22, v6, v22

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v8, v22, v23

    const/4 v12, 0x0

    :goto_2
    int-to-float v0, v12

    move/from16 v22, v0

    div-float v23, v5, v7

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v17, v20, v22

    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v18, v21, v22

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v18, v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v18

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mSpacing:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v23

    div-float v8, v22, v23

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    div-float v22, v5, v22

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v7, v22, v23

    const/4 v12, 0x0

    :goto_3
    int-to-float v0, v12

    move/from16 v22, v0

    div-float v23, v6, v8

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v7

    add-float v17, v20, v22

    int-to-float v0, v12

    move/from16 v22, v0

    mul-float v22, v22, v8

    add-float v18, v21, v22

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v17, v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    sub-float v22, v18, v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v22, v22, v18

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    if-ltz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v22 .. v22}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v19, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    sub-float v22, v22, v23

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v13, v0}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v19, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v15, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v13, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v14, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0
.end method

.method public getTotalBytes()I
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x10

    :cond_0
    return v0
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p2, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iput-object p6, p0, Lcom/htc/painting/engine/stroke/EraserStroke;->mDirtyRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/painting/engine/stroke/EraserStroke;->draw(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-byte v13, Lcom/htc/painting/engine/stroke/EraserStroke;->VERSION:B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->isEffective()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    int-to-byte v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v13, :cond_4

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v12

    sub-int v13, v11, v7

    const/16 v14, 0x7fff

    if-le v13, v14, :cond_1

    const/16 v1, 0x7fff

    :goto_2
    sub-int v13, v12, v8

    const/16 v14, 0x7fff

    if-le v13, v14, :cond_2

    const/16 v3, 0x7fff

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v13}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v9

    sub-long v13, v9, v5

    const-wide/32 v15, 0x7fffffff

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    const v2, 0x7fffffff

    :goto_4
    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x0

    shr-int/lit8 v15, v1, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x1

    int-to-byte v15, v1

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x2

    shr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x3

    int-to-byte v15, v3

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x4

    shr-int/lit8 v15, v2, 0x18

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x5

    shr-int/lit8 v15, v2, 0x10

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x6

    shr-int/lit8 v15, v2, 0x8

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    const/4 v14, 0x7

    int-to-byte v15, v2

    aput-byte v15, v13, v14

    move v7, v11

    move v8, v12

    move-wide v5, v9

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_1
    sub-int v13, v11, v7

    int-to-short v1, v13

    goto :goto_2

    :cond_2
    sub-int v13, v12, v8

    int-to-short v3, v13

    goto :goto_3

    :cond_3
    sub-long v13, v9, v5

    long-to-int v2, v13

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getId()I

    move-result v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/EraserStroke;->getCreationTime()J

    move-result-wide v13

    sget-object v15, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    invoke-static {v13, v14, v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->longToByteArray(J[B)V

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v13}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v13

    float-to-int v13, v13

    int-to-short v13, v13

    sget-object v14, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    invoke-static {v13, v14}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S[B)V

    sget-object v13, Lcom/htc/painting/engine/stroke/EraserStroke;->sShortBuffer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v13, 0x1

    return v13
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method
