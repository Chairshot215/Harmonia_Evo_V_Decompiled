.class public Lcom/android/camera/widget/PanoramaIndicatorView;
.super Landroid/view/View;
.source "PanoramaIndicatorView.java"


# static fields
.field private static final DATA_UPDATE_INTERVAL:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final DEVICE_ORIENTATION_LANDSCAPE:I = 0x0

.field private static final FRAME_OFFSET_COEFF_LOWER:D = 1.23

.field private static final FRAME_OFFSET_COEFF_UPPER:D = 0.8

.field private static final MSG_UPDATE_FRAME_OFFSET:I = 0x2

.field private static final MSG_UPDATE_ORIENTATION:I = 0x1

.field public static final UI_UPDATE_TYPE_NORMAL:I = 0x0

.field public static final UI_UPDATE_TYPE_SMOOTH:I = 0x1


# instance fields
.field private m_CurrentDeltaX:F

.field private m_CurrentOrientation:D

.field private m_DeltaX:F

.field private m_DeviceOrientation:I

.field private final m_FrameIndicatorAnimationSpeed:F

.field private m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

.field private final m_FrameIndicatorOffsetX:I

.field private final m_FrameIndicatorOffsetY:I

.field private m_FrameIndicatorUpdateType:I

.field private final m_Handler:Landroid/os/Handler;

