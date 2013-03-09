.class public Lcom/htc/painting/engine/stroke/HtcPenStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "HtcPenStroke.java"


# static fields
.field private static final METAINFO_BYTESIZE:I = 0x2a

.field private static final MOTION_POINT_BYTESIZE:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PenStroke"

.field private static VERSION:B

.field private static sIntBuffer:[B

.field private static sLongBuffer:[B

.field private static sPointBuffer:[B

.field private static sShortBuffer:[B


# instance fields
.field mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

.field mPen:Lcom/htc/painting/tool/pen/Pen;

.field private mPenName:Ljava/lang/String;

.field private mPenPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-byte v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->VERSION:B

    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/tool/pen/Pen;Lcom/htc/painting/engine/StrokeProperties;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    iput-object p2, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 44
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

    new-array v11, v2, [B

    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v35, v0

    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    const/16 v2, 0x8

    new-array v0, v2, [B

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v39, v11, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v2, v11, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v28

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v15

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v16

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v32

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v14

    int-to-float v2, v15

    add-float v41, v21, v2

    move/from16 v0, v16

    int-to-float v2, v0

    add-float v42, v22, v2

    int-to-float v2, v13

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    add-float v7, v29, v2

    int-to-long v2, v14

    add-long v8, v30, v2

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v43, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v41

    float-to-int v3, v0

    move/from16 v0, v42

    float-to-int v4, v0

    move/from16 v0, v32

    int-to-float v5, v0

    const/high16 v6, 0x437f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v43

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v41

    move/from16 v22, v42

    move/from16 v29, v7

    move-wide/from16 v30, v8

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v2, v28, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v41, v21

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v42, v22

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v25

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v27

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    const/16 v24, 0x0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/painting/util/PenHelper;->queryPen(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/painting/tool/pen/Pen;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPen:Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v2}, Lcom/htc/painting/tool/pen/Pen;->getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->setStrokeId(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v20 .. v20}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArraytoLong([B)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mCreationTime:J

    new-instance v23, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v35 .. v35}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v40

    move/from16 v0, v40

    int-to-float v2, v0

    const/high16 v3, 0x42c8

    div-float v37, v2, v3

    move-object/from16 v0, v23

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    new-instance v33, Landroid/graphics/RectF;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v19

    move/from16 v0, v19

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v38

    move/from16 v0, v38

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v34

    move/from16 v0, v34

    int-to-float v2, v0

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v10

    int-to-float v2, v10

    move-object/from16 v0, v33

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v33

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v18 .. v18}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v12

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 6

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    :cond_0
    return-void
.end method

.method public getTotalBytes()I
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0x2a

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v0, v1, 0x2a

    :cond_0
    return v0
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->endRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    :cond_1
    return-void
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    move-object v1, p1

    move-object v2, p0

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/htc/painting/engine/render/IRenderEngine;->render(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/Stroke;IILandroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method protected onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mEngine:Lcom/htc/painting/engine/render/IRenderEngine;

    invoke-interface {v0, p0}, Lcom/htc/painting/engine/render/IRenderEngine;->startRender(Lcom/htc/painting/engine/stroke/Stroke;)V

    :cond_0
    return-void
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    sget-byte v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->VERSION:B

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->isEffective()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getActionPressure()F

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getDistance()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/MotionPoint;->getTimeOffset()J

    move-result-wide v19

    sub-int v23, v21, v17

    const/16 v24, 0x7fff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_3

    const/16 v4, 0x7fff

    :goto_3
    sub-int v23, v22, v18

    const/16 v24, 0x7fff

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v7, 0x7fff

    :goto_4
    sub-float v23, v3, v14

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    const v24, 0x46fffe00

    cmpl-float v23, v23, v24

    if-lez v23, :cond_5

    const/16 v5, 0x7fff

    :goto_5
    sub-long v23, v19, v15

    const-wide/32 v25, 0x7fffffff

    cmp-long v23, v23, v25

    if-lez v23, :cond_6

    const v6, 0x7fffffff

    :goto_6
    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x0

    shr-int/lit8 v25, v4, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x1

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x2

    shr-int/lit8 v25, v7, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x3

    int-to-byte v0, v7

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x4

    const/high16 v25, 0x437f

    mul-float v25, v25, v9

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x5

    const/high16 v25, 0x437f

    mul-float v25, v25, v9

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x6

    shr-int/lit8 v25, v5, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x7

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x8

    shr-int/lit8 v25, v6, 0x18

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0x9

    shr-int/lit8 v25, v6, 0x10

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0xa

    shr-int/lit8 v25, v6, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    const/16 v24, 0xb

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move/from16 v17, v21

    move/from16 v18, v22

    int-to-float v0, v5

    move/from16 v23, v0

    const/high16 v24, 0x42c8

    div-float v23, v23, v24

    add-float v14, v14, v23

    move-wide/from16 v15, v19

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sPointBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_2
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_3
    sub-int v23, v21, v17

    move/from16 v0, v23

    int-to-short v4, v0

    goto/16 :goto_3

    :cond_4
    sub-int v23, v22, v18

    move/from16 v0, v23

    int-to-short v7, v0

    goto/16 :goto_4

    :cond_5
    sub-float v23, v3, v14

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v5, v0

    goto/16 :goto_5

    :cond_6
    sub-long v23, v19, v15

    move-wide/from16 v0, v23

    long-to-int v6, v0

    goto/16 :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/HtcPenStroke;->mPenName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v11

    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getId()I

    move-result v23

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/HtcPenStroke;->getCreationTime()J

    move-result-wide v23

    sget-object v25, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    invoke-static/range {v23 .. v25}, Lcom/htc/painting/engine/HtcPaintingUtil;->longToByteArray(J[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sLongBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v23

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sShortBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    sget-object v24, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    invoke-static/range {v23 .. v24}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v2

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I[B)V

    sget-object v23, Lcom/htc/painting/engine/stroke/HtcPenStroke;->sIntBuffer:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v23, 0x1

    goto/16 :goto_0
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
