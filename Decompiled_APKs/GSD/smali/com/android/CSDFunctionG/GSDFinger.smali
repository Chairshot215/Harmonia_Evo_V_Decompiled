.class public Lcom/android/CSDFunctionG/GSDFinger;
.super Ljava/lang/Object;
.source "GSDFinger.java"


# instance fields
.field public lastX:F

.field public lastY:F

.field public mCurX:I

.field public mCurY:I

.field public mXpaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mYpaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field math:Ljava/lang/Math;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    .line 14
    iput v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    .line 15
    iput v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    .line 16
    iput v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastX:F

    iput v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastY:F

    .line 21
    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    return-void
.end method

.method public drawCrossLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 8
    .parameter "canvas"
    .parameter "mTargetPaint"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v1, 0x0

    .line 62
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    int-to-float v2, v0

    int-to-float v3, p3

    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    int-to-float v5, v0

    int-to-float v6, p4

    move-object v2, p1

    move v4, v1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    return-void
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 9
    .parameter "canvas"
    .parameter "mTargetPaint"
    .parameter "mPaint"

    .prologue
    const/high16 v8, -0x4080

    .line 42
    iget-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 44
    .local v6, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 45
    iget-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 46
    .local v3, x:F
    iget-object v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 48
    .local v4, y:F
    if-lez v7, :cond_1

    .line 49
    cmpl-float v0, v3, v8

    if-eqz v0, :cond_0

    cmpl-float v0, v4, v8

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastX:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastY:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    .line 53
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastX:F

    iget v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastY:F

    invoke-virtual {p1, v0, v1, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 56
    :cond_1
    iput v3, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastX:F

    .line 57
    iput v4, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastY:F

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 52
    :cond_2
    iget v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastX:F

    iget v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->lastY:F

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 59
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_3
    return-void
.end method

.method public drawPositionCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 3
    .parameter "canvas"
    .parameter "mPaint"
    .parameter "pressureLevel"
    .parameter "circleRadius"

    .prologue
    .line 67
    const/16 v0, 0xff

    const/16 v1, 0x80

    rsub-int v2, p3, 0xff

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 68
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    int-to-float v1, v1

    int-to-float v2, p4

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    return-void
.end method

.method public getCurrentPoint(I)I
    .locals 1
    .parameter "coordinate"

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    goto :goto_0

    .line 77
    :pswitch_1
    iget v0, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readPath(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 30
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    .line 39
    return-void
.end method

.method public readPoint(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 89
    const/high16 v0, -0x4080

    .local v0, x:F
    const/high16 v1, -0x4080

    .line 90
    .local v1, y:F
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mXpaths:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mYpaths:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public setCurrentPoint(II)V
    .locals 0
    .parameter "curX"
    .parameter "curY"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurX:I

    .line 85
    iput p2, p0, Lcom/android/CSDFunctionG/GSDFinger;->mCurY:I

    .line 86
    return-void
.end method
