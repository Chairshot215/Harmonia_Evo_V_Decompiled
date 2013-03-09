.class public Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
.super Landroid/view/ViewGroup;
.source "NotificationRowLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static final APPEAR_ANIM_LEN:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DISAPPEAR_ANIM_LEN:I = 0xfa

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationRowLayout"


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field mNumRows:I

.field mRemoveViews:Z

.field mRowHeight:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mTmpRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    sget-object v3, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    int-to-float v2, v3

    new-instance v3, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v3, v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    return-void
.end method

.method static synthetic access$001(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object v1, p1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v2, :cond_0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$2;-><init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3

    const v1, 0x7f0e00ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dismissRowAnimated(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->dismissRowAnimated(Landroid/view/View;I)V

    return-void
.end method

.method public dismissRowAnimated(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p1
.end method

.method public getForcedHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3

    const v1, 0x7f0e00ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int v6, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f80

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    :cond_1
    :goto_2
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-lez v8, :cond_2

    const/high16 v4, 0x3f80

    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v5, v8

    const/4 v8, 0x0

    add-int v9, v7, v5

    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v7, v5

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v9, 0x3f80

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    sub-float v4, v9, v8

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    const/16 v10, 0x8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    if-eq v6, v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    mul-int v3, v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mNumRows:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->isShown()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "forcedHeight"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_2
    move v2, p1

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRowHeight:I

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setForcedHeight(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getDefaultSize(II)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getForcedHeight()I

    move-result v8

    invoke-static {v8, p2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v3, v2

    const-wide v5, 0x3fb999999999999aL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    const-string v3, "alpha"

    new-array v4, v8, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object v1, p1

    new-instance v3, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout$3;-><init>(Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    goto :goto_0

    :cond_2
    cmpl-float v3, v2, v7

    if-lez v3, :cond_3

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public setAnimateBounds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    return-void
.end method

.method public setForcedHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setViewRemoval(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    return-void
.end method
