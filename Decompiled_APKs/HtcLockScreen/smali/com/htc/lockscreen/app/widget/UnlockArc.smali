.class public Lcom/htc/lockscreen/app/widget/UnlockArc;
.super Landroid/widget/FrameLayout;
.source "UnlockArc.java"

# interfaces
.implements Lcom/htc/lockscreen/app/util/TouchFilter$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;,
        Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "UnlockArc"

.field private static final MSG_NONUI_UPDATE_TIME:I = 0x65

.field private static final MSG_UI_CLOSE_SCREEN_ANIM:I = 0x3

.field private static final MSG_UI_GOTO_UNLOCK_SCREEN:I = 0x4

.field private static final MSG_UI_INIT:I = 0x8

.field private static final MSG_UI_OPEN_SCREEN_ANIM:I = 0x2

.field private static final MSG_UI_SHOW_HINT:I = 0x6

.field private static final MSG_UI_STOP_HINT:I = 0x7

.field private static final MSG_UI_UPDATE_TIME:I = 0x1

.field private static final MSG_UI_UPDATE_VIEW_POS:I = 0x5

.field private static final UNLOCK_SCREEN_FRAME_DURATION:I = 0x10


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAnimLastTime:J

.field private mAnimVel:F

.field private mArc:Landroid/view/View;

.field private mArcBottom:Landroid/view/View;

.field private mArcStartY:I

.field private mArcTop:Landroid/view/View;

.field private mArcTopArea:Landroid/widget/RelativeLayout;

.field private mBInit:Z

.field private mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

.field private mCurUpdateViewTime:J

.field private mDate:Landroid/widget/TextView;

.field private mDelta:I

.field private mDistance:I

.field private mECallHintText:Landroid/widget/TextView;

.field private mHintFlag:Z

.field private mHitIconLock:Landroid/widget/ImageView;

.field private mIsTouchThroughArc:Z

.field private mLastTargetDistance:I

.field private mLastWakeY:I

.field private mLayout:Landroid/view/View;

.field private mMinVelocity:F

.field mNonUIHandler:Lcom/htc/lockscreen/app/widget/UnlockArc$NonUiHandler;

.field private mNotificationArea:Landroid/view/ViewGroup;

.field private mNotificationView:Landroid/view/View;

.field private mOperatorPlmn:Landroid/widget/TextView;

.field private mOperatorSpn:Landroid/widget/TextView;

.field private mScreenLockHint:Landroid/view/View;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mStartY:I

.field private mTargetDistance:I

.field private mTime:Landroid/widget/TextView;

.field private mTimeArg:I

.field private mTimeShadow:Landroid/widget/TextView;

.field mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

.field mUIHandler:Landroid/os/Handler;

.field private mUnlockArea:Landroid/view/View;

.field private mUnlockAreaTop:I

.field private mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

.field private mUnlockMinScroll:I

.field private mUnlockStartY:I

.field private mVeloA:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHitIconLock:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    .line 97
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    .line 102
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    .line 104
    new-instance v0, Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/util/TouchFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    .line 200
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockArc$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    .line 309
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 310
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 311
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    .line 312
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    .line 580
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    .line 108
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->initView()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHitIconLock:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    .line 97
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    .line 102
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    .line 104
    new-instance v0, Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/util/TouchFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    .line 200
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockArc$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    .line 309
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 310
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 311
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    .line 312
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    .line 580
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    .line 113
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->initView()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHitIconLock:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    .line 97
    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    .line 102
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    .line 104
    new-instance v0, Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/util/TouchFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    .line 200
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockArc$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockArc$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockArc;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    .line 309
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 310
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 311
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    .line 312
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    .line 580
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    .line 118
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->initView()V

    .line 119
    return-void
.end method

.method private UpdateTimeUI()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "UnlockArc"

    const-string v1, "UpdateTimeUI"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAmPm:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/lockscreen/app/util/ClockUtil;->mAmPmString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDate:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/lockscreen/app/util/ClockUtil;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/widget/UnlockArc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/widget/UnlockArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->UpdateTimeUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/widget/UnlockArc;)Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/widget/UnlockArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->updateTargetPositionUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/widget/UnlockArc;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->showUnlockHit()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/app/widget/UnlockArc;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private clearSpnName()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 820
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 821
    .local v0, spnMove:I
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcTopArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 822
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorSpn:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method

