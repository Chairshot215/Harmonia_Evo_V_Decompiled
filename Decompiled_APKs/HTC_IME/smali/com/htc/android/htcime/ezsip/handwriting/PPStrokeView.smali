.class public Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;
.super Landroid/view/View;
.source "PPStrokeView.java"


# static fields
.field private static final DUMP_LOG:Z = false

.field public static final HVGA:I = 0x1

.field private static final INTERVAL_CHECK_STROKE_FINISH:I = 0x32

.field private static final INTERVAL_UPDATE_ANIMATION:I = 0x14

.field private static final LOG_CLASS:Ljava/lang/String; = "[PPStrokeView] "

.field private static final LOG_TITLE:Ljava/lang/String; = "PPLOG"

.field private static final MAX_ROTATE_ANGLE_Y:I = 0x168

.field private static final MIN_DIFF_FOR_FIRST_STROKE:I = 0xa

.field private static final MIN_DIFF_FOR_FIRST_STROKE_QVGA:I = 0x6

.field private static final MSG_CHECK_HAND_WRITE_STATE:I = 0x1

.field private static final MSG_DELAY_MOTION_UP:I = 0x3

.field private static final MSG_UPDATE_ANIMATION:I = 0x2

.field public static final QVGA:I = 0x2

.field private static final TOTAL_ANIMATE_FRAMES:I = 0x24

.field private static final UNKNOWN_POS:I = -0x64

.field public static final WVGA:I = 0x3

.field private static sARROW_DRAW_OFFSET_X:I

.field private static sARROW_DRAW_OFFSET_Y:I

.field private static sARROW_DRAW_SMART_DIAL_OFFSET_Y:I

.field private static sARROW_DRAW_SMART_DIAL_UP_OFFSET_Y:I

.field private static sARROW_DRAW_UP_OFFSET_Y:I

.field private static sFULL_SEPARATOR_LINE_HEIGHT:I

.field private static sHALF_SEPARATOR_LINE_HEIGHT:I

.field private static sLAND_HALF_PANEL_HEIGHT:I

.field private static sPORT_HALF_PANEL_HEIGHT:I

.field private static sSIP_BOTTOM_EXTRA_GAP:I

.field private static sSTATUS_BAR_HEIGHT:I


# instance fields
.field private final HTC_IME_PACKAGENAME:Ljava/lang/String;

.field private final STROKE_TOLERANCE:F

.field private mHandler:Landroid/os/Handler;

.field private mLandPanelWidth:I

.field private mResHeight:I

.field private mResWidth:I

.field private m_InvalidateExtraBorder:I

.field private m_OneStrokePath:Landroid/graphics/Path;

.field private m_PanelH:I

.field private m_PanelW:I

.field private m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

.field private final m_StrokePaintPath:Landroid/graphics/Path;

.field private m_bCurDown:Z

.field private m_bEnableAnimation:Z

.field private m_bFinishAnimation:Z

.field private m_bIsSmartDial:Z

.field private m_bIsUpSwitch:Z

.field private m_bNeedToCleanCanvas:Z

.field private m_bmpBack:Landroid/graphics/Bitmap;

.field private m_camera:Landroid/graphics/Camera;

.field private m_canvasBack:Landroid/graphics/Canvas;

.field private m_context:Landroid/content/Context;

.field private m_fCurPressure:F

.field private m_fCurSize:F

.field private m_fPreKeyDownX:F

.field private m_fPreKeyDownY:F

.field private m_fPreX:F

.field private m_fPreY:F

.field private m_fStrokeCurveEndX:F

.field private m_fStrokeCurveEndY:F

