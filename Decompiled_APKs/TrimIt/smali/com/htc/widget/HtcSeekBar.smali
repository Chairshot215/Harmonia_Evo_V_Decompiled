.class public Lcom/htc/widget/HtcSeekBar;
.super Landroid/widget/SeekBar;
.source "HtcSeekBar.java"


# static fields
.field public static final DISPLAY_MODE_DEFAULT:I = 0x0

.field public static final DISPLAY_MODE_THICK:I = 0x1

.field public static final DISPLAY_MODE_THIN:I = 0x2


# instance fields
.field mDisplayMode:I

.field mMinDrawableHeight:I

.field mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field mNormalThumb:Landroid/graphics/drawable/Drawable;

.field mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field mPressedThumb:Landroid/graphics/drawable/Drawable;

.field mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/16 v2, 0xa

    iput v2, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 48
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 52
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 53
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 56
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 57
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 58
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 59
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 60
    iput-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 62
    iput v5, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 103
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    sget-object v2, Lcom/htc/R$styleable;->HtcSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 115
    .local v1, nDisplayMode:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    const-string v3, "common_progress_indicator"

    const v4, 0x2080af2

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    const-string v3, "common_music_progress_button"

    const v4, 0x2080066

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "htcprogress_thin"

    const v4, 0x2080b0e

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    const-string v3, "htcprogress_thick"

    const v4, 0x2080b0d

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v5, v5}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSeekBar;->setDisplayMode(I)V

    .line 133
    new-instance v2, Lcom/htc/widget/HtcSeekBar$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcSeekBar$1;-><init>(Lcom/htc/widget/HtcSeekBar;)V

    iput-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 191
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 192
    return-void
.end method

.method private declared-synchronized doForceRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMax()I

    move-result v5

    if-lez v5, :cond_1

    int-to-float v5, p2

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 296
    .local v4, scale:F
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 298
    const/4 v3, 0x0

    .line 300
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 301
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 304
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 305
    .local v2, level:I
    if-eqz v3, :cond_2

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v2           #level:I
    :goto_2
    monitor-exit p0

    return-void

    .line 295
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_2
    move-object v3, v1

    .line 305
    goto :goto_1

    .line 307
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 295
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getSkinDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "defDrawable"
    .parameter "skinResName"
    .parameter "defSkinResId"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 197
    .local v1, nSkinResId:I
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 203
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "bitmapway"
    .parameter "ninepatchway"
    .parameter "reference"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 313
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_1

    .line 328
    :goto_1
    return-void

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v0, p2

    .line 312
    goto :goto_0

    .line 316
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 317
    .local v1, nDH:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getHeight()I

    move-result v2

    .line 319
    .local v2, nVH:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 320
    .local v3, r:Landroid/graphics/Rect;
    if-lez v1, :cond_3

    .line 321
    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 322
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 327
    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 316
    .end local v1           #nDH:I
    .end local v2           #nVH:I
    .end local v3           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_2

    .line 324
    .restart local v1       #nDH:I
    .restart local v2       #nVH:I
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_3
    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 325
    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 365
    if-nez p1, :cond_1

    .line 382
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 369
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 370
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 371
    .local v0, nDrawableHeight:I
    iget v1, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_2

    .line 372
    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    .line 376
    .end local v0           #nDrawableHeight:I
    :cond_2
    instance-of v1, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_0

    .line 377
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 378
    .restart local v0       #nDrawableHeight:I
    iget v1, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    if-ge v1, v0, :cond_0

    .line 379
    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mMinDrawableHeight:I

    goto :goto_0
.end method


