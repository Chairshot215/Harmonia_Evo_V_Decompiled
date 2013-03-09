.class public abstract Lcom/htc/sunny/SPresentationLinearAdapter;
.super Lcom/htc/sunny/SPresentationAdapterBase;
.source "SPresentationLinearAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/sunny/SPresentationAdapterBase;-><init>()V

    return-void
.end method

.method public static interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 74
    cmpl-float v1, v0, p3

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v0

    :cond_0
    div-float v0, p2, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    goto :goto_0
.end method


# virtual methods
.method public updateLayoutAtTimeSlot(IIIILcom/htc/sunny/SPresentationContainerLayout;Z)V
    .locals 20
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 29
    const/4 v10, 0x0

    .local v10, nStartX:F
    const/4 v5, 0x0

    .line 30
    .local v5, nEndX:F
    const/4 v12, 0x0

    .local v12, nStartY:F
    const/4 v7, 0x0

    .line 31
    .local v7, nEndY:F
    const/4 v14, 0x0

    .local v14, nStartZ:F
    const/4 v9, 0x0

    .line 33
    .local v9, nEndZ:F
    const/4 v11, 0x0

    .local v11, nStartXF:F
    const/4 v6, 0x0

    .line 34
    .local v6, nEndXF:F
    const/4 v13, 0x0

    .local v13, nStartYF:F
    const/4 v8, 0x0

    .line 36
    .local v8, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 38
    .local v4, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationLinearAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    .line 39
    .local v3, currentLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationLinearAdapter;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v15

    .line 41
    .local v15, nextLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    if-eqz v15, :cond_0

    .line 43
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 44
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 45
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 46
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 47
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mX:F

    .line 48
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mY:F

    .line 49
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 52
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 53
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 54
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 55
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 56
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v6, v11

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v11, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mX:F

    .line 57
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mY:F

    .line 58
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 60
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 61
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 62
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 63
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 64
    iget-object v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 65
    iget-object v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 66
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mX:F

    .line 67
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mY:F

    .line 68
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny/Vector3F;->mZ:F

    .line 70
    int-to-float v0, v4

    move/from16 v16, v0

    iget v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    move/from16 v18, v0

    iget v0, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/htc/sunny/SPresentationLinearAdapter;->interpolateLinear(FFFF)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method
