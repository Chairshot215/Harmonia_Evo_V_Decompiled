.class public Lcom/htc/android/htcime/ezsip/trace/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/trace/Trace$H;,
        Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;,
        Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;,
        Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
    }
.end annotation


# static fields
.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x2

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field private static final DUMMY_POSITION:Landroid/graphics/Point; = null

.field private static final EVT_CATCH:Z = true

.field private static final EVT_PASS:Z = false

.field private static final INVALID_POS:I = -0x1

.field private static final MAX_POINTS:I = 0x3e8

.field private static final MSG_TIMER_AUTO_COMMIT:I = 0x1

.field private static final TAP_COMPOSING_IGNORE_CASE:[Ljava/lang/String; = null

.field private static final TRACE_PAUSE:Z = true


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAL_Points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

.field private mCurrPoint:Landroid/graphics/Point;

.field private mH:Lcom/htc/android/htcime/ezsip/trace/Trace$H;

.field private mIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

.field private mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPenDownInfo:Landroid/view/MotionEvent;

.field private mPointPaint:Landroid/graphics/Paint;

.field private mPrevPoint:Landroid/graphics/Point;

.field private mTapPredictionMode:Z

.field private mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/htc/android/htcime/ezsip/trace/Trace;->DUMMY_POSITION:Landroid/graphics/Point;

    .line 752
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAP_COMPOSING_IGNORE_CASE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "imm"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/htc/android/htcime/ezsip/trace/Trace$H;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/trace/Trace$H;-><init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mH:Lcom/htc/android/htcime/ezsip/trace/Trace$H;

    .line 91
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 92
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTraceConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    .line 95
    new-instance v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;-><init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    .line 96
    new-instance v0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;-><init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPointPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPointPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/android/htcime/ezsip/trace/Trace;->DUMMY_POSITION:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/TraceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    return-object v0
.end method

.method private addPoint(II)V
    .locals 2
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mCurrPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    .line 546
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mCurrPoint:Landroid/graphics/Point;

    .line 547
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mCurrPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method private isEnabledSIP(I)Z
    .locals 2
    .parameter "sipID"

    .prologue
    const/4 v0, 0x1

    .line 833
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v0, :cond_1

    .line 835
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 844
    :cond_0
    :goto_0
    return v0

    .line 840
    :cond_1
    if-eqz p1, :cond_0

    .line 844
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabledSIP(Lcom/htc/android/htcime/Intf/IHTCSIP;)Z
    .locals 4
    .parameter "sip"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 823
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 829
    goto :goto_0
.end method

.method private isInTapComposing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v1}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->isInComposing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v1}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->getCurrLDBID()I

    move-result v1

    const/16 v2, 0x409

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v1}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->getComposing()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAP_COMPOSING_IGNORE_CASE:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isWordInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requirementCheck()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mQwertyKdbReady:Z

    if-nez v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v0

    .line 780
    :cond_1
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mTracePrediction:Z

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isEnabledSIP(Lcom/htc/android/htcime/Intf/IHTCSIP;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    if-nez v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v2, "[requirementCheck] mOnTraceListener is null! Disable Trace mode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkMT(I)Z
    .locals 6
    .parameter "pointerCount"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, needClearKB:Z
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 418
    .local v1, orgState:I
    if-lt p1, v3, :cond_0

    .line 420
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v2, :pswitch_data_0

    .line 464
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 424
    :pswitch_0
    const/4 v0, 0x0

    .line 425
    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 430
    const/4 v0, 0x0

    .line 431
    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCancel()V

    .line 435
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 436
    const/4 v0, 0x1

    .line 437
    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v2, v5}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    .line 442
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 443
    const/4 v0, 0x0

    .line 444
    goto :goto_0

    .line 449
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v3, "[checkMT] Impossible case (RECORD_DONE)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 451
    const/4 v0, 0x0

    .line 452
    goto :goto_0

    .line 456
    :pswitch_5
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v3, "[checkMT] Impossible case (PREDICT_DONE)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v2, v5}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    .line 458
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 459
    const/4 v0, 0x0

    .line 460
    goto :goto_0

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v2, :pswitch_data_1

    .line 478
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    :pswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v3, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 473
    const/4 v0, 0x0

    .line 474
    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 469
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v1, "[disable] Trace mode is disable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v2, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 165
    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    .line 166
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    return-void

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v0, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method dumpTracePoints()V
    .locals 8

    .prologue
    .line 1135
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1137
    .local v2, points:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Point;>;"
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v4, "[dumpTracePoints] pointer count:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1140
    .local v1, point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v4, "[dumpTracePoints] point#%d (%4d, %4d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v1, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1142
    .end local v1           #point:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 143
    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    .line 145
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 147
    return-void

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getPenDownEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPenDownInfo:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getRawData()[I
    .locals 6

    .prologue
    .line 566
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [I

    .line 568
    .local v1, intArray:[I
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 570
    .local v3, points:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 573
    .local v2, point:Landroid/graphics/Point;
    mul-int/lit8 v4, v0, 0x2

    iget v5, v2, Landroid/graphics/Point;->x:I

    aput v5, v1, v4

    .line 574
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v2, Landroid/graphics/Point;->y:I

    aput v5, v1, v4

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v2           #point:Landroid/graphics/Point;
    :cond_0
    return-object v1
.end method

.method public handleDown(IIILcom/htc/android/htcime/ezsip/Keyboard$Key;I)Z
    .locals 10
    .parameter "keyID"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "key"
    .parameter "shiftState"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 178
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->reset()V

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v8, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 183
    .local v8, orgState:I
    if-eqz p4, :cond_1

    iget-boolean v7, p4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    .line 184
    .local v7, isFNKEY:Z
    :goto_0
    if-eqz p4, :cond_2

    iget-object v0, p4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v0, v6

    .line 187
    .local v4, keyCode:I
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_2
    :pswitch_0
    return v6

    .end local v4           #keyCode:I
    .end local v7           #isFNKEY:Z
    :cond_1
    move v7, v6

    .line 183
    goto :goto_0

    .line 184
    .restart local v7       #isFNKEY:Z
    :cond_2
    const/16 v4, -0x62

    goto :goto_1

    .line 194
    .restart local v4       #keyCode:I
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 195
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 198
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->set(IIIIIZ)V

    .line 200
    if-nez v7, :cond_3

    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isInTapComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0, v8}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace(I)V

    goto :goto_2

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 206
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 208
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 209
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->set(IIIIIZ)V

    .line 211
    if-eqz v7, :cond_4

    .line 212
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0, v8}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace(I)V

    :cond_4
    move v6, v9

    .line 213
    goto :goto_2

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v1, 0x5

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 217
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-direct {p0, p2, p3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 219
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 220
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->set(IIIIIZ)V

    .line 222
    if-eqz v7, :cond_5

    .line 223
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0, v8}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace(I)V

    :cond_5
    move v6, v9

    .line 224
    goto/16 :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleMove(II)Z
    .locals 6
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 237
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v2, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 244
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isPause()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->getKeyCode()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isBlockSIPKeyDown()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommitTapPD(IZ)V

    .line 249
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 251
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v0, v1

    .line 252
    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 257
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isPause()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 266
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v0, v1

    .line 267
    goto/16 :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isPause()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 271
    goto/16 :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTapPredictionMode:Z

    invoke-interface {v0, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    .line 274
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v4, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/trace/Trace;->addPoint(II)V

    .line 276
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPrevPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v0, v1

    .line 277
    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public handleUp(IIIIZ)Z
    .locals 9
    .parameter "keyID"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "keyCode"
    .parameter "inAccentMode"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v5, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 301
    .local v0, orgState:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    packed-switch v5, :pswitch_data_0

    .line 406
    :goto_0
    :pswitch_0
    return v3

    .line 308
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v7, v4, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v7, v5, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 315
    if-eqz p5, :cond_0

    .line 317
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->getKeyCode()I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isBlockSIPKeyDown()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onPreAccent(IZ)V

    goto :goto_0

    .line 322
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 362
    invoke-static {p4}, Lcom/htc/android/htcime/XT9IME/LatinIM;->isWordComponent(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->isPause()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->restoreStateBeforePause()V

    :goto_1
    move v3, v4

    .line 375
    goto :goto_0

    .line 324
    :sswitch_0
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onSpaceKey()V

    goto :goto_1

    .line 327
    :sswitch_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onEnterKey()V

    goto :goto_1

    .line 330
    :sswitch_2
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onDelKey()V

    goto :goto_1

    .line 339
    :sswitch_3
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    int-to-char v5, p4

    invoke-interface {v3, v5}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onPunctKey(C)V

    goto :goto_1

    .line 342
    :sswitch_4
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    .line 343
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->restoreStateBeforePause()V

    goto :goto_1

    .line 346
    :sswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    .line 347
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->restoreStateBeforePause()V

    goto :goto_1

    .line 350
    :sswitch_6
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    .line 351
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->restoreStateBeforePause()V

    goto :goto_1

    .line 354
    :sswitch_7
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    .line 355
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->restoreStateBeforePause()V

    goto :goto_1

    .line 358
    :sswitch_8
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v5, v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    .line 359
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v6, "[handleUp] SIP error : KEYCODE_NOT_A_KEY.  state(%d)"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTapPredictionMode:Z

    invoke-interface {v3, p4, v5, v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onAlphabetKey(ILandroid/graphics/Point;Z)V

    goto :goto_1

    .line 371
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    invoke-interface {v5, v3}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    .line 372
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v6, "[handleUp] Ignore unicode(%d) in state(%d)"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    :pswitch_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v6, 0x7

    iput v6, v5, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 379
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mKeyDownInfo:Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->getShiftState()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onPreDict(I)Z

    move-result v1

    .line 381
    .local v1, pd_result:Z
    if-eqz v1, :cond_3

    .line 387
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/16 v5, 0x9

    iput v5, v3, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    :goto_2
    move v3, v4

    .line 398
    goto/16 :goto_0

    .line 391
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v7, v5, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 392
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 393
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 322
    :sswitch_data_0
    .sparse-switch
        -0x62 -> :sswitch_8
        -0x15 -> :sswitch_5
        -0x14 -> :sswitch_4
        -0x13 -> :sswitch_7
        -0x12 -> :sswitch_6
        0x8 -> :sswitch_2
        0xa -> :sswitch_1
        0x20 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x3b -> :sswitch_3
    .end sparse-switch
.end method

.method public isActiveOnAllField()Z
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isActiveOnAllField(I)Z

    move-result v0

    return v0
.end method

.method public isActiveOnAllField(I)Z
    .locals 3
    .parameter "sipID"

    .prologue
    const/4 v0, 0x0

    .line 803
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mActiveOnAllField:Z

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mTracePrediction:Z

    if-eqz v1, :cond_0

    .line 812
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isEnabledSIP(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTracing()Z
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWordInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "word"
    .parameter "list"

    .prologue
    .line 768
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 769
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 770
    const/4 v1, 0x1

    .line 772
    :goto_1
    return v1

    .line 768
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method loadTestData()V
    .locals 9

    .prologue
    const/16 v8, 0x1b4

    const/16 v7, 0x1b1

    const/16 v6, 0x1ac

    const/16 v5, 0x70

    const/16 v4, 0x71

    .line 878
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x15b

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x156

    const/16 v3, 0x39

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x156

    const/16 v3, 0x3d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x156

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x156

    const/16 v3, 0x45

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x4c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x53

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x56

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x5b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x155

    const/16 v3, 0x62

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x154

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x154

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x154

    const/16 v3, 0x6f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x153

    const/16 v3, 0x74

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x152

    const/16 v3, 0x7a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x152

    const/16 v3, 0x7f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x150

    const/16 v3, 0x91

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x150

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14f

    const/16 v3, 0x98

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0x9e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xa2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xa6

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xaa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xad

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xb2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xb7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xba

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xbd

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xc0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xc3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14d

    const/16 v3, 0xc6

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x149

    const/16 v3, 0xc7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13d

    const/16 v3, 0xc3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x131

    const/16 v3, 0xbd

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x12b

    const/16 v3, 0xbb

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x127

    const/16 v3, 0xb8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x122

    const/16 v3, 0xb3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x11c

    const/16 v3, 0xaf

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x117

    const/16 v3, 0xaa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x112

    const/16 v3, 0xa5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0xa4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x109

    const/16 v3, 0xa0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x103

    const/16 v3, 0x9c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xfe

    const/16 v3, 0x97

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf9

    const/16 v3, 0x92

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf4

    const/16 v3, 0x8d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf1

    const/16 v3, 0x87

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xed

    const/16 v3, 0x7e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xea

    const/16 v3, 0x76

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe9

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe8

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe8

    const/16 v3, 0x63

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe7

    const/16 v3, 0x5e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe6

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe5

    const/16 v3, 0x54

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe4

    const/16 v3, 0x4b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe3

    const/16 v3, 0x45

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe1

    const/16 v3, 0x3e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe1

    const/16 v3, 0x39

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe0

    const/16 v3, 0x35

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe0

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xdc

    const/16 v3, 0x2e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xd6

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xd2

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xca

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc1

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xac

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xa5

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xa1

    const/16 v3, 0x2e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x94

    const/16 v3, 0x31

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x8c

    const/16 v3, 0x34

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x85

    const/16 v3, 0x34

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x82

    const/16 v3, 0x34

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x89

    const/16 v3, 0x30

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x9a

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xa5

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xaf

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xb2

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xb6

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xba

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc2

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xd1

    const/16 v3, 0x3b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe0

    const/16 v3, 0x47

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe7

    const/16 v3, 0x4d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf4

    const/16 v3, 0x5a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x101

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0x75

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x115

    const/16 v3, 0x7b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x11c

    const/16 v3, 0x84

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x11e

    const/16 v3, 0x88

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x127

    const/16 v3, 0x93

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x130

    const/16 v3, 0x9c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x139

    const/16 v3, 0xa5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13e

    const/16 v3, 0xaa

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x140

    const/16 v3, 0xad

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x146

    const/16 v3, 0xb5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14a

    const/16 v3, 0xbc

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14e

    const/16 v3, 0xc0

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14f

    const/16 v3, 0xc3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x151

    const/16 v3, 0xc6

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x146

    const/16 v3, 0xc4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x11e

    const/16 v3, 0xb3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10b

    const/16 v3, 0xac

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf6

    const/16 v3, 0xa5

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xea

    const/16 v3, 0xa2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xd3

    const/16 v3, 0x9d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc0

    const/16 v3, 0x98

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xa2

    const/16 v3, 0x90

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x9b

    const/16 v3, 0x8e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x87

    const/16 v3, 0x89

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x85

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x58

    const/16 v3, 0x7f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x55

    const/16 v3, 0x7f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x4d

    const/16 v3, 0x7c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x46

    const/16 v3, 0x7a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x43

    const/16 v3, 0x79

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x44

    const/16 v3, 0x75

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x58

    const/16 v3, 0x6d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x76

    const/16 v3, 0x5e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x94

    const/16 v3, 0x52

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xa0

    const/16 v3, 0x4f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xb2

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xbb

    const/16 v3, 0x45

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xc9

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xd0

    const/16 v3, 0x3d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xdd

    const/16 v3, 0x39

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe0

    const/16 v3, 0x39

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xe8

    const/16 v3, 0x35

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xef

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf6

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x104

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x107

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x115

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x11d

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x132

    const/16 v3, 0x29

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13b

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x176

    const/16 v3, 0x2b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x17f

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x188

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x18f

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x193

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x194

    const/16 v3, 0x30

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x193

    const/16 v3, 0x35

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x18f

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x16f

    const/16 v3, 0x84

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x164

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x158

    const/16 v3, 0xa1

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x156

    const/16 v3, 0xa4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x151

    const/16 v3, 0xab

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14a

    const/16 v3, 0xb6

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x144

    const/16 v3, 0xbd

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x13e

    const/16 v3, 0xbf

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x12c

    const/16 v3, 0xba

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10f

    const/16 v3, 0xa8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xf3

    const/16 v3, 0x9e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xee

    const/16 v3, 0x9b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xcc

    const/16 v3, 0x8d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xbf

    const/16 v3, 0x88

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x9f

    const/16 v3, 0x81

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x8c

    const/16 v3, 0x7e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x80

    const/16 v3, 0x7d

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x64

    const/16 v3, 0x79

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x5e

    const/16 v3, 0x79

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x56

    const/16 v3, 0x79

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x4f

    const/16 v3, 0x79

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x4c

    const/16 v3, 0x78

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x56

    const/16 v3, 0x75

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x83

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xb2

    const/16 v3, 0x5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0xdd

    const/16 v3, 0x5e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10c

    const/16 v3, 0x5e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x12b

    const/16 v3, 0x5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x14a

    const/16 v3, 0x62

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x16a

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x176

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x18a

    const/16 v3, 0x69

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x196

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x19a

    const/16 v3, 0x6c

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1a1

    const/16 v3, 0x6e

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x1a7

    const/16 v3, 0x6f

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v7, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mAL_Points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPenDown(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "penEvent"

    .prologue
    .line 496
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPenDownInfo:Landroid/view/MotionEvent;

    .line 497
    return-void
.end method

.method public onTapPredictionModeChange(Z)V
    .locals 0
    .parameter "new_mode"

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTapPredictionMode:Z

    .line 519
    return-void
.end method

.method public onWCLCommit()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    sparse-switch v0, :sswitch_data_0

    .line 513
    :goto_0
    :sswitch_0
    return-void

    .line 508
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 509
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTapPredictionMode:Z

    invoke-interface {v0, v1}, Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;->onCommit(Z)V

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnTraceListener(Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mOnTraceListener:Lcom/htc/android/htcime/ezsip/trace/Trace$OnTraceListener;

    .line 679
    return-void
.end method

.method public startInput()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->requirementCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 109
    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sIsTraceKeyboard:Z

    .line 113
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->TAG:Ljava/lang/String;

    const-string v1, "[startInput] Trace mode in standby."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 117
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mTapPredictionMode:Z

    .line 119
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
