.class public Lcom/htc/android/htcime/ezsip/trace/TraceConfig;
.super Ljava/lang/Object;
.source "TraceConfig.java"


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x2

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final DEFAULT_ACTIVE_ON_ALL_FIELD:Z = false

.field public static final DEFAULT_AUTO_COMMIT_SPEED_LEVEL:I = 0x3

.field public static final DEFAULT_RAW_STROKE_WIDTH:I = 0x5

.field public static final DEFAULT_STROKE_COLOR_TYPE:Ljava/lang/String; = "7"

.field public static final DEFAULT_TRACE_PREDICTION:Z = false

.field public static final ENABLE_DELAY_TIMER_OF_AUTO_COMMIT:Z = false

.field public static final ENABLE_STROKE_WIDTH:Z = false

.field public static final INTERVAL_UNIT:I = 0xfa

.field public static final MAX_AUTO_COMMIT_SPEED_LEVEL:I = 0x6

.field public static final MAX_RAW_STROKE_WIDTH:I = 0x5


# instance fields
.field private final TAG:Ljava/lang/String;

.field mActiveOnAllField:Z

.field mAutoCommitWaitTime:I

.field mQwertyKdbReady:Z

.field mStrokeColor:I

.field mStrokeWidth:I

.field mTracePrediction:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getStrokeColor(I)I
    .locals 2
    .parameter "colorType"

    .prologue
    .line 88
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color:[I

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public static isValidStrokeColorType(I)Z
    .locals 3
    .parameter "colorType"

    .prologue
    const/4 v0, 0x0

    .line 92
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    array-length v1, v1

    if-lt p0, v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-ltz p0, :cond_0

    .line 98
    sget-object v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color_used_in_setting:[I

    aget v1, v1, p0

    sget-object v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->COLORFUL:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v2}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPenWidth(I)V
    .locals 1
    .parameter "rawStrokeWidth"

    .prologue
    .line 74
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mStrokeWidth:I

    .line 75
    return-void
.end method


# virtual methods
.method public load(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "res"
    .parameter "sp"

    .prologue
    .line 50
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->TAG:Ljava/lang/String;

    const-string v4, "[load] load Trace config"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const v3, 0x7f090316

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mQwertyKdbReady:Z

    .line 55
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mActiveOnAllField:Z

    .line 56
    const v3, 0x7f090119

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mTracePrediction:Z

    .line 57
    const v3, 0x7f09011b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, rawStrokeWidth:I
    const v3, 0x7f09011a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "7"

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, rawStrokeColorType:I
    const v3, 0x7f09011c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, autoCommitSpeedLevel:I
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->setPenWidth(I)V

    .line 67
    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->getStrokeColor(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mStrokeColor:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->setAutoCommitWaitTime(I)V

    .line 69
    return-void
.end method

.method public setAutoCommitWaitTime(I)V
    .locals 1
    .parameter "speedLevel"

    .prologue
    .line 81
    mul-int/lit16 v0, p1, 0xfa

    iput v0, p0, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mAutoCommitWaitTime:I

    .line 82
    return-void
.end method