.field private m_nAnimateDegree:[I

.field private m_nAnimateScale:[F

.field private m_nAnimateTranslate:[I

.field private m_nCurWidth:I

.field private m_nCurX:I

.field private m_nCurY:I

.field private m_nCurrentAnimationFrame:I

.field private m_nPenColor:I

.field private m_nPenType:I

.field private m_nPenWidth:I

.field private m_nPreX:I

.field private m_nPreY:I

.field private m_nResolution:I

.field private m_paintBack:Landroid/graphics/Paint;

.field private m_paintBound:Landroid/graphics/Paint;

.field private m_paintStroke:Landroid/graphics/Paint;

.field private m_randomGenerator:Ljava/util/Random;

.field private final m_rcInvalidPaint:Landroid/graphics/Rect;

.field private m_rectSIP:Landroid/graphics/Rect;

.field private m_rectSwitchButton:Landroid/graphics/RectF;

.field public m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xda

    const/4 v1, 0x0

    .line 126
    const/16 v0, 0xd

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_X:I

    .line 127
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_Y:I

    .line 128
    const/16 v0, 0x11

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_UP_OFFSET_Y:I

    .line 129
    const/16 v0, 0x1a

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSTATUS_BAR_HEIGHT:I

    .line 130
    const/16 v0, 0x16

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_OFFSET_Y:I

    .line 131
    const/16 v0, 0x8

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_UP_OFFSET_Y:I

    .line 132
    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sPORT_HALF_PANEL_HEIGHT:I

    .line 133
    sput v2, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sLAND_HALF_PANEL_HEIGHT:I

    .line 134
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 135
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sHALF_SEPARATOR_LINE_HEIGHT:I

    .line 136
    sput v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sFULL_SEPARATOR_LINE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, -0x64

    const/4 v2, 0x0

    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    .line 121
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    .line 122
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsUpSwitch:Z

    .line 123
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsSmartDial:Z

    .line 138
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    .line 140
    const/16 v0, 0x140

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    .line 143
    const/16 v0, 0x140

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    .line 146
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    .line 148
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->STROKE_TOLERANCE:F

    .line 155
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_InvalidateExtraBorder:I

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    .line 160
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelW:I

    .line 161
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelH:I

    .line 163
    const-string v0, "com.htc.android.htcime"

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->HTC_IME_PACKAGENAME:Ljava/lang/String;

    .line 1264
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;-><init>(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    .line 187
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    .line 188
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    .line 189
    const/high16 v0, -0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    .line 190
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    .line 191
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    .line 193
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 195
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBound:Landroid/graphics/Paint;

    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBound:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBound:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBound:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBound:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    .line 207
    iput v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 208
    iput v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    .line 209
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bNeedToCleanCanvas:Z

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    .line 211
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    .line 212
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bEnableAnimation:Z

    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateTranslate:[I

    .line 215
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    .line 216
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    .line 217
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_randomGenerator:Ljava/util/Random;

    .line 218
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    .line 219
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    .line 220
    iput v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    .line 222
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->initVariable()V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->animateClear()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private animateClear()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1212
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1213
    .local v1, curW:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1215
    .local v0, curH:I
    :goto_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    const/16 v4, 0x24

    if-ge v3, v4, :cond_2

    .line 1216
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1217
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1218
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    .line 1228
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    mul-int/lit16 v4, v4, 0x168

    div-int/lit8 v4, v4, 0x24

    aput v4, v3, v8

    .line 1229
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    int-to-float v5, v5

    const/high16 v6, 0x4210

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1230
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    aget v2, v4, v2

    aput v2, v3, v7

    .line 1232
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate()V

    .line 1233
    iget v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    .line 1234
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1241
    :goto_2
    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bNeedToCleanCanvas:Z

    .line 1242
    return-void

    .end local v0           #curH:I
    .end local v1           #curW:I
    :cond_0
    move v1, v2

    .line 1212
    goto :goto_0

    .restart local v1       #curW:I
    :cond_1
    move v0, v2

    .line 1213
    goto :goto_1

    .line 1236
    .restart local v0       #curH:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    iput-boolean v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    .line 1238
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate()V

    goto :goto_2
.end method

.method private connectPoints(FFFF)V
    .locals 28
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    .line 869
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 870
    .local v26, rcInvalidate:Landroid/graphics/Rect;
    const/16 v24, 0x0

    .local v24, nX:I
    const/16 v25, 0x0

    .local v25, nY:I
    const/16 v23, 0x0

    .local v23, nW:I
    const/16 v22, 0x0

    .line 872
    .local v22, nH:I
    move/from16 v0, p1

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 873
    move/from16 v0, p2

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    .line 874
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurPressure:F

    .line 875
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    .line 876
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 878
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 879
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 882
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v27

    .line 883
    .local v27, sipID:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    move/from16 v0, v27

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    :cond_1
    const/16 v16, 0x1

    .line 887
    .local v16, bTranparent:Z
    :goto_0
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x5

    if-gt v4, v5, :cond_3

    .line 889
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 890
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    .line 973
    :goto_1
    return-void

    .line 883
    .end local v16           #bTranparent:Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 896
    .restart local v16       #bTranparent:Z
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 897
    .local v20, dx:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    sub-float v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 899
    .local v21, dy:F
    const/high16 v4, 0x4040

    cmpl-float v4, v20, v4

    if-gez v4, :cond_4

    const/high16 v4, 0x4040

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_9

    .line 902
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    if-nez v4, :cond_8

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 904
    .local v8, nPreColor:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->generateRandomColor()I

    move-result v9

    .line 905
    .local v9, nCurColor:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v7, v7

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 907
    .local v3, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 912
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    add-float v4, v4, p1

    const/high16 v5, 0x4000

    div-float v18, v4, v5

    .line 913
    .local v18, cX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    add-float v4, v4, p2

    const/high16 v5, 0x4000

    div-float v19, v4, v5

    .line 914
    .local v19, cY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 916
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v4, :cond_5

    .line 917
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 919
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    if-le v4, v5, :cond_6

    .line 920
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v24, v4, -0x2

    .line 921
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v23, v4, 0x4

    .line 927
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    if-le v4, v5, :cond_7

    .line 928
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v25, v4, -0x2

    .line 929
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v22, v4, 0x4

    .line 935
    :goto_3
    add-int v4, v24, v23

    add-int v5, v25, v22

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 965
    .end local v3           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #nPreColor:I
    .end local v9           #nCurColor:I
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate(Landroid/graphics/Rect;)V

    .line 971
    .end local v18           #cX:F
    .end local v19           #cY:F
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 972
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    goto/16 :goto_1

    .line 923
    .restart local v3       #shader:Landroid/graphics/LinearGradient;
    .restart local v8       #nPreColor:I
    .restart local v9       #nCurColor:I
    .restart local v18       #cX:F
    .restart local v19       #cY:F
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v24, v4, -0x2

    .line 924
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v23, v4, 0x4

    goto :goto_2

    .line 931
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v25, v4, -0x2

    .line 932
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v22, v4, 0x4

    goto :goto_3

    .line 939
    .end local v3           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #nPreColor:I
    .end local v9           #nCurColor:I
    .end local v18           #cX:F
    .end local v19           #cY:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_InvalidateExtraBorder:I

    move/from16 v17, v0

    .line 943
    .local v17, border:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndX:F

    float-to-int v4, v4

    sub-int v4, v4, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndY:F

    float-to-int v5, v5

    sub-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndX:F

    float-to-int v6, v6

    add-int v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndY:F

    float-to-int v7, v7

    add-int v7, v7, v17

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 946
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    add-float v4, v4, p1

    const/high16 v5, 0x4000

    div-float v18, v4, v5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndX:F

    .line 947
    .restart local v18       #cX:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    add-float v4, v4, p2

    const/high16 v5, 0x4000

    div-float v19, v4, v5

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndY:F

    .line 949
    .restart local v19       #cY:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 953
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    float-to-int v4, v4

    sub-int v4, v4, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    float-to-int v5, v5

    sub-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    float-to-int v6, v6

    add-int v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    float-to-int v7, v7

    add-int v7, v7, v17

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 957
    move/from16 v0, v18

    float-to-int v4, v0

    sub-int v4, v4, v17

    move/from16 v0, v19

    float-to-int v5, v0

    sub-int v5, v5, v17

    move/from16 v0, v18

    float-to-int v6, v0

    add-int v6, v6, v17

    move/from16 v0, v19

    float-to-int v7, v0

    add-int v7, v7, v17

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    .line 960
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    .line 961
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    goto/16 :goto_4

    .line 969
    .end local v17           #border:I
    .end local v18           #cX:F
    .end local v19           #cY:F
    :cond_9
    invoke-direct/range {p0 .. p4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawPoint(FFFF)V

    goto/16 :goto_5
.end method

.method private drawAnimation(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 587
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 588
    .local v2, curW:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 589
    .local v1, curH:I
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 595
    .local v0, SrcRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 596
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 597
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    aget v5, v5, v8

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 598
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateTranslate:[I

    aget v5, v5, v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateTranslate:[I

    aget v6, v6, v8

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateTranslate:[I

    aget v7, v7, v9

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Camera;->translate(FFF)V

    .line 599
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    aget v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 600
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 601
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    aget v4, v4, v9

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 602
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    invoke-virtual {v3, p1}, Landroid/graphics/Camera;->applyToCanvas(Landroid/graphics/Canvas;)V

    .line 603
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_camera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 604
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 605
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 607
    return-void

    .end local v0           #SrcRect:Landroid/graphics/Rect;
    .end local v1           #curH:I
    .end local v2           #curW:I
    :cond_0
    move v2, v3

    .line 587
    goto :goto_0

    .restart local v2       #curW:I
    :cond_1
    move v1, v3

    .line 588
    goto :goto_1
.end method

.method private drawBrush(FFFF)V
    .locals 22
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    .line 985
    const/16 v16, 0x0

    .line 986
    .local v16, mask:Landroid/graphics/BlurMaskFilter;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 987
    .local v21, rcInvalidate:Landroid/graphics/Rect;
    const/16 v19, 0x0

    .local v19, nX:I
    const/16 v20, 0x0

    .local v20, nY:I
    const/16 v18, 0x0

    .local v18, nW:I
    const/16 v17, 0x0

    .line 989
    .local v17, nH:I
    move/from16 v0, p1

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 990
    move/from16 v0, p2

    float-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    .line 991
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurPressure:F

    .line 992
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    .line 993
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 995
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 996
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 998
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_1

    .line 999
    invoke-direct/range {p0 .. p4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawPoint(FFFF)V

    .line 1032
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 1033
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    .line 1034
    return-void

    .line 1001
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    if-nez v4, :cond_2

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    .line 1003
    .local v8, nPreColor:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->generateRandomColor()I

    move-result v9

    .line 1004
    .local v9, nCurColor:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1005
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v7, v7

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1006
    .local v3, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1009
    .end local v3           #shader:Landroid/graphics/LinearGradient;
    .end local v8           #nPreColor:I
    .end local v9           #nCurColor:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v4, :cond_3

    .line 1010
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v14, v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1012
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    if-le v4, v5, :cond_4

    .line 1013
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v19, v4, -0x2

    .line 1014
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v18, v4, 0x4

    .line 1020
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    if-le v4, v5, :cond_5

    .line 1021
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v20, v4, -0x2

    .line 1022
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v17, v4, 0x4

    .line 1028
    :goto_2
    add-int v4, v19, v18

    add-int v5, v20, v17

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1029
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1016
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v19, v4, -0x2

    .line 1017
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v18, v4, 0x4

    goto :goto_1

    .line 1024
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v20, v4, -0x2

    .line 1025
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v17, v4, 0x4

    goto :goto_2
.end method

.method private drawMarker(FFFF)V
    .locals 20
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    .line 1046
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 1047
    .local v19, rcInvalidate:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, nX:I
    const/4 v15, 0x0

    .local v15, nY:I
    const/4 v11, 0x0

    .local v11, nW:I
    const/4 v10, 0x0

    .line 1048
    .local v10, nH:I
    const/4 v13, 0x0

    .local v13, nX1:I
    const/16 v16, 0x0

    .local v16, nY1:I
    const/4 v14, 0x0

    .local v14, nX2:I
    const/16 v17, 0x0

    .line 1050
    .local v17, nY2:I
    move/from16 v0, p1

    float-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 1051
    move/from16 v0, p2

    float-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    .line 1052
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurPressure:F

    .line 1053
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    .line 1054
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 1055
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 1057
    .local v18, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1058
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 1060
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    const/16 v4, -0x64

    if-ne v3, v4, :cond_1

    .line 1061
    invoke-direct/range {p0 .. p4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawPoint(FFFF)V

    .line 1103
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 1104
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    .line 1105
    return-void

    .line 1063
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    if-nez v3, :cond_2

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 1065
    .local v7, nPreColor:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->generateRandomColor()I

    move-result v8

    .line 1066
    .local v8, nCurColor:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1067
    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v6, v6

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1068
    .local v2, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1071
    .end local v2           #shader:Landroid/graphics/LinearGradient;
    .end local v7           #nPreColor:I
    .end local v8           #nCurColor:I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    if-ge v3, v4, :cond_4

    .line 1072
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move/from16 v16, v0

    .line 1074
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move/from16 v17, v0

    .line 1083
    :goto_1
    sub-int v3, v14, v13

    sub-int v4, v17, v16

    if-lt v3, v4, :cond_5

    .line 1084
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v16, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1085
    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1086
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v17

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1087
    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v16

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1088
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v16, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1097
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v3, :cond_3

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1100
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate()V

    goto/16 :goto_0

    .line 1077
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    move/from16 v17, v0

    .line 1079
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 1080
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    move/from16 v16, v0

    goto/16 :goto_1

    .line 1090
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v16, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1091
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1092
    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v17

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1093
    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, v16

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1094
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v16, v4

    int-to-float v4, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_2
.end method

.method private drawPoint(FFFF)V
    .locals 8
    .parameter "fX"
    .parameter "fY"
    .parameter "fPressure"
    .parameter "fSize"

    .prologue
    const/4 v5, 0x1

    .line 830
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 832
    .local v2, rcInvalidate:Landroid/graphics/Rect;
    float-to-int v3, p1

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    .line 833
    float-to-int v3, p2

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    .line 834
    iput p3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurPressure:F

    .line 835
    iput p4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    .line 836
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurSize:F

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 838
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    if-ge v3, v5, :cond_0

    .line 839
    iput v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    .line 841
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bCurDown:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 842
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fCurPressure:F

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 843
    .local v1, pressureLevel:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 846
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    if-nez v3, :cond_1

    .line 847
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->generateRandomColor()I

    move-result v0

    .line 848
    .local v0, nCurColor:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 852
    .end local v0           #nCurColor:I
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v3, :cond_2

    .line 853
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 854
    :cond_2
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    iget v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I

    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurWidth:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 855
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate(Landroid/graphics/Rect;)V

    .line 857
    .end local v1           #pressureLevel:I
    :cond_3
    return-void
.end method

.method private generateRandomColor()I
    .locals 4

    .prologue
    .line 1250
    const/high16 v1, -0x100

    .line 1251
    .local v1, nColor:I
    const/4 v0, 0x0

    .line 1253
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_randomGenerator:Ljava/util/Random;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1257
    :cond_0
    return v1
.end method

.method private initVariable()V
    .locals 5

    .prologue
    .line 227
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 232
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0a0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_X:I

    .line 233
    const v3, 0x7f0a0028

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_Y:I

    .line 234
    const v3, 0x7f0a0029

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_UP_OFFSET_Y:I

    .line 235
    const v3, 0x7f0a0011

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSTATUS_BAR_HEIGHT:I

    .line 236
    const v3, 0x7f0a002a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_OFFSET_Y:I

    .line 237
    const v3, 0x7f0a002b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_UP_OFFSET_Y:I

    .line 239
    const v3, 0x7f0a002c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sPORT_HALF_PANEL_HEIGHT:I

    .line 240
    const v3, 0x7f0a0025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sLAND_HALF_PANEL_HEIGHT:I

    .line 241
    const v3, 0x7f0a0022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSIP_BOTTOM_EXTRA_GAP:I

    .line 243
    const v3, 0x7f0a0024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sHALF_SEPARATOR_LINE_HEIGHT:I

    .line 244
    const v3, 0x7f0a0023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sFULL_SEPARATOR_LINE_HEIGHT:I

    .line 246
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 247
    .local v2, winMgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 248
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    .line 249
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    .line 250
    iget v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    .line 251
    return-void
.end method

.method private isTouchingOnePos(II)Landroid/graphics/Point;
    .locals 12
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 1118
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v4

    .line 1119
    .local v4, nLatestCheckIndex:I
    const/4 v2, 0x0

    .line 1120
    .local v2, i:I
    const/4 v8, 0x0

    .local v8, sumX:I
    const/4 v9, 0x0

    .line 1121
    .local v9, sumY:I
    const/4 v3, 0x0

    .line 1122
    .local v3, nCount:I
    iget v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v5, 0x6

    .line 1123
    .local v5, nMinDiffForFirstStroke:I
    :goto_0
    const/4 v0, 0x1

    .line 1124
    .local v0, bComplete:Z
    const/4 v1, 0x0

    .line 1127
    .local v1, bRet:Z
    const/4 v10, 0x2

    if-lt v4, v10, :cond_5

    .line 1128
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    .line 1129
    .local v6, pt:Landroid/graphics/PointF;
    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, -0x4000

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    .line 1130
    add-int/lit8 v4, v4, -0x1

    .line 1133
    :cond_0
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    .line 1134
    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1

    .line 1135
    add-int/lit8 v4, v4, -0x1

    .line 1143
    .end local v6           #pt:Landroid/graphics/PointF;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    .line 1144
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v10, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v6

    .line 1146
    .restart local v6       #pt:Landroid/graphics/PointF;
    iget v10, v6, Landroid/graphics/PointF;->x:F

    const/high16 v11, -0x4080

    cmpl-float v10, v10, v11

    if-nez v10, :cond_6

    .line 1147
    const/4 v0, 0x0

    .line 1157
    .end local v6           #pt:Landroid/graphics/PointF;
    :cond_2
    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    .line 1158
    div-int/2addr v8, v3

    .line 1159
    div-int/2addr v9, v3

    .line 1160
    sub-int v10, v8, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v5, :cond_3

    sub-int v10, v9, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v5, :cond_3

    .line 1161
    const/4 v1, 0x1

    .line 1166
    :cond_3
    if-eqz v1, :cond_7

    .line 1167
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 1168
    .local v7, ptRet:Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/PointF;

    int-to-float v10, v8

    int-to-float v11, v9

    invoke-direct {v6, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1170
    .restart local v6       #pt:Landroid/graphics/PointF;
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v10, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 1178
    .end local v6           #pt:Landroid/graphics/PointF;
    :goto_3
    return-object v7

    .line 1122
    .end local v0           #bComplete:Z
    .end local v1           #bRet:Z
    .end local v5           #nMinDiffForFirstStroke:I
    .end local v7           #ptRet:Landroid/graphics/Point;
    :cond_4
    const/16 v5, 0xa

    goto :goto_0

    .line 1138
    .restart local v0       #bComplete:Z
    .restart local v1       #bRet:Z
    .restart local v5       #nMinDiffForFirstStroke:I
    :cond_5
    if-nez v4, :cond_1

    .line 1139
    const/4 v0, 0x0

    goto :goto_1

    .line 1151
    .restart local v6       #pt:Landroid/graphics/PointF;
    :cond_6
    iget v10, v6, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    add-int/2addr v8, v10

    .line 1152
    iget v10, v6, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 1153
    add-int/lit8 v3, v3, 0x1

    .line 1143
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1173
    .end local v6           #pt:Landroid/graphics/PointF;
    :cond_7
    new-instance v7, Landroid/graphics/Point;

    const/16 v10, -0x64

    const/16 v11, -0x64

    invoke-direct {v7, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .restart local v7       #ptRet:Landroid/graphics/Point;
    goto :goto_3
.end method

.method private sendToSIP(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1190
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1191
    .local v2, me:Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1192
    .local v0, fXPos:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1193
    .local v1, fYPos:F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 1194
    float-to-int v3, v0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_1

    float-to-int v3, v0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_1

    float-to-int v3, v1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_1

    float-to-int v3, v1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_1

    .line 1195
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1197
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    if-eqz v3, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1201
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    if-eqz v3, :cond_0

    .line 1202
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method


# virtual methods
.method public SetStrokeShadow(FI)V
    .locals 2
    .parameter "radius"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 1555
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 1559
    :goto_0
    return-void

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method attachedButton(Landroid/graphics/Canvas;Z)V
    .locals 16
    .parameter "canvas"
    .parameter "bTouch"

    .prologue
    .line 1366
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1367
    .local v8, paintBackground:Landroid/graphics/Paint;
    const/4 v6, 0x0

    .local v6, nX:I
    const/4 v7, 0x0

    .local v7, nY:I
    const/4 v5, 0x0

    .local v5, nW:I
    const/4 v3, 0x0

    .line 1368
    .local v3, nH:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v4, 0x7

    .line 1378
    .local v4, nOffset:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1379
    .local v9, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsUpSwitch:Z

    if-eqz v10, :cond_2

    const v10, 0x7f020002

    :goto_1
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1380
    .local v2, bmp:Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1382
    .local v1, adapt:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1383
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1385
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    sub-int/2addr v10, v5

    sget v11, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_X:I

    sub-int v6, v10, v11

    .line 1387
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsUpSwitch:Z

    if-eqz v10, :cond_4

    .line 1388
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsSmartDial:Z

    if-eqz v10, :cond_3

    sget v7, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_OFFSET_Y:I

    .line 1410
    :goto_2
    int-to-float v10, v6

    int-to-float v11, v7

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    sub-int v11, v6, v4

    int-to-float v11, v11

    sub-int v12, v7, v4

    int-to-float v12, v12

    add-int v13, v6, v5

    mul-int/lit8 v14, v4, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v7, v3

    mul-int/lit8 v15, v4, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1412
    return-void

    .line 1368
    .end local v1           #adapt:Landroid/graphics/Bitmap;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #nOffset:I
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    .line 1379
    .restart local v4       #nOffset:I
    .restart local v9       #res:Landroid/content/res/Resources;
    :cond_2
    const/high16 v10, 0x7f02

    goto :goto_1

    .line 1388
    .restart local v1       #adapt:Landroid/graphics/Bitmap;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    :cond_3
    sget v7, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_OFFSET_Y:I

    goto :goto_2

    .line 1390
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsSmartDial:Z

    if-eqz v10, :cond_5

    sget v10, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_SMART_DIAL_UP_OFFSET_Y:I

    sget v11, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSTATUS_BAR_HEIGHT:I

    add-int v7, v10, v11

    :goto_3
    goto :goto_2

    :cond_5
    sget v10, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sARROW_DRAW_UP_OFFSET_Y:I

    sget v11, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSTATUS_BAR_HEIGHT:I

    add-int v7, v10, v11

    goto :goto_3
.end method

.method attachedSeparatorLine(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 1416
    const/4 v4, 0x0

    .local v4, nX:I
    const/4 v5, 0x0

    .line 1417
    .local v5, nY:I
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v8

    .line 1419
    .local v8, sipID:I
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1420
    .local v6, res:Landroid/content/res/Resources;
    const-string v9, "ime_icon_hwr_separator_line_rest"

    const-string v10, "drawable"

    const-string v11, "com.htc.android.htcime"

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1422
    .local v7, resID:I
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1424
    .local v1, Separator:Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    div-int/lit8 v4, v9, 0x2

    .line 1427
    const/16 v5, 0xf

    .line 1429
    const/16 v9, 0x9

    if-ne v9, v8, :cond_2

    sget v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sHALF_SEPARATOR_LINE_HEIGHT:I

    .line 1430
    .local v0, Height:I
    :goto_0
    const/4 v2, 0x3

    .line 1435
    .local v2, Width:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1436
    .local v3, bounds:Landroid/graphics/Rect;
    iget v9, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v9, :cond_0

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v9, :cond_1

    .line 1438
    :cond_0
    invoke-virtual {v1, v12, v12, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1440
    :cond_1
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1441
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1442
    return-void

    .line 1429
    .end local v0           #Height:I
    .end local v2           #Width:I
    .end local v3           #bounds:Landroid/graphics/Rect;
    :cond_2
    sget v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sFULL_SEPARATOR_LINE_HEIGHT:I

    goto :goto_0
.end method

.method public autoSetPenSpeed(I)V
    .locals 1
    .parameter "nMaxSpeed"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->autoSetSpeedLevel(I)V

    .line 391
    :cond_0
    return-void
.end method

.method checkIfTouchSwitchButton(II)Z
    .locals 3
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1570
    .local v0, bRet:Z
    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1572
    const/4 v0, 0x1

    .line 1577
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 409
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 410
    .local v1, curW:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 413
    .local v0, curH:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 414
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 416
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v4, :cond_4

    .line 417
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bEnableAnimation:Z

    if-eqz v4, :cond_5

    .line 418
    iput v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurrentAnimationFrame:I

    .line 419
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v4, 0x3

    if-ge v2, v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateDegree:[I

    aput v3, v4, v2

    .line 421
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateTranslate:[I

    aput v3, v4, v2

    .line 422
    if-ge v2, v6, :cond_0

    .line 423
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nAnimateScale:[F

    const/high16 v5, 0x3f80

    aput v5, v4, v2

    .line 419
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #curH:I
    .end local v1           #curW:I
    .end local v2           #i:I
    :cond_1
    move v1, v3

    .line 409
    goto :goto_0

    .restart local v1       #curW:I
    :cond_2
    move v0, v3

    .line 410
    goto :goto_1

    .line 425
    .restart local v0       #curH:I
    .restart local v2       #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    .end local v2           #i:I
    :cond_4
    :goto_3
    return-void

    .line 427
    :cond_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 428
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintBack:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 429
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bNeedToCleanCanvas:Z

    .line 430
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->invalidate()V

    goto :goto_3
.end method

.method public drawFullHWRbackground(II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1516
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1517
    .local v4, res:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 1518
    .local v1, PanelBG:Landroid/graphics/drawable/Drawable;
    const-string v6, "ime_l_bg_hwr_full_panel_rest"

    const-string v7, "drawable"

    const-string v8, "com.htc.android.htcime"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1520
    const/4 v5, 0x0

    .line 1521
    .local v5, tempBG:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1523
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1525
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1526
    .local v2, bounds:Landroid/graphics/Rect;
    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_1

    .line 1528
    :cond_0
    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1530
    :cond_1
    invoke-virtual {v3, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1531
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1532
    const/4 v3, 0x0

    .line 1534
    const/4 v0, 0x0

    .line 1535
    .local v0, BG:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    if-gt p1, v6, :cond_2

    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResHeight:I

    if-ge p2, v6, :cond_2

    .line 1538
    invoke-static {v5, v9, v9, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1539
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1540
    const/4 v5, 0x0

    .line 1543
    :cond_2
    if-eqz v1, :cond_3

    .line 1544
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1545
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1546
    const/4 v1, 0x0

    .line 1549
    :cond_3
    if-eqz v0, :cond_4

    .end local v0           #BG:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0       #BG:Landroid/graphics/Bitmap;
    :cond_4
    move-object v0, v5

    goto :goto_0
.end method

.method public drawHWRPanel(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "bmp"
    .parameter "sipID"
    .parameter "nLeftPadding"
    .parameter "nTopPadding"

    .prologue
    .line 1447
    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1448
    .local v9, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 1449
    .local v5, PanelHeight:I
    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    .line 1450
    .local v6, PanelWidth:I
    const/4 v2, 0x0

    .line 1452
    .local v2, BGbmp:Landroid/graphics/drawable/Drawable;
    const/16 v11, 0x9

    move/from16 v0, p2

    if-ne v11, v0, :cond_6

    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_LandHalfScreenSupport:Z

    if-eqz v11, :cond_6

    .line 1453
    const-string v11, "sapphire_land_background"

    const-string v12, "drawable"

    const-string v13, "com.htc.android.htcime"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1454
    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sLAND_HALF_PANEL_HEIGHT:I

    .line 1461
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    invoke-direct {v3, v11, v12, v13, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1463
    .local v3, Dimension:Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 1464
    .local v1, BG:Landroid/graphics/Bitmap;
    iget v11, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1466
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1468
    .local v8, canvas:Landroid/graphics/Canvas;
    if-eqz v2, :cond_0

    .line 1469
    iget v11, v3, Landroid/graphics/Rect;->left:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1470
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    :cond_0
    const/16 v11, 0x9

    move/from16 v0, p2

    if-ne v11, v0, :cond_7

    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_LandHalfScreenSupport:Z

    if-eqz v11, :cond_7

    .line 1478
    const-string v11, "ime_l_bg_hwr_half_panel_rest"

    const-string v12, "drawable"

    const-string v13, "com.htc.android.htcime"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1480
    .local v4, PanelDrawable:Landroid/graphics/drawable/Drawable;
    const-string v11, "SV_LAND_PANEL_WIDTH"

    const-string v12, "integer"

    const-string v13, "com.htc.android.htcime"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1481
    .local v10, resID:I
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1483
    if-nez v6, :cond_1

    .line 1484
    iget v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mResWidth:I

    .line 1486
    :cond_1
    iput v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    .line 1491
    .end local v10           #resID:I
    :goto_1
    if-eqz p1, :cond_2

    .line 1492
    move/from16 v0, p3

    int-to-float v11, v0

    move/from16 v0, p4

    int-to-float v12, v0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1494
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1495
    .local v7, bounds:Landroid/graphics/Rect;
    iget v11, v7, Landroid/graphics/Rect;->right:I

    if-ne v6, v11, :cond_3

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v11, :cond_4

    .line 1497
    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSIP_BOTTOM_EXTRA_GAP:I

    sub-int v13, v5, v13

    invoke-virtual {v4, v11, v12, v6, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1499
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1500
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1503
    if-eqz v4, :cond_5

    .line 1504
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1505
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1506
    const/4 v4, 0x0

    .line 1509
    :cond_5
    const/4 v8, 0x0

    .line 1510
    return-object v1

    .line 1456
    .end local v1           #BG:Landroid/graphics/Bitmap;
    .end local v3           #Dimension:Landroid/graphics/Rect;
    .end local v4           #PanelDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    :cond_6
    const-string v11, "sapphire_port_background"

    const-string v12, "drawable"

    const-string v13, "com.htc.android.htcime"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1457
    sget v11, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sPORT_HALF_PANEL_HEIGHT:I

    sget v12, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sSIP_BOTTOM_EXTRA_GAP:I

    add-int v5, v11, v12

    goto/16 :goto_0

    .line 1489
    .restart local v1       #BG:Landroid/graphics/Bitmap;
    .restart local v3       #Dimension:Landroid/graphics/Rect;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    :cond_7
    const-string v11, "ime_p_bg_hwr_half_panel_rest"

    const-string v12, "drawable"

    const-string v13, "com.htc.android.htcime"

    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4       #PanelDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, bWantToDrawStroke:Z
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 515
    .local v2, curW:I
    :goto_0
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 517
    .local v1, curH:I
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 518
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 520
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 521
    iget-boolean v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bNeedToCleanCanvas:Z

    if-eqz v7, :cond_b

    .line 525
    iget-boolean v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bEnableAnimation:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    if-nez v7, :cond_8

    .line 531
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawAnimation(Landroid/graphics/Canvas;)V

    .line 551
    :goto_2
    const/4 v0, 0x0

    .line 552
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bNeedToCleanCanvas:Z

    .line 558
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 559
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 562
    :cond_2
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    if-eqz v7, :cond_3

    .line 563
    invoke-virtual {p0, p1, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->attachedButton(Landroid/graphics/Canvas;Z)V

    .line 567
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v5

    .line 569
    .local v5, sipID:I
    const/4 v6, 0x1

    sget v7, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-ne v6, v7, :cond_5

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v6, :cond_5

    const/16 v6, 0x9

    if-eq v6, v5, :cond_4

    const/4 v6, 0x3

    if-ne v6, v5, :cond_5

    .line 574
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->attachedSeparatorLine(Landroid/graphics/Canvas;)V

    .line 578
    :cond_5
    return-void

    .end local v1           #curH:I
    .end local v2           #curW:I
    .end local v5           #sipID:I
    :cond_6
    move v2, v6

    .line 514
    goto :goto_0

    .restart local v2       #curW:I
    :cond_7
    move v1, v6

    .line 515
    goto :goto_1

    .line 535
    .restart local v1       #curH:I
    :cond_8
    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 537
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-eqz v7, :cond_9

    .line 538
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 541
    :cond_9
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v7, :cond_a

    .line 542
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    :cond_a
    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 545
    .end local v4           #newBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 546
    .local v3, e:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 547
    const-string v7, "PPStrokeView"

    const-string v8, ""

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 554
    .end local v3           #e:Ljava/lang/Throwable;
    :cond_b
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 487
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-nez v1, :cond_0

    .line 489
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 493
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelW:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelH:I

    if-lez v1, :cond_1

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelW:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelH:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    .line 503
    .end local v0           #newBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 504
    return-void
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "event"

    .prologue
    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 635
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 636
    .local v7, fXPos:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 637
    .local v8, fYPos:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    .line 638
    .local v5, fPressure:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v6

    .line 640
    .local v6, fSize:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bEnableAnimation:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 643
    const/16 v20, 0x1

    .line 817
    :goto_0
    return v20

    .line 647
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 648
    if-nez v3, :cond_1

    .line 649
    const/4 v3, 0x2

    .line 650
    const-string v20, "HZLOG"

    const-string v21, "[PPStrokeView][onTouchEvent] auto connect broken line!!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v10

    .line 657
    .local v10, nCount:I
    if-lez v10, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v18

    .line 659
    .local v18, ptPrevious:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v13, 0x40

    .line 660
    .local v13, nDistanceMin:I
    :goto_1
    const/16 v12, 0x640

    .line 661
    .local v12, nDistanceMax:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    sub-float v20, v20, v7

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    sub-float v21, v21, v7

    mul-float v20, v20, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    sub-float v21, v21, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v22, v22, v8

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v11, v0

    .line 663
    .local v11, nDistanceDiff:I
    if-ge v11, v13, :cond_3

    .line 664
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 659
    .end local v11           #nDistanceDiff:I
    .end local v12           #nDistanceMax:I
    .end local v13           #nDistanceMin:I
    :cond_2
    const/16 v13, 0x19

    goto :goto_1

    .line 674
    .end local v10           #nCount:I
    .end local v18           #ptPrevious:Landroid/graphics/PointF;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->isAllFinished()Z

    move-result v20

    if-eqz v20, :cond_4

    float-to-int v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    float-to-int v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    float-to-int v0, v8

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    float-to-int v0, v8

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    .line 675
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sendToSIP(Landroid/view/MotionEvent;)V

    .line 817
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 679
    :cond_4
    const/4 v14, -0x1

    .line 683
    .local v14, nIndex:I
    if-eqz v3, :cond_5

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v3, v0, :cond_10

    :cond_5
    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bCurDown:Z

    .line 685
    if-nez v3, :cond_f

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    sget-boolean v20, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v20, :cond_6

    .line 690
    const-string v20, "0"

    sget v21, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static/range {v20 .. v21}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 693
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v10

    .line 694
    .restart local v10       #nCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v19

    .line 697
    .local v19, sipID:I
    if-lez v10, :cond_c

    sget-boolean v20, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    sget v21, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/16 v20, 0x9

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 702
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreKeyDownX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v7, v20

    if-ltz v20, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreKeyDownX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mLandPanelWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v7, v20

    if-lez v20, :cond_c

    .line 705
    :cond_9
    new-instance v15, Landroid/graphics/PointF;

    const/high16 v20, -0x4000

    const/high16 v21, -0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 706
    .local v15, ptAppend:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->recognize()V

    .line 716
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->clear()V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->stopStroke()V

    .line 729
    .end local v15           #ptAppend:Landroid/graphics/PointF;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v20

    if-nez v20, :cond_e

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    float-to-int v0, v7

    move/from16 v20, v0

    float-to-int v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->checkIfTouchSwitchButton(II)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->clickFeedback(ZZ)V

    .line 734
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 735
    .local v9, me:Landroid/view/MotionEvent;
    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 736
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->sendToSIP(Landroid/view/MotionEvent;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x32

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 740
    .end local v9           #me:Landroid/view/MotionEvent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->startStroke()V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setSIPVisibility(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 756
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_InvalidateExtraBorder:I

    .line 757
    .local v4, border:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rcInvalidPaint:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    float-to-int v0, v7

    move/from16 v21, v0

    sub-int v21, v21, v4

    float-to-int v0, v8

    move/from16 v22, v0

    sub-int v22, v22, v4

    float-to-int v0, v7

    move/from16 v23, v0

    add-int v23, v23, v4

    float-to-int v0, v8

    move/from16 v24, v0

    add-int v24, v24, v4

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Rect;->set(IIII)V

    .line 759
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreKeyDownX:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndX:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreX:F

    .line 760
    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreKeyDownY:F

    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fStrokeCurveEndY:F

    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_fPreY:F

    .line 763
    const/16 v20, -0x64

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreX:I

    .line 764
    const/16 v20, -0x64

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPreY:I

    .line 768
    .end local v4           #border:I
    .end local v10           #nCount:I
    .end local v19           #sipID:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->isStroking()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 769
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 683
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 712
    .restart local v10       #nCount:I
    .restart local v15       #ptAppend:Landroid/graphics/PointF;
    .restart local v19       #sipID:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getSymbolCandidate()V

    goto/16 :goto_4

    .line 771
    .end local v10           #nCount:I
    .end local v15           #ptAppend:Landroid/graphics/PointF;
    .end local v19           #sipID:I
    :cond_12
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_16

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x1e

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 775
    sget-boolean v20, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v20, :cond_13

    .line 776
    const-string v20, "30"

    sget v21, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static/range {v20 .. v21}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 779
    :cond_13
    float-to-int v0, v7

    move/from16 v20, v0

    float-to-int v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->isTouchingOnePos(II)Landroid/graphics/Point;

    move-result-object v17

    .line 781
    .local v17, ptOnePos:Landroid/graphics/Point;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    const/16 v21, -0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    const/16 v21, -0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->checkIfTouchSwitchButton(II)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->stopStroke()V

    .line 794
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->clear()V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->switchHandwritingMode()V

    .line 801
    :cond_15
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 804
    .end local v17           #ptOnePos:Landroid/graphics/Point;
    :cond_16
    new-instance v16, Landroid/graphics/PointF;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 805
    .local v16, ptNew:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    move/from16 v20, v0

    if-nez v20, :cond_17

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->connectPoints(FFFF)V

    goto/16 :goto_2

    .line 809
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 810
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawBrush(FFFF)V

    goto/16 :goto_2

    .line 811
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 812
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->drawMarker(FFFF)V

    goto/16 :goto_2

    .line 814
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->connectPoints(FFFF)V

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 445
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 446
    .local v1, curW:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 447
    .local v0, curH:I
    :goto_1
    const/4 v2, 0x0

    .line 449
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    if-lt v1, p1, :cond_2

    if-lt v0, p2, :cond_2

    .line 475
    :goto_2
    return-void

    .end local v0           #curH:I
    .end local v1           #curW:I
    .end local v2           #newBitmap:Landroid/graphics/Bitmap;
    :cond_0
    move v1, v3

    .line 445
    goto :goto_0

    .restart local v1       #curW:I
    :cond_1
    move v0, v3

    .line 446
    goto :goto_1

    .line 453
    .restart local v0       #curH:I
    .restart local v2       #newBitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-ge v1, p1, :cond_3

    move v1, p1

    .line 454
    :cond_3
    if-ge v0, p2, :cond_4

    move v0, p2

    .line 457
    :cond_4
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v3, :cond_6

    .line 458
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    if-nez v3, :cond_5

    .line 459
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    .line 462
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 463
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    iput-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    .line 469
    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 470
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 472
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    :cond_7
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v16

    .line 619
    .local v16, hs:I
    if-lez v16, :cond_0

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 621
    .local v2, now:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 622
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

    .line 625
    .local v18, move:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    .line 626
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    .line 621
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 630
    .end local v2           #now:J
    .end local v16           #hs:I
    .end local v17           #i:I
    .end local v18           #move:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->onModifiedTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1583
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->clear()V

    .line 1589
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    .line 1591
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->stopStroke()V

    .line 1595
    :cond_1
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Memory_Optimize:Z

    if-eqz v0, :cond_3

    .line 1596
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1597
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelW:I

    .line 1598
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_PanelH:I

    .line 1599
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1601
    :cond_2
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bmpBack:Landroid/graphics/Bitmap;

    .line 1602
    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_canvasBack:Landroid/graphics/Canvas;

    .line 1605
    :cond_3
    return-void
.end method

.method public resetStrokeView()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 1610
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->clear()V

    .line 1620
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v0, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    .line 1622
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->stopStroke()V

    .line 1625
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1626
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->setSIPVisibility(I)V

    .line 1627
    :cond_3
    return-void
.end method

.method public setAnimation(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bEnableAnimation:Z

    .line 401
    return-void
.end method

.method public setDynamicWatingTimeEnable(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->setDynamicWatingTimeEnable(Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public setPPStroke(Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;)V
    .locals 0
    .parameter "stroke"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    .line 281
    return-void
.end method

.method public setPenColor(I)V
    .locals 2
    .parameter "nColor"

    .prologue
    .line 315
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    .line 316
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    return-void
.end method

.method public setPenSpeed(I)V
    .locals 1
    .parameter "nSpeed"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->setSpeedLevel(I)V

    .line 368
    :cond_0
    return-void
.end method

.method public setPenType(I)V
    .locals 4
    .parameter "nType"

    .prologue
    const/4 v3, 0x0

    .line 337
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    .line 338
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 339
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    if-nez v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 341
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 342
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 357
    :goto_0
    return-void

    .line 343
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 344
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4000

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 345
    .local v0, mask:Landroid/graphics/BlurMaskFilter;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 346
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 347
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 348
    .end local v0           #mask:Landroid/graphics/BlurMaskFilter;
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 350
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 351
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 354
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 355
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method public setPenWidth(I)V
    .locals 3
    .parameter "nWidth"

    .prologue
    .line 326
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    .line 327
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_paintStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nPenWidth:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x4320

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 328
    return-void
.end method

.method public setResolution(I)V
    .locals 0
    .parameter "nResolution"

    .prologue
    .line 305
    iput p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nResolution:I

    .line 306
    return-void
.end method

.method public setSIP(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V
    .locals 0
    .parameter "sip"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    .line 261
    return-void
.end method

.method public setSIPRectangle(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSIP:Landroid/graphics/Rect;

    .line 271
    return-void
.end method

.method public setSmartDialMode(Z)V
    .locals 0
    .parameter "bSmartDialMode"

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsSmartDial:Z

    .line 296
    return-void
.end method

.method public setSwitchButton(Z)V
    .locals 1
    .parameter "bUp"

    .prologue
    .line 290
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_rectSwitchButton:Landroid/graphics/RectF;

    .line 291
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bIsUpSwitch:Z

    .line 292
    return-void
.end method
