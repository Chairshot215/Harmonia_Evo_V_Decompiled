.class public Lcom/htc/android/htcime/ui/PatternStrokeView;
.super Landroid/view/View;
.source "PatternStrokeView.java"


# static fields
.field private static final DUMP_LOG:Z = false

.field private static final LOG_CLASS:Ljava/lang/String; = "[PatternStrokeView] "

.field private static final LOG_TITLE:Ljava/lang/String; = "PatternLOG"

.field private static final MSG_DELAY_MOTION_UP:I = 0x1

.field private static final UNKNOWN_POS:I = -0x64


# instance fields
.field private final STROKE_TOLERANCE:F

.field private mCurrentGesture:Landroid/gesture/Gesture;

.field private mHandler:Landroid/os/Handler;

.field private mResHeight:I

.field private mResWidth:I

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private m_InvalidateExtraBorder:I

.field private final m_StrokePaintPath:Landroid/graphics/Path;

.field private m_arrayStrokePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_bCurDown:Z

.field private m_context:Landroid/content/Context;

.field private m_fCurPressure:F

.field private m_fCurSize:F

.field private m_fPreX:F

.field private m_fPreY:F

.field private m_fStrokeCurveEndX:F

.field private m_fStrokeCurveEndY:F

.field private m_nCurWidth:I

.field private m_nCurX:I

.field private m_nCurY:I

.field private m_nPenColor:I

.field private m_nPenWidth:I

.field private m_nPreX:I

.field private m_nPreY:I

.field private m_paintStroke:Landroid/graphics/Paint;

.field private m_randomGenerator:Ljava/util/Random;

