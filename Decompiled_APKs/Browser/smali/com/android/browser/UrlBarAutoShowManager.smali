.class public Lcom/android/browser/UrlBarAutoShowManager;
.super Ljava/lang/Object;
.source "UrlBarAutoShowManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/browser/BrowserWebView$OnScrollChangedListener;


# static fields
.field private static IGNORE_INTERVAL:J

.field private static SCROLL_TIMEOUT_DURATION:J

.field private static V_TRIGGER_ANGLE:F


# instance fields
.field private mHasTriggered:Z

.field private mIsTracking:Z

.field private mLastScrollTime:J

.field private mSlop:I

.field private mStartTouchX:F

.field private mStartTouchY:F

.field private mTarget:Lcom/android/browser/BrowserWebView;

.field private mTriggeredTime:J

.field private mUi:Lcom/android/browser/BaseUi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x3f666666

    sput v0, Lcom/android/browser/UrlBarAutoShowManager;->V_TRIGGER_ANGLE:F

    .line 35
    const-wide/16 v0, 0x96

    sput-wide v0, Lcom/android/browser/UrlBarAutoShowManager;->SCROLL_TIMEOUT_DURATION:J

    .line 36
    const-wide/16 v0, 0xfa

    sput-wide v0, Lcom/android/browser/UrlBarAutoShowManager;->IGNORE_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BaseUi;)V
    .locals 2
    .parameter "ui"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    .line 52
    iget-object v1, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 53
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/browser/UrlBarAutoShowManager;->mSlop:I

    .line 54
    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/UrlBarAutoShowManager;->mLastScrollTime:J

    .line 73
    if-eq p2, p4, :cond_0

    .line 74
    if-eqz p2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-wide v2, p0, Lcom/android/browser/UrlBarAutoShowManager;->mLastScrollTime:J

    iget-wide v4, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTriggeredTime:J

    sub-long v0, v2, v4

    .line 78
    .local v0, remaining:J
    const-wide/16 v2, 0x5dc

    sub-long/2addr v2, v0

    sget-wide v4, Lcom/android/browser/UrlBarAutoShowManager;->SCROLL_TIMEOUT_DURATION:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v0, v1}, Lcom/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 86
    .end local v0           #remaining:J
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->suggestHideTitleBar()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/UrlBarAutoShowManager;->stopTracking()V

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 139
    :cond_1
    :goto_0
    return v12

    .line 104
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mIsTracking:Z

    if-nez v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/browser/UrlBarAutoShowManager;->mLastScrollTime:J

    sub-long v4, v7, v9

    .line 107
    .local v4, sinceLastScroll:J
    sget-wide v7, Lcom/android/browser/UrlBarAutoShowManager;->IGNORE_INTERVAL:J

    cmp-long v7, v4, v7

    if-ltz v7, :cond_1

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mStartTouchY:F

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mStartTouchX:F

    .line 112
    iput-boolean v11, p0, Lcom/android/browser/UrlBarAutoShowManager;->mIsTracking:Z

    .line 113
    iput-boolean v12, p0, Lcom/android/browser/UrlBarAutoShowManager;->mHasTriggered:Z

    goto :goto_0

    .line 117
    .end local v4           #sinceLastScroll:J
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mIsTracking:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mHasTriggered:Z

    if-nez v7, :cond_1

    move-object v6, p1

    .line 118
    check-cast v6, Landroid/webkit/WebView;

    .line 119
    .local v6, web:Landroid/webkit/WebView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/browser/UrlBarAutoShowManager;->mStartTouchY:F

    sub-float v3, v7, v8

    .line 120
    .local v3, dy:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 121
    .local v1, ady:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/browser/UrlBarAutoShowManager;->mStartTouchX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 122
    .local v0, adx:F
    iget v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mSlop:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_1

    .line 123
    iput-boolean v11, p0, Lcom/android/browser/UrlBarAutoShowManager;->mHasTriggered:Z

    .line 124
    float-to-double v7, v1

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v2, v7

    .line 125
    .local v2, angle:F
    iget v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mSlop:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_1

    sget v7, Lcom/android/browser/UrlBarAutoShowManager;->V_TRIGGER_ANGLE:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v7}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v7

    if-nez v7, :cond_1

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTriggeredTime:J

    .line 129
    iget-object v7, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v7}, Lcom/android/browser/BaseUi;->showTitleBar()V

    goto/16 :goto_0

    .line 136
    .end local v0           #adx:F
    .end local v1           #ady:F
    .end local v2           #angle:F
    .end local v3           #dy:F
    .end local v6           #web:Landroid/webkit/WebView;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/UrlBarAutoShowManager;->stopTracking()V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTarget(Lcom/android/browser/BrowserWebView;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    if-ne v0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setOnScrollChangedListener(Lcom/android/browser/BrowserWebView$OnScrollChangedListener;)V

    .line 63
    :cond_2
    iput-object p1, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    .line 64
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mTarget:Lcom/android/browser/BrowserWebView;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserWebView;->setOnScrollChangedListener(Lcom/android/browser/BrowserWebView$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mIsTracking:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mIsTracking:Z

    .line 91
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/browser/UrlBarAutoShowManager;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 95
    :cond_0
    return-void
.end method
