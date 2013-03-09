.class public final Lcom/htc/widget/HtcToggleButton;
.super Landroid/widget/FrameLayout;
.source "HtcToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcToggleButton$1;,
        Lcom/htc/widget/HtcToggleButton$SavedState;,
        Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DOWN_DURATION:I = 0x64

.field private static final DURATION:I = 0x64

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.9f

.field private static final UP_DURATION:I = 0x14


# instance fields
.field private mBroadcasting:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mChecked:Z

.field private mCheckedCenterX:I

.field private mColor:I

.field private mDownAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mIsDown:Z

.field private mIsMove:Z

.field private mOffAnimator:Landroid/animation/ObjectAnimator;

.field private mOffAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnAnimator:Landroid/animation/ObjectAnimator;

.field private mOnAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

.field private mOuterCenterX:I

.field private mOuterCenterY:I

.field private mOuterxOffset:I

.field private mOuteryOffset:I

.field private mPorterDuffColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTextOff:Landroid/widget/TextView;

.field private mTextOn:Landroid/widget/TextView;

.field private mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mToggleOuter:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mUnCheckedCenterX:I

.field private mUpAnimator:Landroid/animation/ObjectAnimator;

.field private mUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 44
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 48
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 44
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 48
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 44
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 47
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 48
    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcToggleButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    .line 94
    const v6, 0x2080b92

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcToggleButton;->setBackgroundResource(I)V

    .line 95
    const/4 v3, 0x1

    .line 96
    .local v3, clickable:Z
    if-eqz p2, :cond_1

    .line 97
    sget-object v6, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v6, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 99
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 100
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 101
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 102
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 100
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const/4 v3, 0x1

    goto :goto_1

    .line 107
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 113
    .end local v0           #N:I
    .end local v1           #a:Landroid/content/res/TypedArray;
    .end local v2           #attr:I
    .end local v4           #i:I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 115
    const v6, 0x20900ed

    invoke-static {p1, v6, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    const v6, 0x2020265

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    .line 117
    const v6, 0x2020264

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 119
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x2080b95

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    .line 121
    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    .line 122
    const-string v6, "toggle_on"

    const v7, 0x2080b94

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    const v6, 0x2080b93

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    .line 125
    iget-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    .line 132
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    .line 133
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    .line 134
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 135
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 136
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 137
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 138
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 139
    return-void

    .line 102
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method private setCenterX(I)V
    .locals 6
    .parameter "centerX"

    .prologue
    .line 332
    iput p1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 333
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->invalidate()V

    .line 336
    return-void
.end method

.method private setDown()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 340
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 341
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 342
    return-void
.end method

.method private setScale(F)V
    .locals 9
    .parameter "scale"

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setScaleX(F)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcToggleButton;->setScaleY(F)V

    .line 357
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v0, v4

    .line 358
    .local v0, outerx:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v1, v4

    .line 359
    .local v1, outery:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v2, v4

    .line 360
    .local v2, x:I
    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 361
    .local v3, y:I
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    add-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 362
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 363
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    return-void
.end method

.method private setToggleBounds()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 324
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    .line 328
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setCenterX(I)V

    .line 329
    return-void

    .line 326
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterX:I

    goto :goto_0
.end method

.method private setUp()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mIsDown:Z

    .line 346
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 347
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 348
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 255
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 421
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    .line 423
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 424
    iget-boolean v1, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->requestLayout()V

    .line 426
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 413
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/HtcToggleButton$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    .local v0, ss:Lcom/htc/widget/HtcToggleButton$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/widget/HtcToggleButton$SavedState;->checked:Z

    .line 416
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 272
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    .line 273
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    .line 274
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOuter:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iget v5, p0, Lcom/htc/widget/HtcToggleButton;->mOuteryOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    .line 276
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterX:I

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->mOuterxOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    .line 277
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mOuterCenterY:I

    iput v0, p0, Lcom/htc/widget/HtcToggleButton;->mCenterY:I

    .line 278
    const-string v0, "centerX"

    new-array v1, v8, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v6

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    .line 279
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 280
    const-string v0, "centerX"

    new-array v1, v8, [I

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mCheckedCenterX:I

    aput v2, v1, v6

    iget v2, p0, Lcom/htc/widget/HtcToggleButton;->mUnCheckedCenterX:I

    aput v2, v1, v7

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    .line 281
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    const-string v0, "scale"

    new-array v1, v8, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    .line 283
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mDownInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    const-string v0, "scale"

    new-array v1, v8, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/htc/widget/HtcToggleButton;->mUpInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 287
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 288
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 289
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 290
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 291
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 293
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mUpAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 294
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setToggleBounds()V

    .line 295
    return-void

    .line 282
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 284
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 299
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 301
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 302
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setDown()V

    .line 319
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 303
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 304
    :cond_2
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 307
    iget-boolean v3, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    if-nez v3, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 309
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 310
    .local v2, y:I
    iget v0, p0, Lcom/htc/widget/HtcToggleButton;->mTouchSlop:I

    .line 311
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_4

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    .line 313
    :cond_4
    iput-boolean v5, p0, Lcom/htc/widget/HtcToggleButton;->mIsMove:Z

    .line 314
    invoke-direct {p0}, Lcom/htc/widget/HtcToggleButton;->setUp()V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->toggle()V

    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 201
    iput-boolean p1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    .line 202
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 204
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    if-eqz v0, :cond_2

    .line 222
    :cond_0
    :goto_1
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 207
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOffAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    .line 216
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V

    .line 220
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mBroadcasting:Z

    goto :goto_1
.end method

.method public setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/widget/HtcToggleButton;->mOnCheckedChangeListener:Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;

    .line 236
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOff"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textOn"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/widget/HtcToggleButton;->mTextOn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/htc/widget/HtcToggleButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSkinResources(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 434
    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 437
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 439
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 440
    .local v2, skinPackage:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 442
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 443
    .local v3, themeres:Landroid/content/res/Resources;
    const-string v4, "toggle_on"

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 444
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->xOffset:I

    .line 445
    iget-object v4, p0, Lcom/htc/widget/HtcToggleButton;->mToggleOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/widget/HtcToggleButton;->yOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v3           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
