.class public Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
.super Ljava/lang/Object;
.source "RecentsScrollViewPerformanceHelper.java"


# static fields
.field public static final OPTIMIZE_SW_RENDERED_RECENTS:Z = true

.field public static final USE_DARK_FADE_IN_HW_ACCELERATED_MODE:Z = true


# instance fields
.field private mAttachedToWindow:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mContext:Landroid/content/Context;

.field private mFadingEdgeLength:I

.field private mFirstTime:Z

.field private mIsVertical:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    iput-object p3, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    move-object v0, p1

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_b

    if-gez p7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_1

    :cond_1
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, -0x3400

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_2

    add-int v2, p4, v19

    sub-int v3, p5, v19

    if-le v2, v3, :cond_2

    sub-int v2, p5, p4

    div-int/lit8 v19, v2, 0x2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_3

    add-int v2, p2, v19

    sub-int v3, p3, v19

    if-le v2, v3, :cond_3

    sub-int v2, p3, p2

    div-int/lit8 v19, v2, 0x2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v23

    mul-float v2, v23, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    const/16 v16, 0x1

    :goto_1
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v2, v9, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    const/4 v13, 0x1

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p10

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    mul-float v2, v18, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    const/4 v14, 0x1

    :goto_3
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    move/from16 v0, p11

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    mul-float v2, v22, v17

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    const/4 v15, 0x1

    :cond_5
    :goto_4
    if-eqz v16, :cond_6

    const/high16 v2, 0x3f80

    mul-float v3, v17, v23

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    add-int v2, p4, v19

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    if-eqz v13, :cond_7

    const/high16 v2, 0x3f80

    mul-float v3, v17, v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x4334

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    sub-int v2, p5, v19

    int-to-float v4, v2

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v14, :cond_8

    const/high16 v2, 0x3f80

    mul-float v3, v17, v18

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, -0x3d4c

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-int v2, p2, v19

    int-to-float v5, v2

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    if-eqz v15, :cond_9

    const/high16 v2, 0x3f80

    mul-float v3, v17, v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x42b4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sub-int v2, p3, v19

    int-to-float v3, v2

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v2, p7

    if-le v2, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, v4, p7

    invoke-virtual {v12, v2, v10, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_b
    if-gez p6, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    move/from16 v0, p6

    invoke-virtual {v12, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v2, v2, p6

    if-le v2, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, v3, p6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v12, v11, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_4
.end method

.method public getHorizontalFadingEdgeLengthCallback()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLengthCallback()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onLayoutCallback()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setLayoutTransitionCallback(Landroid/animation/LayoutTransition;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$2;-><init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_0
    return-void
.end method

.method public updateShowBackground()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mAttachedToWindow:Z

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v8

    if-nez v8, :cond_6

    if-le v1, v2, :cond_6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v8}, Lcom/android/systemui/recent/RecentsCallback;->isRecentsVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v6

    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    if-eq v3, v8, :cond_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mShowBackground:Z

    iput-boolean v7, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mFirstTime:Z

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    if-nez v3, :cond_7

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Lcom/android/systemui/recent/RecentsCallback;->handleShowBackground(Z)V

    const/4 v0, 0x0

    :goto_4
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_8

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v5}, Landroid/view/View;->buildDrawingCache()V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_6
    move v3, v7

    goto :goto_2

    :cond_7
    move v8, v7

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v5}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method
