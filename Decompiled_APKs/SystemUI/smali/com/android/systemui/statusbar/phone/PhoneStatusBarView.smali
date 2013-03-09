.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "PhoneStatusBarView.java"


# static fields
.field static final DIM_ANIM_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarView"


# instance fields
.field mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

.field mButtonBounds:Landroid/graphics/Rect;

.field mCapturingEvents:Z

.field public mContext:Landroid/content/Context;

.field mDate:Landroid/view/View;

.field mEndAlpha:I

.field mEndTime:J

.field public mHandler:Landroid/os/Handler;

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartAlpha:I

.field mStartX:I

.field mStartY:I

.field mStatusIcons:Landroid/view/ViewGroup;

.field mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$201(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-eq p1, p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a child of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    :cond_1
    return-void
.end method

.method getCurAlpha()I
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBarViewAttached()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x80

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    if-ge v3, v2, :cond_2

    move v1, v3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p4

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateResources()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transparency"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const v3, 0x7f020221

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "statusbar_background"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public updateStatusBarBg()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_statusbar_transparency"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const v3, 0x7f020221

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v2, "statusbar_background"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xff

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
