.class public Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;
.super Landroid/view/ViewGroup;
.source "GeneralFrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundGravity:I

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field protected mMeasureAllChildren:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mMeasureAllChildren:Z

    .line 54
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    .line 55
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    .line 56
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    .line 57
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 61
    const/16 v0, 0x77

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mMeasureAllChildren:Z

    .line 54
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    .line 55
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    .line 56
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    .line 57
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 61
    const/16 v2, 0x77

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    .line 74
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->setMeasureAllChildren(Z)V

    .line 86
    :cond_1
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 379
    instance-of v0, p1, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 329
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 128
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2
    .parameter "region"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 340
    .local v0, opaque:Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 343
    :cond_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->generateDefaultLayoutParams()Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 140
    new-instance v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 384
    new-instance v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 371
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getChildCount()I

    move-result v5

    .line 243
    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    move/from16 v18, v0

    add-int v12, v17, v18

    .line 244
    .local v12, parentLeft:I
    sub-int v17, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 246
    .local v13, parentRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 247
    .local v14, parentTop:I
    sub-int v17, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 249
    .local v11, parentBottom:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 250
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 252
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;

    .line 254
    .local v10, lp:Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 255
    .local v16, width:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 257
    .local v7, height:I
    move v3, v12

    .line 258
    .local v3, childLeft:I
    move v4, v14

    .line 260
    .local v4, childTop:I
    iget v6, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 262
    .local v6, gravity:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_0

    .line 263
    and-int/lit8 v8, v6, 0x7

    .line 264
    .local v8, horizontalGravity:I
    and-int/lit8 v15, v6, 0x70

    .line 266
    .local v15, verticalGravity:I
    packed-switch v8, :pswitch_data_0

    .line 278
    :pswitch_0
    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v3, v12, v17

    .line 281
    :goto_1
    sparse-switch v15, :sswitch_data_0

    .line 293
    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v4, v14, v17

    .line 297
    .end local v8           #horizontalGravity:I
    .end local v15           #verticalGravity:I
    :cond_0
    :goto_2
    add-int v17, v3, v16

    add-int v18, v4, v7

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 249
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v6           #gravity:I
    .end local v7           #height:I
    .end local v10           #lp:Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    .end local v16           #width:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 268
    .restart local v3       #childLeft:I
    .restart local v4       #childTop:I
    .restart local v6       #gravity:I
    .restart local v7       #height:I
    .restart local v8       #horizontalGravity:I
    .restart local v10       #lp:Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    .restart local v15       #verticalGravity:I
    .restart local v16       #width:I
    :pswitch_1
    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v3, v12, v17

    .line 269
    goto :goto_1

    .line 271
    :pswitch_2
    sub-int v17, v13, v12

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    add-int v3, v12, v17

    .line 273
    goto :goto_1

    .line 275
    :pswitch_3
    sub-int v17, v13, v16

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 276
    goto :goto_1

    .line 283
    :sswitch_0
    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v4, v14, v17

    .line 284
    goto :goto_2

    .line 286
    :sswitch_1
    sub-int v17, v11, v14

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v17, v17, v7

    div-int/lit8 v17, v17, 0x2

    add-int v4, v14, v17

    .line 288
    goto :goto_2

    .line 290
    :sswitch_2
    sub-int v17, v11, v7

    iget v0, v10, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 291
    goto :goto_2

    .line 300
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v4           #childTop:I
    .end local v6           #gravity:I
    .end local v7           #height:I
    .end local v8           #horizontalGravity:I
    .end local v10           #lp:Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
    .end local v15           #verticalGravity:I
    .end local v16           #width:I
    :cond_2
    return-void

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getChildCount()I

    move-result v6

    .line 204
    .local v6, count:I
    const/4 v9, 0x0

    .line 205
    .local v9, maxHeight:I
    const/4 v10, 0x0

    .line 208
    .local v10, maxWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 209
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, child:Landroid/view/View;
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    :cond_0
    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 208
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 218
    .end local v1           #child:Landroid/view/View;
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v10, v0

    .line 219
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingTop:I

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v9, v0

    .line 222
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 227
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 228
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 229
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 232
    :cond_3
    invoke-static {v10, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->resolveSize(II)I

    move-result v0

    invoke-static {v9, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->setMeasuredDimension(II)V

    .line 234
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 309
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 310
    .local v0, foreground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 311
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 312
    .local v2, selfBounds:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 314
    .local v1, overlayBounds:Landroid/graphics/Rect;
    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 315
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v4, v5, v2, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 320
    .end local v1           #overlayBounds:Landroid/graphics/Rect;
    .end local v2           #selfBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 157
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 161
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    .line 162
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    .line 163
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    .line 164
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    .line 166
    if-eqz p1, :cond_4

    .line 167
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->setWillNotDraw(Z)V

    .line 168
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 172
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingLeft:I

    .line 175
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingTop:I

    .line 176
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingRight:I

    .line 177
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundPaddingBottom:I

    .line 182
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->requestLayout()V

    .line 183
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->invalidate()V

    .line 185
    :cond_3
    return-void

    .line 180
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 1
    .parameter "foregroundGravity"

    .prologue
    .line 100
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    if-eq v0, p1, :cond_2

    .line 101
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 102
    or-int/lit8 p1, p1, 0x3

    .line 105
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 106
    or-int/lit8 p1, p1, 0x30

    .line 109
    :cond_1
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForegroundGravity:I

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->requestLayout()V

    .line 112
    :cond_2
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .parameter "measureAll"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mMeasureAllChildren:Z

    .line 356
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
