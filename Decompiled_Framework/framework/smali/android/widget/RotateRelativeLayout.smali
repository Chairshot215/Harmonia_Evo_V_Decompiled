.class public Landroid/widget/RotateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateRelativeLayout.java"


# static fields
.field public static SCREEN_MODE_ILANDSCAPE:I

.field public static SCREEN_MODE_IPORTRAIT:I

.field public static SCREEN_MODE_LANDSCAPE:I

.field public static SCREEN_MODE_PORTRAIT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field public current_orientation_mode:I

.field private invMatrix:Landroid/graphics/Matrix;

.field private newRectF:Landroid/graphics/RectF;

.field private rotMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    const/4 v0, 0x3

    sput v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    sget v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "RotateRelativeLayout"

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    sget v0, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    iput v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

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

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

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

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_LANDSCAPE:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v1, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    int-to-float v0, v0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->newRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/widget/RotateRelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v6, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_PORTRAIT:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    sget v6, Landroid/widget/RotateRelativeLayout;->SCREEN_MODE_IPORTRAIT:I

    if-ne v0, v6, :cond_1

    :cond_0
    move v1, p1

    move v3, p2

    move v2, p3

    move v5, p4

    move v4, p5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->rotateMeasureMent()V

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RotateRelativeLayout;->setMeasuredDimension(II)V

    :cond_0
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/RotateRelativeLayout;->invMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Landroid/widget/RotateRelativeLayout;->rotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/widget/RotateRelativeLayout;->current_orientation_mode:I

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/RotateRelativeLayout;->invalidate()V

    goto :goto_0
.end method
