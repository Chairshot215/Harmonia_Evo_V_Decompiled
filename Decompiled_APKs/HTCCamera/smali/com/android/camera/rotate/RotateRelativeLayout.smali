.class public Lcom/android/camera/rotate/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateRelativeLayout"


# instance fields
.field private invMatrix:Landroid/graphics/Matrix;

.field private mCurrentOrientation:I

.field private mTempOrientation:I

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    iput v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v2, v0, v5

    aput v3, v0, v6

    iget-object v4, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v0, v5

    aget v5, v0, v6

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v6

    rem-int/lit8 v0, v6, 0x2

    if-lez v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->rotateMeasureMent()V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen_Inverse(I)I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setMeasuredDimension(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4334

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x4387

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateRelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method public setOrientationDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/rotate/RotateRelativeLayout;->mTempOrientation:I

    return-void
.end method