.field private final m_HorizontalLineEndPoints:[Landroid/graphics/Point;

.field private final m_HorizontalLineOffsetX:I

.field private final m_HorizontalLineOffsetY:I

.field private final m_HorizontalLinePen:Landroid/graphics/Paint;

.field private m_IsFrameIndicatorActive:Z

.field private m_LastDeviceOrientationUpdateTime:J

.field private m_PanoramaDirection:I

.field private m_ShowFrameIndicator:Z

.field private m_ShowNextFrameIndicator:Z

.field private m_SpinnerRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v0

    sput v0, Lcom/android/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    new-array v1, v7, [Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    iput v6, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    iput-boolean v4, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorAnimationSpeed:F

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetY:I

    const v1, 0x7f0b007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/camera/widget/PanoramaIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PanoramaIndicatorView$1;-><init>(Lcom/android/camera/widget/PanoramaIndicatorView;)V

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    const v2, 0x7f0b007b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    const/high16 v4, 0x3f80

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    return-void
.end method

.method private invalidateView()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v7

    if-lez v8, :cond_0

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v11, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v11, v7, v3

    div-int/lit8 v6, v11, 0x2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v11, 0x0

    add-int v12, v6, v3

    invoke-direct {v0, v11, v6, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x3

    :goto_2
    if-ltz v2, :cond_7

    iget-object v11, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    aget-object v5, v11, v2

    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    if-ge v9, v11, :cond_5

    iput v9, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_3
    iget v11, v1, Landroid/graphics/Rect;->top:I

    if-ge v10, v11, :cond_6

    iput v10, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    :cond_5
    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-le v9, v11, :cond_2

    iput v9, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_6
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_3

    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_7
    iget-object v11, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    float-to-int v4, v11

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v4

    iput v11, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v4

    iput v11, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v4

    iput v11, v1, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v4

    iput v11, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateFrameOffset()V
    .locals 7

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iget v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    sub-float/2addr v2, v3

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iput v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    iget v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorAnimationSpeed:F

    float-to-double v3, v3

    mul-double/2addr v3, v0

    double-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateHorizontalLineEndPoints()V
    .locals 31

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v23

    sget v25, Lcom/android/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    const-wide v27, 0x4066800000000000L

    add-double v25, v25, v27

    const-wide v27, 0x4066800000000000L

    rem-double v17, v25, v27

    const-wide v25, 0x4066800000000000L

    div-double v25, v17, v25

    const-wide v27, 0x400921fb54442d18L

    mul-double v13, v25, v27

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide v25, 0x4056800000000000L

    cmpl-double v25, v17, v25

    if-eqz v25, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    :goto_0
    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v15

    const-wide v25, 0x4056800000000000L

    sub-double v25, v17, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    const-wide v27, 0x3fb999999999999aL

    cmpl-double v25, v25, v27

    if-lez v25, :cond_3

    cmpg-double v25, v13, v15

    if-gtz v25, :cond_1

    const/16 v19, 0x0

    div-int/lit8 v25, v23, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-int/lit8 v27, v24, 0x2

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v11

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v5, v24

    sub-int v7, v23, v21

    :goto_1
    div-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v3

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v25, v23, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v9

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v3

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v6, v0

    div-int/lit8 v25, v23, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v9

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v8, v0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    move/from16 v25, v0

    add-int v19, v19, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    move/from16 v25, v0

    add-int v21, v21, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    move/from16 v25, v0

    add-int v20, v20, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    move/from16 v25, v0

    add-int v22, v22, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    move/from16 v25, v0

    add-int v5, v5, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    move/from16 v25, v0

    add-int v7, v7, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    move/from16 v25, v0

    add-int v6, v6, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    move/from16 v25, v0

    add-int v8, v8, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_0
    const-wide/high16 v11, 0x7ff0

    goto/16 :goto_0

    :cond_1
    const-wide v25, 0x400921fb54442d18L

    sub-double v25, v25, v15

    cmpg-double v25, v13, v25

    if-gtz v25, :cond_2

    div-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4000

    mul-double v29, v29, v11

    div-double v27, v27, v29

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v19, v0

    const/16 v21, 0x0

    sub-int v5, v24, v19

    move/from16 v7, v23

    goto/16 :goto_1

    :cond_2
    move/from16 v19, v24

    div-int/lit8 v25, v23, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-int/lit8 v27, v24, 0x2

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v11

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v21, v0

    const/4 v5, 0x0

    sub-int v7, v23, v21

    goto/16 :goto_1

    :cond_3
    div-int/lit8 v19, v24, 0x2

    const/16 v21, 0x0

    move/from16 v20, v19

    div-int/lit8 v25, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v26, v0

    sub-int v22, v25, v26

    move/from16 v5, v19

    move/from16 v7, v23

    move v6, v5

    div-int/lit8 v25, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    move/from16 v26, v0

    add-int v8, v25, v26

    goto/16 :goto_2
.end method

.method private updateOrientation()V
    .locals 11

    const/4 v10, 0x1

    const-wide v8, 0x4076800000000000L

    const-wide v6, 0x3fd3333333333333L

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    sub-double v0, v2, v4

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    sub-double/2addr v0, v8

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    iget v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    :goto_1
    return-void

    :cond_1
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    add-double/2addr v0, v8

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    iget-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    mul-double v4, v0, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v10, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3ff3ae147ae147aeL

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    div-double v7, v1, v3

    :goto_0
    const-wide/high16 v1, 0x3ff0

    sub-double/2addr v1, v7

    div-int/lit8 v3, v13, 0x2

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    add-int v14, v1, v2

    div-int/lit8 v1, v12, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetY:I

    add-int v15, v1, v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

    :goto_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v1, v11, 0x2

    sub-int v1, v14, v1

    int-to-float v1, v1

    div-int/lit8 v2, v10, 0x2

    sub-int v2, v15, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

    :goto_2
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const-wide/high16 v1, 0x4000

    sub-double/2addr v1, v7

    div-int/lit8 v3, v13, 0x2

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v14, v1

    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    add-int/2addr v14, v1

    div-int/lit8 v1, v11, 0x2

    sub-int v1, v14, v1

    int-to-float v1, v1

    div-int/lit8 v2, v10, 0x2

    sub-int v2, v15, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const-wide/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    const-wide v3, 0x3fe999999999999aL

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    add-double v7, v1, v3

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v1, v1

    const-wide/high16 v3, -0x4020

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_3

    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    neg-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3ff3ae147ae147aeL

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    neg-double v7, v1

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    neg-float v3, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    const-wide v3, 0x3fe999999999999aL

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    neg-double v1, v1

    const-wide/high16 v3, 0x3fe0

    sub-double v7, v1, v3

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_6
    neg-double v1, v7

    div-int/lit8 v3, v13, 0x2

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v14, v1

    goto/16 :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    return-void
.end method

.method public final setDeviceOrientation(I)V
    .locals 8

    const/4 v7, 0x1

    iget-wide v1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    rem-int/lit8 v0, p1, 0x5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v7, :cond_1

    iget-wide v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    iget-object v3, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    goto :goto_0
.end method

.method public final setFrameIndicatorActivity(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    :cond_0
    return-void
.end method

.method public setFrameIndicatorUpdateType(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    :cond_0
    return-void
.end method

.method public final setFrameIndicatorVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setFrameOffset(FF)V
    .locals 2

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    goto :goto_0
.end method

.method public setNextFrameIndicatorVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    return-void
.end method

.method public final setPanoramaDirection(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    iget-boolean v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PanoramaIndicatorView;->invalidateView()V

    :cond_0
    return-void
.end method
