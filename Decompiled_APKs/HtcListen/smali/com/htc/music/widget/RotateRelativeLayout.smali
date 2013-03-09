.class public Lcom/htc/music/widget/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[RotateRelativeLayout]"


# instance fields
.field protected mInvMatrix:Landroid/graphics/Matrix;

.field protected mNewRectF:Landroid/graphics/RectF;

.field public mOrientationMode:I

.field protected mRotateMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->init()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method public getOrientationMode()I
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    return v0
.end method

.method protected init()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mNewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/htc/music/widget/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->rotateMeasureMent()V

    return-void

    :cond_1
    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/RotateRelativeLayout;->setMeasuredDimension(II)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/music/widget/RotateRelativeLayout;->mOrientationMode:I

    invoke-virtual {p0}, Lcom/htc/music/widget/RotateRelativeLayout;->requestLayout()V

    goto :goto_0
.end method
