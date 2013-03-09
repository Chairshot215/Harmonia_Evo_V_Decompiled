.class public Lcom/htc/dockmode/widget/FlipDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "FlipDigitalClock.java"


# static fields
.field private static final USE_ANIMATION:Z = true


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ANIMATION_HOUR_COUNT:I

.field private final ANIMATION_MINUTE_COUNT:I

.field m24HourMode:Z

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Hour_next:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Hour_up:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;

.field private mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;

.field private mFlipAnimePrepared:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandy:Landroid/os/Handler;

.field private mHour:I

.field private mHourMask:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsResume:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field private mLeftDownContainer:Landroid/view/ViewGroup;

.field private mLeftDownTab:Landroid/widget/ImageView;

.field private mLeftTab:Landroid/widget/ImageView;

.field private mLeftUpContainer:Landroid/view/ViewGroup;

.field private mLeftUpNext:Landroid/view/ViewGroup;

.field private mLeftUpTab:Landroid/widget/ImageView;

.field private mLive:Z

.field private mMinMask:Landroid/view/View;

.field private mMinuteFlipCount:I

.field private mMinutes:I

.field private mOldHour:I

.field private mOldMinutes:I

.field private mRightDownContainer:Landroid/view/ViewGroup;

.field private mRightDownTab:Landroid/widget/ImageView;

.field private mRightTab:Landroid/widget/ImageView;

.field private mRightUpContainer:Landroid/view/ViewGroup;

.field private mRightUpNext:Landroid/view/ViewGroup;

.field private mRightUpTab:Landroid/widget/ImageView;

.field private mStartAnimation:Ljava/lang/Runnable;

.field private mUseAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mUseAnimation:Z

    .line 31
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->ANIMATION_DURATION:I

    .line 32
    iput v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->ANIMATION_HOUR_COUNT:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->ANIMATION_MINUTE_COUNT:I

    .line 59
    iput v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    .line 60
    iput v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 61
    iput v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 62
    iput v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    .line 64
    iput-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->m24HourMode:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/htc/dockmode/widget/FlipDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/widget/FlipDigitalClock$1;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/htc/dockmode/widget/FlipDigitalClock$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/widget/FlipDigitalClock$2;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v0, Lcom/htc/dockmode/widget/FlipDigitalClock$6;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/widget/FlipDigitalClock$6;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/widget/FlipDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/dockmode/widget/FlipDigitalClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/dockmode/widget/FlipDigitalClock;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/dockmode/widget/FlipDigitalClock;)Lcom/htc/dockmode/widget/FlipView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/widget/FlipDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/dockmode/widget/FlipDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->resetTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/dockmode/widget/FlipDigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dockmode/widget/FlipDigitalClock;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dockmode/widget/FlipDigitalClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/dockmode/widget/FlipDigitalClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/htc/dockmode/widget/FlipDigitalClock;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    return v0
.end method

