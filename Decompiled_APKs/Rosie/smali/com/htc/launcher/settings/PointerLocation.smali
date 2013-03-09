.class public Lcom/htc/launcher/settings/PointerLocation;
.super Ljava/lang/Object;
.source "PointerLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/settings/PointerLocation$PointerState;
    }
.end annotation


# instance fields
.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mHeight:I

.field private mMaxNumPointers:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/settings/PointerLocation$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation;->mWidth:I

    .line 23
    iput p2, p0, Lcom/htc/launcher/settings/PointerLocation;->mHeight:I

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 29
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mTargetPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mTargetPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPathPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v3, v4, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 37
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    new-instance v0, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    invoke-direct {v0}, Lcom/htc/launcher/settings/PointerLocation$PointerState;-><init>()V

    .line 42
    .local v0, ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v0, v1}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$002(Lcom/htc/launcher/settings/PointerLocation$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 43
    iget-object v1, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method


# virtual methods
.method public DrawPointerLocation(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 51
    .local v13, NP:I
    const/16 v17, 0x0

    .local v17, p:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_1

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 54
    .local v19, ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mCurDown:Z

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$100(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const/4 v2, 0x0

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$200(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/settings/PointerLocation;->getWidth()I

    move-result v1

    int-to-float v4, v1

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$200(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/settings/PointerLocation;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$300(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$300(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/settings/PointerLocation;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/settings/PointerLocation;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurPressure:F
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$400(Lcom/htc/launcher/settings/PointerLocation$PointerState;)F

    move-result v1

    const/high16 v6, 0x437f

    mul-float/2addr v1, v6

    float-to-int v0, v1

    move/from16 v18, v0

    .line 58
    .local v18, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0x80

    move/from16 v0, v18

    rsub-int v8, v0, 0xff

    move/from16 v0, v18

    invoke-virtual {v1, v6, v0, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 59
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$300(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v1, v1

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$200(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 60
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$300(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v1

    int-to-float v1, v1

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$200(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v6

    int-to-float v6, v6

    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurWidth:I
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$500(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51
    .end local v18           #pressureLevel:I
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 64
    .end local v19           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_1
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 67
    .restart local v19       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 68
    .local v12, N:I
    const/4 v2, 0x0

    .local v2, lastX:F
    const/4 v3, 0x0

    .line 69
    .local v3, lastY:F
    const/4 v15, 0x0

    .line 70
    .local v15, haveLast:Z
    const/4 v14, 0x0

    .line 71
    .local v14, drawn:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 72
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v12, :cond_4

    .line 73
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 74
    .local v4, x:F
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 75
    .local v5, y:F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v15, 0x0

    .line 72
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 79
    :cond_2
    if-eqz v15, :cond_3

    .line 80
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/launcher/settings/PointerLocation;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 82
    const/4 v14, 0x1

    .line 84
    :cond_3
    move v2, v4

    .line 85
    move v3, v5

    .line 86
    const/4 v15, 0x1

    goto :goto_3

    .line 89
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_4
    if-eqz v14, :cond_5

    .line 90
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0x40

    const/16 v9, 0x80

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 92
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v6, 0x4180

    mul-float v20, v1, v6

    .line 93
    .local v20, xVel:F
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v6, 0x4180

    mul-float v21, v1, v6

    .line 94
    .local v21, yVel:F
    add-float v9, v2, v20

    add-float v10, v3, v21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v2

    move v8, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static/range {v19 .. v19}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    const/high16 v6, 0x447a

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    .end local v20           #xVel:F
    .end local v21           #yVel:F
    :cond_5
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/settings/PointerLocation;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 102
    .end local v2           #lastX:F
    .end local v3           #lastY:F
    .end local v12           #N:I
    .end local v14           #drawn:Z
    .end local v15           #haveLast:Z
    .end local v16           #i:I
    .end local v19           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_7
    return-void
.end method

.method public PointerLocationTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 114
    .local v3, action:I
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 115
    .local v2, NP:I
    if-nez v3, :cond_1

    .line 116
    const/4 v7, 0x0

    .local v7, p:I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 117
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 118
    .local v8, ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 119
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 120
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$002(Lcom/htc/launcher/settings/PointerLocation$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 121
    const/4 v9, 0x0

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_0
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    const/4 v10, 0x1

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v9, v10}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z

    .line 124
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mMaxNumPointers:I

    .line 127
    .end local v7           #p:I
    :cond_1
    and-int/lit16 v9, v3, 0xff

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    .line 128
    const v9, 0xff00

    and-int/2addr v9, v3

    shr-int/lit8 v5, v9, 0x8

    .line 130
    .local v5, id:I
    :goto_1
    if-gt v2, v5, :cond_2

    .line 131
    new-instance v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    invoke-direct {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;-><init>()V

    .line 132
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$002(Lcom/htc/launcher/settings/PointerLocation$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 133
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_1

    .line 136
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_2
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 137
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$002(Lcom/htc/launcher/settings/PointerLocation$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 138
    const/4 v9, 0x1

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z

    .line 141
    .end local v5           #id:I
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 143
    .local v1, NI:I
    const/4 v9, 0x1

    if-eq v3, v9, :cond_5

    const/4 v9, 0x3

    if-eq v3, v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mCurDown:Z

    .line 145
    iget-boolean v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mCurDown:Z

    if-eqz v9, :cond_6

    move v9, v1

    :goto_3
    iput v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mCurNumPointers:I

    .line 146
    iget v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mMaxNumPointers:I

    iget v10, p0, Lcom/htc/launcher/settings/PointerLocation;->mCurNumPointers:I

    if-ge v9, v10, :cond_4

    .line 147
    iget v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mCurNumPointers:I

    iput v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mMaxNumPointers:I

    .line 150
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v1, :cond_8

    .line 151
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 152
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 155
    .local v0, N:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_5
    if-ge v6, v0, :cond_7

    .line 156
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 143
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 145
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 159
    .restart local v0       #N:I
    .restart local v4       #i:I
    .restart local v6       #j:I
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_7
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$302(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I

    .line 162
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$202(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I

    .line 163
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurPressure:F
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$402(Lcom/htc/launcher/settings/PointerLocation$PointerState;F)F

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurSize:F
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$802(Lcom/htc/launcher/settings/PointerLocation$PointerState;F)F

    .line 165
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurSize:F
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$800(Lcom/htc/launcher/settings/PointerLocation$PointerState;)F

    move-result v9

    invoke-virtual {p0}, Lcom/htc/launcher/settings/PointerLocation;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurWidth:I
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$502(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 168
    .end local v0           #N:I
    .end local v6           #j:I
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_8
    and-int/lit16 v9, v3, 0xff

    const/4 v10, 0x6

    if-ne v9, v10, :cond_9

    .line 169
    const v9, 0xff00

    and-int/2addr v9, v3

    shr-int/lit8 v5, v9, 0x8

    .line 171
    .restart local v5       #id:I
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 172
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    const/high16 v10, 0x7fc0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;

    move-result-object v9

    const/high16 v10, 0x7fc0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v9, 0x0

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z

    .line 177
    .end local v5           #id:I
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_9
    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    .line 178
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_b

    .line 179
    iget-object v9, p0, Lcom/htc/launcher/settings/PointerLocation;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/launcher/settings/PointerLocation$PointerState;

    .line 180
    .restart local v8       #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    #getter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v8}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$100(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 181
    const/4 v9, 0x0

    #setter for: Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z
    invoke-static {v8, v9}, Lcom/htc/launcher/settings/PointerLocation$PointerState;->access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z

    .line 178
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 186
    .end local v8           #ps:Lcom/htc/launcher/settings/PointerLocation$PointerState;
    :cond_b
    const/4 v9, 0x1

    return v9
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation;->mWidth:I

    return v0
.end method