.method private getDeltaY()I
    .locals 9

    .prologue
    .line 582
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 583
    .local v0, now:J
    iget-wide v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimLastTime:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float v2, v5, v6

    .line 585
    .local v2, t:F
    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeArg:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 586
    float-to-double v5, v2

    const-wide v7, 0x3f90624dd2f1a9fcL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    const v2, 0x3c83126f

    .line 587
    :cond_0
    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    int-to-float v4, v5

    .line 588
    .local v4, y:F
    iget v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimVel:F

    .line 590
    .local v3, v:F
    mul-float v5, v3, v2

    const/high16 v6, 0x3f00

    iget v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVeloA:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    .line 591
    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVeloA:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimVel:F

    .line 593
    iput-wide v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimLastTime:J

    .line 594
    const-string v5, "UnlockArc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVeloA:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDelta="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    return v5
.end method

.method private getVelocity()F
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 711
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 712
    .local v2, velocityTracker:Landroid/view/VelocityTracker;
    if-nez v2, :cond_1

    .line 713
    iget v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mMinVelocity:F

    .line 737
    :cond_0
    :goto_0
    return v0

    .line 716
    :cond_1
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 718
    iget-object v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 719
    .local v4, yVel:F
    cmpg-float v5, v4, v6

    if-gez v5, :cond_5

    const/4 v1, 0x1

    .line 721
    .local v1, negative:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 722
    .local v3, xVel:F
    cmpg-float v5, v3, v6

    if-gez v5, :cond_2

    .line 723
    neg-float v3, v3

    .line 725
    :cond_2
    const/high16 v5, 0x4316

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 726
    const/high16 v3, 0x4316

    .line 729
    :cond_3
    float-to-double v5, v4

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v0, v5

    .line 730
    .local v0, initialVelocity:F
    if-eqz v1, :cond_4

    .line 731
    neg-float v0, v0

    .line 734
    :cond_4
    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mMinVelocity:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 735
    iget v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mMinVelocity:F

    goto :goto_0

    .line 719
    .end local v0           #initialVelocity:F
    .end local v1           #negative:Z
    .end local v3           #xVel:F
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initParemeter()V
    .locals 5

    .prologue
    .line 164
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 165
    .local v0, unlockAreaMove:I
    const-string v2, "UnlockArc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initParemeter mUnlockArea:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unlockAreaMove:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockAreaTop:I

    .line 167
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 168
    .local v1, upGap:I
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockMinScroll:I

    .line 169
    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockAreaTop:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockStartY:I

    .line 170
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcStartY:I

    .line 171
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mMinVelocity:F

    .line 172
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeArg:I

    .line 173
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVeloA:F

    .line 174
    return-void
.end method

.method private onReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 745
    iput v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDelta:I

    .line 746
    iput v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 747
    iput v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 749
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    neg-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 750
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 751
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 752
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onReset()V

    .line 754
    :cond_0
    return-void
.end method

.method private onScroll()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onScroll(Z)V

    .line 759
    return-void
.end method

.method private onScroll(Z)V
    .locals 8
    .parameter "smooth"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 763
    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    int-to-double v2, v2

    const-wide v4, 0x3ffccccccccccccdL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 764
    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    if-gez v2, :cond_0

    .line 765
    iput v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    .line 767
    :cond_0
    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    if-gez v2, :cond_1

    .line 768
    iput v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 770
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    iget v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    neg-int v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->scrollTo(II)V

    .line 771
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 772
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_2

    .line 773
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isNeedScroll()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 775
    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 776
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 783
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 780
    :cond_3
    iget v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    neg-int v2, v2

    invoke-interface {v0, v2}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onScroll(I)V

    goto :goto_0
.end method

.method private showUnlockHit()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 599
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    if-eqz v1, :cond_1

    .line 600
    iput-boolean v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    .line 601
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->startArrow()V

    .line 603
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mScreenLocked:Landroid/widget/TextView;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 605
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mScreenLockHint:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorSpn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 615
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 616
    invoke-interface {v0, v4}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onShowHint(Z)V

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 621
    .end local v0           #callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->updateHintView()V

    .line 622
    return-void
.end method

