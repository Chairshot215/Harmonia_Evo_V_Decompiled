.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.KeyButtonView"


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field mCheckLongPress:Ljava/lang/Runnable;

.field mCode:I

.field mDownTime:J

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field mGlowScale:F

.field mRect:Landroid/graphics/RectF;

.field mSupportsLongpress:Z

.field mTouchSlop:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/high16 v6, 0x3f80

    const v5, 0x3f19999a

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x3fe66666

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->GLOW_MAX_SCALE_FACTOR:F

    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->BUTTON_QUIESCENT_ALPHA:F

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    iput v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iput v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x437f

    const/high16 v6, 0x3f00

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    int-to-float v5, v0

    mul-float/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13

    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->injectInputEventNoWait(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setDrawingAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 9

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const v5, 0x3f4ccccc

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    mul-float v4, v3, v5

    div-float/2addr v4, v7

    add-float v1, v4, v6

    mul-float v4, v0, v5

    div-float/2addr v4, v7

    add-float v2, v4, v6

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v4}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 9

    const v4, 0x3fe66666

    const/high16 v8, 0x3f80

    const v7, 0x3f19999a

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_1

    iput v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    aput v8, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void

    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v8, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "drawingAlpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