.method private applyRotation()V
    .locals 20

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    .line 487
    .local v5, upCenterX:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 489
    .local v6, upCenterY:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 491
    .local v17, tabMarginTop:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 494
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 495
    .local v15, i:Landroid/view/animation/Interpolator;
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-float v8, v6

    add-float v8, v8, v17

    const/high16 v9, 0x4080

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 497
    .local v18, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0xaf

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 498
    const-wide/16 v3, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 499
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 500
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 502
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    if-eq v3, v4, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_next:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_up:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 507
    new-instance v2, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c

    const/high16 v7, 0x439b

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 509
    .local v2, rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 510
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 511
    invoke-virtual {v2, v15}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 513
    new-instance v7, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/high16 v8, 0x42b4

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x439b

    const/4 v13, 0x1

    move v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 515
    .local v7, rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v3, 0x15e

    invoke-virtual {v7, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setStartOffset(J)V

    .line 516
    const-wide/16 v3, 0x15e

    invoke-virtual {v7, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 517
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 518
    invoke-virtual {v7, v15}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpNext:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 527
    .end local v2           #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v7           #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    if-eq v3, v4, :cond_1

    .line 528
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v16, v3, 0x3c

    .line 529
    .local v16, nextMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {v3, v4}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 533
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-float v8, v6

    add-float v8, v8, v17

    const/high16 v9, 0x4080

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 535
    .local v19, trans2:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x57

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 537
    const-wide/16 v3, 0x7d

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 539
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 540
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 542
    new-instance v2, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/4 v9, 0x0

    const/high16 v10, -0x3d4c

    const/high16 v13, 0x439b

    const/4 v14, 0x1

    move-object v8, v2

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 544
    .restart local v2       #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v3, 0xaf

    invoke-virtual {v2, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 546
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 547
    invoke-virtual {v2, v15}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 548
    new-instance v3, Lcom/htc/dockmode/widget/FlipDigitalClock$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock$4;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 564
    new-instance v7, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/high16 v8, 0x42b4

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x439b

    const/4 v13, 0x1

    move v10, v5

    invoke-direct/range {v7 .. v13}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 566
    .restart local v7       #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v3, 0xaf

    invoke-virtual {v7, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setStartOffset(J)V

    .line 568
    const-wide/16 v3, 0xaf

    invoke-virtual {v7, v3, v4}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 570
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 571
    invoke-virtual {v7, v15}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 572
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setRepeatCount(I)V

    .line 574
    new-instance v3, Lcom/htc/dockmode/widget/FlipDigitalClock$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v2, v1}, Lcom/htc/dockmode/widget/FlipDigitalClock$5;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;Lcom/htc/dockmode/widget/Rotate3dAnimation;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v7, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpNext:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 600
    .end local v2           #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v7           #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v16           #nextMinute:I
    .end local v19           #trans2:Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void
.end method

.method private applyRotationTest()V
    .locals 18

    .prologue
    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 329
    .local v4, upCenterX:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 331
    .local v5, upCenterY:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 333
    .local v15, tabMarginTop:F
    new-instance v14, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v14}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 334
    .local v14, i:Landroid/view/animation/Interpolator;
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v7, v5

    add-float/2addr v7, v15

    const/high16 v8, 0x4080

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 336
    .local v16, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xaf

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 337
    const-wide/16 v2, 0x12c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 338
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 339
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 341
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    if-eq v2, v3, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_next:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_up:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 346
    new-instance v1, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/4 v2, 0x0

    const/high16 v3, -0x3d4c

    const/high16 v6, 0x439b

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 348
    .local v1, rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 349
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 350
    invoke-virtual {v1, v14}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 352
    new-instance v6, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/high16 v7, 0x42b4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x439b

    const/4 v12, 0x1

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 354
    .local v6, rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v6, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setStartOffset(J)V

    .line 355
    const-wide/16 v2, 0x15e

    invoke-virtual {v6, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 356
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 357
    invoke-virtual {v6, v14}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpNext:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 366
    .end local v1           #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v6           #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    if-eq v2, v3, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {v2, v3}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 372
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v7, v5

    add-float/2addr v7, v15

    const/high16 v8, 0x4080

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 374
    .local v17, trans2:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x57

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 376
    const-wide/16 v2, 0x7d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 378
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 379
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 381
    new-instance v1, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/4 v8, 0x0

    const/high16 v9, -0x3d4c

    const/high16 v12, 0x439b

    const/4 v13, 0x1

    move-object v7, v1

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 383
    .restart local v1       #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 386
    invoke-virtual {v1, v14}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 388
    new-instance v6, Lcom/htc/dockmode/widget/Rotate3dAnimation;

    const/high16 v7, 0x42b4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x439b

    const/4 v12, 0x1

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/htc/dockmode/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 390
    .restart local v6       #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    const-wide/16 v2, 0xaf

    invoke-virtual {v6, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setStartOffset(J)V

    .line 392
    const-wide/16 v2, 0xaf

    invoke-virtual {v6, v2, v3}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setDuration(J)V

    .line 394
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 395
    invoke-virtual {v6, v14}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 397
    new-instance v2, Lcom/htc/dockmode/widget/FlipDigitalClock$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock$3;-><init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V

    invoke-virtual {v6, v2}, Lcom/htc/dockmode/widget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpNext:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    .line 416
    .end local v1           #rotation:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v6           #rotation2:Lcom/htc/dockmode/widget/Rotate3dAnimation;
    .end local v17           #trans2:Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void
.end method

.method private resetTimer()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v3, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    rem-long/2addr v1, v4

    sub-long v1, v4, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public clearAnimations()V
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->clearAnimations(II)V

    .line 453
    return-void
.end method

.method public clearAnimations(II)V
    .locals 2
    .parameter "hour"
    .parameter "minutes"

    .prologue
    const/4 v1, 0x4

    .line 309
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 312
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 313
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 314
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 315
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 316
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 317
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, p1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 318
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, p2}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 319
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpNext:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpNext:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->invalidate()V

    goto :goto_0
.end method

.method public forceSetTime()V
    .locals 3

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->updateCurrentTime()V

    .line 281
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    if-eq v0, v1, :cond_2

    .line 282
    :cond_1
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->clearAnimations(II)V

    .line 283
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    .line 286
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 288
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 289
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    .line 290
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const-wide/32 v5, 0xea60

    .line 195
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 197
    iget-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mAttached:Z

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mAttached:Z

    .line 201
    iget-boolean v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    rem-long/2addr v3, v5

    sub-long v3, v5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 217
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mAttached:Z

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iput-boolean v2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mAttached:Z

    .line 221
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 124
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a0020

    const v3, 0x7f0a0021

    const v4, 0x7f0a0022

    const v5, 0x7f0a0023

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    .line 127
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a0035

    const v3, 0x7f0a0036

    move-object v1, p0

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    .line 131
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a0031

    const v3, 0x7f0a0032

    const v4, 0x7f0a0033

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_up:Lcom/htc/dockmode/widget/FlipView;

    .line 133
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a0027

    const v3, 0x7f0a0028

    const v4, 0x7f0a0029

    const v5, 0x7f0a002a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    .line 136
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a002d

    const v3, 0x7f0a002e

    const v4, 0x7f0a002f

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_next:Lcom/htc/dockmode/widget/FlipView;

    .line 140
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a0041

    const v3, 0x7f0a0042

    move-object v1, p0

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_up:Lcom/htc/dockmode/widget/FlipView;

    .line 142
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a003a

    const v3, 0x7f0a003b

    move-object v1, p0

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_down:Lcom/htc/dockmode/widget/FlipView;

    .line 145
    new-instance v0, Lcom/htc/dockmode/widget/FlipView;

    const v2, 0x7f0a003d

    const v3, 0x7f0a003e

    move-object v1, p0

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/htc/dockmode/widget/FlipView;-><init>(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute_next:Lcom/htc/dockmode/widget/FlipView;

    .line 149
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    .line 150
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftDownContainer:Landroid/view/ViewGroup;

    .line 151
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpNext:Landroid/view/ViewGroup;

    .line 152
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHourMask:Landroid/view/View;

    .line 153
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinMask:Landroid/view/View;

    .line 155
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpContainer:Landroid/view/ViewGroup;

    .line 156
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightDownContainer:Landroid/view/ViewGroup;

    .line 157
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpNext:Landroid/view/ViewGroup;

    .line 159
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/htc/dockmode/widget/FlipUtils;->setFilterBitmap(Landroid/view/ViewGroup;Z)V

    .line 160
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/htc/dockmode/widget/FlipUtils;->setFilterBitmap(Landroid/view/ViewGroup;Z)V

    .line 161
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/htc/dockmode/widget/FlipUtils;->setFilterBitmap(Landroid/view/ViewGroup;Z)V

    .line 162
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lcom/htc/dockmode/widget/FlipUtils;->setFilterBitmap(Landroid/view/ViewGroup;Z)V

    .line 164
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftTab:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftUpTab:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftDownTab:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLeftTab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 169
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightTab:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightUpTab:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightDownTab:Landroid/widget/ImageView;

    .line 172
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mRightTab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 174
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mKeyguard:Landroid/app/KeyguardManager;

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    .line 190
    iput-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    .line 183
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mStartAnimation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/dockmode/widget/FlipDigitalClock;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method

.method public onTimeChanged(Z)V
    .locals 3
    .parameter "bUseAnimation"

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->updateCurrentTime()V

    .line 254
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    if-eq v0, v1, :cond_2

    .line 255
    :cond_1
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/dockmode/widget/FlipDigitalClock;->clearAnimations(II)V

    .line 256
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    .line 257
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mUseAnimation:Z

    if-nez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 259
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 260
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 261
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_3
    if-eqz p1, :cond_4

    .line 265
    invoke-direct {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->applyRotationTest()V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 268
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 269
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 270
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    goto :goto_0
.end method

.method public prepareAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v4, 0xc

    const/16 v3, 0x9

    .line 419
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mUseAnimation:Z

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mIsResume:Z

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->clearAnimations()V

    .line 425
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 426
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    .line 427
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 428
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->m24HourMode:Z

    if-eqz v0, :cond_4

    .line 429
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 430
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v5}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 432
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v5}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 433
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    add-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 445
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v0, v0, -0x2

    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    .line 446
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 447
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Minute:Lcom/htc/dockmode/widget/FlipView;

    iget v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldMinutes:I

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setValue(I)V

    .line 448
    iput-boolean v6, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    goto :goto_0

    .line 435
    :cond_4
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    if-nez v0, :cond_5

    .line 436
    iput v4, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 438
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 439
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    .line 440
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    if-nez v0, :cond_3

    .line 441
    iput v4, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mOldHour:I

    goto :goto_1
.end method

.method public setClockInfo(ZLjava/util/Calendar;)V
    .locals 0
    .parameter "is24Hour"
    .parameter "c"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->m24HourMode:Z

    .line 237
    iput-object p2, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 238
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mLive:Z

    .line 233
    return-void
.end method

.method public startAnimation()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x9

    .line 456
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mUseAnimation:Z

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p0, v5}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onTimeChanged(Z)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 464
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    .line 465
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 467
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->m24HourMode:Z

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 469
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v4}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 471
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v4}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 479
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinuteFlipCount:I

    .line 480
    invoke-direct {p0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->applyRotation()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mFlipAnimePrepared:Z

    goto :goto_0

    .line 473
    :cond_3
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    if-nez v0, :cond_4

    .line 474
    iput v6, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 476
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    goto :goto_1
.end method

.method updateCurrentTime()V
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, -0x1

    const/16 v2, 0x9

    .line 293
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mMinutes:I

    .line 294
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 295
    iget-boolean v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->m24HourMode:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v3}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 299
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    invoke-virtual {v0, v3}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 306
    :goto_0
    return-void

    .line 301
    :cond_1
    iget v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    if-nez v0, :cond_2

    .line 302
    iput v4, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mHour:I

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    .line 304
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mDigital_Hour_down:Lcom/htc/dockmode/widget/FlipView;

    iget-object v1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/widget/FlipView;->setAmPm(I)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->onTimeChanged(Z)V

    .line 229
    return-void
.end method