.method private startResetAnime(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    .line 480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 481
    .local v1, now:J
    iput-wide v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimLastTime:J

    .line 482
    const-wide/16 v3, 0x10

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    .line 484
    const/high16 v3, 0x42c8

    add-float/2addr v3, p1

    iput v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimVel:F

    .line 487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 488
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 489
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method private startUnlockAnime(F)V
    .locals 7
    .parameter "velocity"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 453
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 467
    .local v2, now:J
    iput-wide v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimLastTime:J

    .line 468
    const-wide/16 v4, 0x10

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    .line 470
    iput p1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAnimVel:F

    .line 473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 474
    .local v1, msg:Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 475
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateTargetPositionUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f060005

    const/4 v6, 0x5

    .line 786
    iget-boolean v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    if-nez v4, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 791
    .local v0, callBack:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    if-eqz v4, :cond_0

    .line 795
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 796
    .local v1, d:F
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 797
    .local v2, maxMove:I
    int-to-float v4, v2

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    neg-int v4, v2

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    .line 798
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    iput v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    .line 807
    :cond_2
    :goto_1
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    if-gez v4, :cond_3

    .line 808
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    .line 810
    :cond_3
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    neg-int v4, v4

    invoke-interface {v0, v4}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onScroll(I)V

    .line 811
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    if-eq v4, v5, :cond_0

    .line 812
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 813
    .local v3, msg:Landroid/os/Message;
    iput v6, v3, Landroid/os/Message;->what:I

    .line 814
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 801
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    cmpl-float v4, v1, v8

    if-lez v4, :cond_5

    .line 802
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    iget-object v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    goto :goto_1

    .line 803
    :cond_5
    cmpg-float v4, v1, v8

    if-gez v4, :cond_2

    .line 804
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    iget-object v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastTargetDistance:I

    goto :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/Context;)V
    .locals 0
    .parameter "themeContext"

    .prologue
    .line 852
    return-void
.end method

.method public clearNotificationView()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    .line 927
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->updateHintView()V

    .line 928
    return-void
.end method