.field private final m_rcInvalidPaint:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/PatternStrokeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/16 v2, -0x64

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mResHeight:I

    .line 90
    const/16 v0, 0x140

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mResWidth:I

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    .line 95
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->STROKE_TOLERANCE:F

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_InvalidateExtraBorder:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Lcom/htc/android/htcime/ui/PatternStrokeView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/PatternStrokeView$1;-><init>(Lcom/htc/android/htcime/ui/PatternStrokeView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_context:Landroid/content/Context;

    .line 128
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenColor:I

    .line 129
    iput v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenWidth:I

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    iput v2, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    .line 136
    iput v2, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    .line 137
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_randomGenerator:Ljava/util/Random;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    .line 140
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->initVariable()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/PatternStrokeView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/PatternStrokeView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method private connectPoints(FFFF)V
    .locals 21
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    .line 344
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v20, rcInvalidate:Landroid/graphics/Rect;
    const/16 v18, 0x0

    .local v18, nX:I
    const/16 v19, 0x0

    .local v19, nY:I
    const/16 v17, 0x0

    .local v17, nW:I
    const/16 v16, 0x0

    .line 347
    .local v16, nH:I
    move/from16 v0, p1

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    .line 348
    move/from16 v0, p2

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    .line 349
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurPressure:F

    .line 350
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurSize:F

    .line 351
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    .line 353
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 354
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 358
    .local v14, dx:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 360
    .local v15, dy:F
    const/high16 v4, 0x4040

    cmpl-float v4, v14, v4

    if-gez v4, :cond_1

    const/high16 v4, 0x4040

    cmpl-float v4, v15, v4

    if-ltz v4, :cond_5

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenColor:I

    if-nez v4, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 365
    .local v8, nPreColor:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->generateRandomColor()I

    move-result v9

    .line 366
    .local v9, nCurColor:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    int-to-float v7, v7

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 368
    .local v3, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 376
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    if-le v4, v5, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v18, v4, -0x2

    .line 378
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v17, v4, 0x4

    .line 384
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    if-le v4, v5, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v19, v4, -0x2

    .line 386
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v16, v4, 0x4

    .line 392
    :goto_1
    add-int v4, v18, v17

    add-int v5, v19, v16

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 421
    .end local v3           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #nPreColor:I
    .end local v9           #nCurColor:I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->invalidate(Landroid/graphics/Rect;)V

    .line 427
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    .line 428
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    .line 429
    return-void

    .line 380
    .restart local v3       #shader:Landroid/graphics/LinearGradient;
    .restart local v8       #nPreColor:I
    .restart local v9       #nCurColor:I
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v18, v4, -0x2

    .line 381
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v17, v4, 0x4

    goto :goto_0

    .line 388
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v19, v4, -0x2

    .line 389
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v16, v4, 0x4

    goto :goto_1

    .line 396
    .end local v3           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #nPreColor:I
    .end local v9           #nCurColor:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 399
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_InvalidateExtraBorder:I

    .line 400
    .local v11, border:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndX:F

    float-to-int v4, v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndY:F

    float-to-int v5, v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndX:F

    float-to-int v6, v6

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndY:F

    float-to-int v7, v7

    add-int/2addr v7, v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 403
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    add-float v4, v4, p1

    const/high16 v5, 0x4000

    div-float v12, v4, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndX:F

    .line 404
    .local v12, cX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    add-float v4, v4, p2

    const/high16 v5, 0x4000

    div-float v13, v4, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndY:F

    .line 406
    .local v13, cY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    invoke-virtual {v4, v5, v6, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 409
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    float-to-int v4, v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    float-to-int v5, v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    float-to-int v6, v6

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    float-to-int v7, v7

    add-int/2addr v7, v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 413
    float-to-int v4, v12

    sub-int/2addr v4, v11

    float-to-int v5, v13

    sub-int/2addr v5, v11

    float-to-int v6, v12

    add-int/2addr v6, v11

    float-to-int v7, v13

    add-int/2addr v7, v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 416
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    .line 417
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    goto/16 :goto_2

    .line 425
    .end local v11           #border:I
    .end local v12           #cX:F
    .end local v13           #cY:F
    :cond_5
    invoke-direct/range {p0 .. p4}, Lcom/htc/android/htcime/ui/PatternStrokeView;->drawPoint(FFFF)V

    goto/16 :goto_3
.end method

.method private drawPoint(FFFF)V
    .locals 4
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    const/4 v3, 0x1

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 314
    .local v0, rcInvalidate:Landroid/graphics/Rect;
    float-to-int v1, p1

    iput v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurX:I

    .line 315
    float-to-int v1, p2

    iput v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurY:I

    .line 316
    iput p3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurPressure:F

    .line 317
    iput p4, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurSize:F

    .line 318
    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fCurSize:F

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    .line 320
    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    if-ge v1, v3, :cond_0

    .line 321
    iput v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nCurWidth:I

    .line 332
    :cond_0
    return-void
.end method

.method private generateRandomColor()I
    .locals 4

    .prologue
    .line 437
    const/high16 v1, -0x100

    .line 438
    .local v1, nColor:I
    const/4 v0, 0x0

    .line 440
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_randomGenerator:Ljava/util/Random;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return v1
.end method

.method private initVariable()V
    .locals 5

    .prologue
    .line 145
    iget-object v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 148
    .local v2, winMgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 149
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mResWidth:I

    .line 150
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mResHeight:I

    .line 151
    return-void
.end method


# virtual methods
.method public addGesStroke(Landroid/gesture/GestureStroke;)V
    .locals 1
    .parameter "gesStroke"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    invoke-virtual {v0, p1}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 484
    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "pt"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->invalidate()V

    .line 187
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 192
    return-void
.end method

.method public getGesture()Landroid/gesture/Gesture;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    return-object v0
.end method

.method public getPointArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 203
    return-void
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/16 v13, -0x64

    const/4 v8, 0x1

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 232
    .local v4, fXPos:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 233
    .local v5, fYPos:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    .line 234
    .local v2, fPressure:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    .line 237
    .local v3, fSize:F
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-ne v7, v8, :cond_0

    .line 238
    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x2

    .line 243
    :cond_0
    if-ne v0, v9, :cond_1

    .line 244
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v9, :cond_7

    :cond_2
    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_bCurDown:Z

    .line 250
    if-nez v0, :cond_4

    .line 251
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v7, :cond_3

    .line 255
    const-string v7, "0"

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v7, v9}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 259
    :cond_3
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 261
    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_InvalidateExtraBorder:I

    .line 262
    .local v1, border:I
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    float-to-int v9, v4

    sub-int/2addr v9, v1

    float-to-int v10, v5

    sub-int/2addr v10, v1

    float-to-int v11, v4

    add-int/2addr v11, v1

    float-to-int v12, v5

    add-int/2addr v12, v1

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 264
    iput v4, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndX:F

    iput v4, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreX:F

    .line 265
    iput v5, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fStrokeCurveEndY:F

    iput v5, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_fPreY:F

    .line 268
    iput v13, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreX:I

    .line 269
    iput v13, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPreY:I

    .line 271
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-nez v7, :cond_4

    .line 272
    new-instance v7, Landroid/gesture/Gesture;

    invoke-direct {v7}, Landroid/gesture/Gesture;-><init>()V

    iput-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    .line 276
    .end local v1           #border:I
    :cond_4
    if-ne v0, v8, :cond_8

    .line 277
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1e

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v7, :cond_5

    .line 281
    const-string v7, "30"

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v7, v9}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 284
    :cond_5
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    if-eqz v7, :cond_6

    .line 285
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mCurrentGesture:Landroid/gesture/Gesture;

    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 287
    :cond_6
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 299
    :goto_1
    return v8

    .line 248
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 292
    :cond_8
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 293
    .local v6, ptNew:Landroid/graphics/PointF;
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v7, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v9, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v9, v4, v5, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/htc/android/htcime/ui/PatternStrokeView;->connectPoints(FFFF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v16

    .line 215
    .local v16, hs:I
    if-lez v16, :cond_0

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 217
    .local v2, now:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 218
    const/4 v6, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 221
    .local v18, move:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    .line 222
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 217
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 226
    .end local v2           #now:J
    .end local v16           #hs:I
    .end local v17           #i:I
    .end local v18           #move:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 492
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->invalidate()V

    .line 493
    return-void
.end method

.method public setPenColor(I)V
    .locals 2
    .parameter "nColor"

    .prologue
    .line 160
    iput p1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenColor:I

    .line 161
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    return-void
.end method

.method public setPenWidth(I)V
    .locals 3
    .parameter "nWidth"

    .prologue
    .line 171
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenWidth:I

    .line 172
    iget-object v0, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView;->m_nPenWidth:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4320

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    return-void
.end method
