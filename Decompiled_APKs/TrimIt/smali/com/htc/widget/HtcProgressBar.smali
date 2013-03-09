.class public Lcom/htc/widget/HtcProgressBar;
.super Landroid/widget/ProgressBar;
.source "HtcProgressBar.java"


# instance fields
.field mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const v0, 0x1010078

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 25
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 26
    iput-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 42
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "htcprogress_horizontal"

    const v5, 0x2080b0c

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, nProgressResId:I
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, v0, v6, v6}, Lcom/htc/widget/HtcProgressBar;->HtcTileify(Landroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 50
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getProgress()I

    move-result v2

    .line 56
    .local v2, nTmp:I
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getSecondaryProgress()I

    move-result v2

    .line 60
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 62
    return-void
.end method

.method private HtcTileify(Landroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;
    .locals 19
    .parameter "drawable"
    .parameter "clip"
    .parameter "nID"

    .prologue
    .line 67
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v5, p1

    .line 68
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 69
    .local v5, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    .line 70
    .local v4, N:I
    new-array v13, v4, [Landroid/graphics/drawable/Drawable;

    .line 72
    .local v13, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 73
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    .line 74
    .local v8, id:I
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const v16, 0x102000d

    move/from16 v0, v16

    if-eq v8, v0, :cond_0

    const v16, 0x102000f

    move/from16 v0, v16

    if-ne v8, v0, :cond_1

    :cond_0
    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v8}, Lcom/htc/widget/HtcProgressBar;->HtcTileify(Landroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    aput-object v16, v13, v7

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 78
    .end local v8           #id:I
    :cond_2
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v10, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 80
    .local v10, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_5

    .line 81
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v7, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    .end local v4           #N:I
    .end local v5           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v7           #i:I
    .end local v10           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v13           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v9, p1

    .line 87
    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    .line 88
    .local v9, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 89
    .local v12, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v11

    .line 90
    .local v11, numStates:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v11, :cond_4

    .line 91
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v16

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcProgressBar;->HtcTileify(Landroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v10, v12

    .line 124
    .end local v7           #i:I
    .end local v9           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v11           #numStates:I
    .end local v12           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_5
    :goto_4
    return-object v10

    .line 95
    .restart local p1
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v16, p1

    .line 96
    check-cast v16, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 98
    .local v15, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v16, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 100
    .local v14, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v15, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 102
    .local v6, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    sparse-switch p3, :sswitch_data_0

    .line 120
    .end local p1
    :goto_5
    if-eqz p2, :cond_7

    new-instance v16, Landroid/graphics/drawable/ClipDrawable;

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v14, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v14, v16

    .end local v14           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_7
    move-object v10, v14

    goto :goto_4

    .line 105
    .restart local v14       #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .restart local p1
    :sswitch_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 106
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/widget/HtcProgressBar;->mShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 109
    .restart local p1
    :sswitch_1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcProgressBar;->mProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/widget/HtcProgressBar;->mShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 113
    .restart local p1
    :sswitch_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/widget/HtcProgressBar;->mShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .end local v6           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v14           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v15           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_8
    move-object/from16 v10, p1

    .line 124
    goto :goto_4

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020000 -> :sswitch_0
        0x102000d -> :sswitch_1
        0x102000f -> :sswitch_2
    .end sparse-switch
.end method

.method private modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "bitmapway"
    .parameter "ninepatchway"
    .parameter "reference"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 129
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_1

    .line 144
    :goto_1
    return-void

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, p2

    .line 128
    goto :goto_0

    .line 132
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 133
    .local v1, nDH:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getHeight()I

    move-result v2

    .line 135
    .local v2, nVH:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 136
    .local v3, r:Landroid/graphics/Rect;
    if-lez v1, :cond_3

    .line 137
    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 138
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 143
    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 132
    .end local v1           #nDH:I
    .end local v2           #nVH:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_2

    .line 140
    .restart local v1       #nDH:I
    .restart local v2       #nVH:I
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_3
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 141
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/widget/HtcProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    .local v0, d:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 160
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 162
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    const/high16 v2, 0x102

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/htc/widget/HtcProgressBar;->mShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcProgressBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    const v2, 0x102000f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/htc/widget/HtcProgressBar;->mShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcProgressBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 166
    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/htc/widget/HtcProgressBar;->mShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcProgressBar;->mProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcProgressBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