.method public closeScrollUI()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 541
    iget-boolean v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    if-nez v3, :cond_1

    .line 542
    const-string v3, "UnlockArc"

    const-string v4, "view uninit"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 546
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->getDeltaY()I

    move-result v1

    .line 558
    .local v1, delta:I
    iget v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 560
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onScroll(Z)V

    .line 561
    const-string v3, "UnlockArc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeDrawer- mDistance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    if-lez v3, :cond_0

    .line 566
    :cond_2
    iget-wide v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    .line 567
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 568
    .local v2, msg:Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 569
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-virtual {v2, p1}, Lcom/htc/lockscreen/app/util/TouchFilter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 282
    .local v1, done:Z
    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 284
    .local v0, action:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 288
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 298
    .end local v0           #action:I
    :cond_1
    :goto_0
    return v1

    .line 292
    .restart local v0       #action:I
    :cond_2
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 293
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public init(Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 178
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/app/util/TouchFilter;->register(Lcom/htc/lockscreen/app/util/TouchFilter$TouchListener;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    .line 181
    return-void
.end method

.method public initUI()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 185
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isShowECallHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initView()V
    .locals 3

    .prologue
    const/16 v2, 0x31

    .line 122
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    const v1, 0x7f030015

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLayout:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/app/widget/UnlockHintView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    .line 127
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLayout:Landroid/view/View;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcTop:Landroid/view/View;

    .line 131
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArc:Landroid/view/View;

    .line 132
    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcBottom:Landroid/view/View;

    .line 134
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcTopArea:Landroid/widget/RelativeLayout;

    .line 136
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorSpn:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0a0063

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAmPm:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDate:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mScreenLockHint:Landroid/view/View;

    .line 146
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mScreenLocked:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHitIconLock:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->clearSpnName()V

    .line 154
    return-void
.end method

.method public isInScroll()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 931
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    if-nez v2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v1

    .line 934
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v0

    .line 935
    .local v0, y:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 936
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 159
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->initParemeter()V

    .line 160
    return-void
.end method

.method public onTouchEvent(III)Z
    .locals 12
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 316
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 317
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v7

    .line 320
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    const-string v8, "UnlockArc"

    const-string v9, "touch ACTION_DOWN"

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    int-to-float v8, p2

    int-to-float v9, p3

    invoke-interface {v0, v8, v9}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onTouchDown(FF)V

    .line 326
    iput p3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    .line 327
    iput p3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastWakeY:I

    .line 328
    iget v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    iget v9, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockAreaTop:I

    if-le v8, v9, :cond_2

    .line 329
    iput-boolean v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    .line 334
    :goto_1
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onReset()V

    .line 335
    iget-boolean v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    if-ne v8, v6, :cond_3

    .line 337
    iget-object v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 332
    :cond_2
    iput-boolean v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    goto :goto_1

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->startToShowHint()V

    goto :goto_0

    .line 353
    :pswitch_1
    iget v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockAreaTop:I

    if-le p3, v8, :cond_4

    move v3, v6

    .line 355
    .local v3, moveCondition:Z
    :goto_2
    if-eqz v3, :cond_7

    .line 356
    iget-boolean v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    if-nez v8, :cond_5

    .line 357
    iput p3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mLastWakeY:I

    iput p3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    .line 358
    iput-boolean v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    goto :goto_0

    .end local v3           #moveCondition:Z
    :cond_4
    move v3, v7

    .line 353
    goto :goto_2

    .line 362
    .restart local v3       #moveCondition:Z
    :cond_5
    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    sub-int v1, p3, v6

    .line 363
    .local v1, dis:I
    iput v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 366
    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    if-gez v6, :cond_6

    .line 367
    iput v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 368
    :cond_6
    iget-object v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    if-eqz v6, :cond_0

    int-to-float v6, v1

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onScroll()V

    goto :goto_0

    .line 373
    .end local v1           #dis:I
    :cond_7
    iget-boolean v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    if-eqz v6, :cond_0

    .line 374
    iput v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 375
    iput-boolean v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mIsTouchThroughArc:Z

    .line 376
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onReset()V

    goto :goto_0

    .line 380
    .end local v3           #moveCondition:Z
    :pswitch_2
    const-string v6, "UnlockArc"

    const-string v8, "touch ACTION_UP"

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    int-to-float v6, p2

    int-to-float v8, p3

    invoke-interface {v0, v6, v8}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onTouchUp(FF)V

    .line 382
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->getVelocity()F

    move-result v2

    .line 383
    .local v2, initialVelocity:F
    const-string v6, "UnlockArc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "velocity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v5, 0x0

    .line 388
    .local v5, unlockCondition:Z
    iget-object v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockArea:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 389
    .local v4, scrollY:I
    const-string v6, "UnlockArc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unlock scrollY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mUnlockMinScroll:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockMinScroll:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v6, "UnlockArc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unlock mStartUnlockY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mUnlockStartY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockStartY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    neg-int v6, v4

    iget v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockMinScroll:I

    if-le v6, v8, :cond_8

    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mStartY:I

    iget v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockStartY:I

    if-gt v6, v8, :cond_8

    .line 392
    const-string v6, "UnlockArc"

    const-string v8, "unlock condition true"

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v5, 0x1

    .line 395
    :cond_8
    if-eqz v5, :cond_9

    .line 404
    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/widget/UnlockArc;->startUnlockAnime(F)V

    goto/16 :goto_0

    .line 406
    :cond_9
    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    int-to-float v6, v6

    cmpl-float v6, v6, v10

    if-lez v6, :cond_a

    .line 407
    invoke-direct {p0, v2}, Lcom/htc/lockscreen/app/widget/UnlockArc;->startResetAnime(F)V

    .line 408
    const-string v6, "UnlockArc"

    const-string v8, "up animationn done"

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_a
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onReset()V

    .line 414
    const-string v6, "UnlockArc"

    const-string v8, "do not match unlock conditions"

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    .end local v2           #initialVelocity:F
    .end local v4           #scrollY:I
    .end local v5           #unlockCondition:Z
    :pswitch_3
    const-string v6, "UnlockArc"

    const-string v8, "MotionEvent.CANCEL"

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    int-to-float v6, p2

    int-to-float v8, p3

    invoke-interface {v0, v6, v8}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onTouchUp(FF)V

    .line 428
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onReset()V

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public openScrollUI()V
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x2

    .line 493
    iget-boolean v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    if-nez v4, :cond_1

    .line 494
    const-string v4, "UnlockArc"

    const-string v5, "view uninit"

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 498
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->getDeltaY()I

    move-result v1

    .line 512
    .local v1, delta:I
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    .line 513
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onScroll(Z)V

    .line 517
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->getScrollHeight()I

    move-result v3

    .line 518
    .local v3, screenHi:I
    const-string v4, "UnlockArc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openScrollUI screenHi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTargetDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v4, "UnlockArc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openScrollUI screenHi - mArcStartY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcStartY:I

    sub-int v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTargetDistance:I

    if-le v4, v3, :cond_2

    iget v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    iget v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcStartY:I

    sub-int v5, v3, v5

    if-gt v4, v5, :cond_3

    .line 522
    :cond_2
    iget-wide v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    .line 523
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 524
    .local v2, msg:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->what:I

    .line 525
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCurUpdateViewTime:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 529
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v4, "UnlockArc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drag down to unlock screen mDistance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDistance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 531
    .restart local v2       #msg:Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 532
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    iget-object v4, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->onReset()V

    .line 742
    return-void
.end method

.method public setNotification(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "icon"
    .parameter "title"
    .parameter "desp"
    .parameter "date"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 891
    const-string v7, "UnlockArc"

    const-string v8, " create Notification Display "

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 893
    iput-object v9, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    .line 895
    :try_start_0
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 896
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030010

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    .line 897
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    const v8, 0x7f0a003e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 899
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    const v8, 0x7f0a0040

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 901
    .local v5, titleView:Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    const v8, 0x7f0a0041

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 903
    .local v0, despView:Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 904
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    :goto_0
    iget-object v7, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v0           #despView:Landroid/widget/TextView;
    .end local v2           #iconView:Landroid/widget/ImageView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #titleView:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->updateHintView()V

    .line 922
    return-void

    .line 907
    .restart local v0       #despView:Landroid/widget/TextView;
    .restart local v2       #iconView:Landroid/widget/ImageView;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #titleView:Landroid/widget/TextView;
    :cond_0
    :try_start_1
    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 908
    .local v6, tmp:[Ljava/lang/String;
    const-string v4, ""

    .line 910
    .local v4, outStr:Ljava/lang/String;
    array-length v7, v6

    if-le v7, v10, :cond_1

    .line 911
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 918
    .end local v0           #despView:Landroid/widget/TextView;
    .end local v2           #iconView:Landroid/widget/ImageView;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #outStr:Ljava/lang/String;
    .end local v5           #titleView:Landroid/widget/TextView;
    .end local v6           #tmp:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 919
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "UnlockArc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resources Not Found, inflate layout fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 913
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #despView:Landroid/widget/TextView;
    .restart local v2       #iconView:Landroid/widget/ImageView;
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    .restart local v4       #outStr:Ljava/lang/String;
    .restart local v5       #titleView:Landroid/widget/TextView;
    .restart local v6       #tmp:[Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_2
.end method

.method public setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v3, 0x0

    .line 856
    const-string v0, "UnlockArc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOperatorName plmn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    if-eqz p1, :cond_1

    .line 858
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    if-eqz p2, :cond_0

    .line 860
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mArcTopArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 861
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorSpn:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->clearSpnName()V

    goto :goto_0

    .line 867
    :cond_1
    if-eqz p2, :cond_2

    .line 868
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->clearSpnName()V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->clearSpnName()V

    goto :goto_0
.end method

.method public startArrow()V
    .locals 6

    .prologue
    .line 644
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 645
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->getHint()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, hint:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 654
    .local v2, in:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 655
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->clearAnimation()V

    .line 656
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v3, v2}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v3, v1}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setText(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setVisibility(I)V

    .line 659
    iget-object v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->startArrowAnime(J)V

    goto :goto_0
.end method

.method public startToShowHint()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 271
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 272
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isShowHint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 275
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    :cond_0
    return-void
.end method

.method public stopArrow(Z)V
    .locals 4
    .parameter "bFadeOut"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 664
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->stopArrowAnime()V

    .line 668
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->clearAnimation()V

    .line 670
    const-string v2, "UnlockArc"

    const-string v3, "HTC_SCREENLOCKED_FADE_OUT_INT "

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    if-eqz p1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 674
    .local v1, out:Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 675
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    invoke-virtual {v2, v1}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 677
    .end local v1           #out:Landroid/view/animation/Animation;
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUnlockHint:Lcom/htc/lockscreen/app/widget/UnlockHintView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stopHintAnime(Z)V
    .locals 4
    .parameter "bFadeOut"

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    if-eqz v1, :cond_0

    .line 626
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    .line 627
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 628
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0, v3}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->onShowHint(Z)V

    .line 632
    .end local v0           #callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/app/widget/UnlockArc;->stopArrow(Z)V

    .line 633
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mScreenLockHint:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorPlmn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mOperatorSpn:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTimeShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockArc;->updateHintView()V

    .line 641
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mBInit:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 197
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mTouchFilter:Lcom/htc/lockscreen/app/util/TouchFilter;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/util/TouchFilter;->unregister()V

    .line 198
    return-void
.end method

.method public updateHintView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 681
    const-string v1, "UnlockArc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintViewByPriority~ mHintFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mCallback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;

    .line 683
    .local v0, callback:Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;
    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mHintFlag:Z

    if-eqz v1, :cond_3

    .line 687
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isShowECallHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    :cond_2
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 693
    :cond_3
    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isShowECallHint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationView:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/htc/lockscreen/app/widget/UnlockArc$ArcCallback;->isShowNotification()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 702
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 697
    :cond_4
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mECallHintText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 705
    :cond_5
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mNotificationArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/lockscreen/app/util/ClockUtil;->updateDateTime(Landroid/content/Context;)V

    .line 886
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockArc;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 887
    return-void
.end method