# virtual methods
.method public HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;
    .locals 20
    .parameter "bThick"
    .parameter "drawable"
    .parameter "clip"
    .parameter "nID"

    .prologue
    .line 208
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v6, p2

    .line 209
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 210
    .local v6, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    .line 211
    .local v5, N:I
    new-array v14, v5, [Landroid/graphics/drawable/Drawable;

    .line 213
    .local v14, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_2

    .line 214
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v9

    .line 215
    .local v9, id:I
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const v17, 0x102000d

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    const v17, 0x102000f

    move/from16 v0, v17

    if-ne v9, v0, :cond_1

    :cond_0
    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    aput-object v17, v14, v8

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 215
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 219
    .end local v9           #id:I
    :cond_2
    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v11, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 221
    .local v11, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    .line 222
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v8, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 227
    .end local v5           #N:I
    .end local v6           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v8           #i:I
    .end local v11           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v14           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v10, p2

    .line 228
    check-cast v10, Landroid/graphics/drawable/StateListDrawable;

    .line 229
    .local v10, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 230
    .local v13, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v12

    .line 231
    .local v12, numStates:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    if-ge v8, v12, :cond_4

    .line 232
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v17

    invoke-virtual {v10, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcSeekBar;->HtcTileify(ZLandroid/graphics/drawable/Drawable;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 231
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move-object v11, v13

    .line 284
    .end local v8           #i:I
    .end local v10           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v12           #numStates:I
    .end local v13           #out:Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    :goto_4
    return-object v11

    .line 236
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v17, p2

    .line 237
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 239
    .local v16, tileBitmap:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v17, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 241
    .local v15, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v17, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 243
    .local v7, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v15}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 244
    sparse-switch p4, :sswitch_data_0

    .line 276
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    if-eqz p3, :cond_7

    new-instance v17, Landroid/graphics/drawable/ClipDrawable;

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v15, v17

    .end local v15           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_7
    move-object v11, v15

    goto :goto_4

    .line 246
    .restart local v15       #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :sswitch_0
    if-eqz p1, :cond_8

    move-object/from16 v17, p2

    .line 247
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 248
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_8
    move-object/from16 v17, p2

    .line 250
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 251
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 255
    :sswitch_1
    if-eqz p1, :cond_9

    move-object/from16 v17, p2

    .line 256
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 257
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_9
    move-object/from16 v17, p2

    .line 259
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 260
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 264
    :sswitch_2
    if-eqz p1, :cond_a

    move-object/from16 v17, p2

    .line 265
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 266
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    :cond_a
    move-object/from16 v17, p2

    .line 268
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 269
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_5

    .line 282
    .end local v7           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v15           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    .end local v16           #tileBitmap:Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcSeekBar;->setMinHeightByDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v11, p2

    .line 284
    goto/16 :goto_4

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020000 -> :sswitch_0
        0x102000d -> :sswitch_1
        0x102000f -> :sswitch_2
    .end sparse-switch
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    return v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 409
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 413
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMeasuredWidth()I

    move-result v1

    .line 414
    .local v1, dw:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 416
    .local v0, dh:I
    and-int/lit8 v4, v0, 0x1

    if-ne v5, v4, :cond_0

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 421
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 422
    .local v2, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 423
    .local v3, specSize:I
    and-int/lit8 v4, v3, 0x1

    if-ne v5, v4, :cond_1

    .line 424
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 427
    :cond_1
    invoke-static {v1, p1}, Lcom/htc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v0, p2}, Lcom/htc/widget/HtcSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 409
    .end local v0           #dh:I
    .end local v1           #dw:I
    .end local v2           #specMode:I
    .end local v3           #specSize:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const v6, 0x102000f

    const v5, 0x102000d

    const/high16 v4, 0x102

    const/4 v3, 0x0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 338
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 345
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 347
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 350
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThinShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThinProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 353
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    .line 354
    iget-object v1, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 355
    .restart local v1       #ld:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 356
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeBGDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 357
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeSecondaryDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickSecondaryDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 360
    iget-object v2, p0, Lcom/htc/widget/HtcSeekBar;->mThickShapeProgressDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Lcom/htc/widget/HtcSeekBar;->mThickProgressDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2, v0, v3}, Lcom/htc/widget/HtcSeekBar;->modifyBoundary(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 362
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 436
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iput p1, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 439
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mPressedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 443
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iput p1, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 445
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcSeekBar;->mDisplayMode:I

    .line 451
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mNormalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/widget/HtcSeekBar;->mSwitchLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBar;->mUserLisntener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 75
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    const v0, 0x102000d

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 393
    const v0, 0x102000f

    invoke-virtual {p0}, Lcom/htc/widget/HtcSeekBar;->getSecondaryProgress()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcSeekBar;->doForceRefreshProgress(IIZ)V

    .line 394
    return-void
.end method
