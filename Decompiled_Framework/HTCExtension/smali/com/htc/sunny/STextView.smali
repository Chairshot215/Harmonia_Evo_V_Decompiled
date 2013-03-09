.class public Lcom/htc/sunny/STextView;
.super Lcom/htc/sunny/SView;
.source "STextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/STextView$CoordinatesAnimation;,
        Lcom/htc/sunny/STextView$TextAlign;
    }
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0


# instance fields
.field private mBKWrapContentH:Z

.field private mBKWrapContentW:Z

.field private mBitmapH:I

.field private mBitmapId:I

.field private mBitmapW:I

.field private mCanMarquee:Z

.field private mCoordRect:Landroid/graphics/RectF;

.field private mDisplayH:I

.field private mDisplayW:I

.field private mEnableTextBitmapCache:Z

.field private mEnabledMarquee:Z

.field protected mFocusChangeNeedRegenText:Z

.field private mGap:I

.field private mGenerateText:Z

.field private mGravity:I

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLineLength:I

.field private mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

.field private mMarqueeFinished:Z

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRestratMarquee:Z

.field private mSpriteId:I

.field private mTextBitmap:Landroid/graphics/Bitmap;

.field private mTextView:Landroid/widget/TextView;

.field private mTextureId:I

.field private mTruncateAt:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6

    const/4 v5, -0x2

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mBitmapId:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mBitmapH:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mBitmapW:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iput v1, p0, Lcom/htc/sunny/STextView;->mGap:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mMarqueeFinished:Z

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mRestratMarquee:Z

    iput-object v2, p0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-direct {v0, p0}, Lcom/htc/sunny/STextView$CoordinatesAnimation;-><init>(Lcom/htc/sunny/STextView;)V

    iput-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iput-object v2, p0, Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mEnabledMarquee:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/STextView;->mBKWrapContentW:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/STextView;->mBKWrapContentH:Z

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mEnableTextBitmapCache:Z

    const/16 v0, 0x33

    iput v0, p0, Lcom/htc/sunny/STextView;->mGravity:I

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mFocusChangeNeedRegenText:Z

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->init()V

    return-void
.end method

.method private UpdateMarqueeText()V
    .locals 12

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny/STextView;->mBitmapW:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v1, v1, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iget-object v4, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v4, v4, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    iget v4, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v6, v0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentL:F

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v7, v0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentT:F

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v8, v0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentR:F

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget v9, v0, Lcom/htc/sunny/STextView$CoordinatesAnimation;->mCurrentB:F

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny/SunnyEngine;->setTextureCoordinates(IFFFF)V

    iget v0, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    invoke-virtual {v0, v1, v10, v11, v11}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/sunny/STextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/STextView;->mGravity:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/sunny/STextView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny/STextView;->mGravity:I

    return p1
.end method

.method static synthetic access$1002(Lcom/htc/sunny/STextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mBKWrapContentW:Z

    return p1
.end method

.method static synthetic access$102(Lcom/htc/sunny/STextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/sunny/STextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mBKWrapContentH:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny/STextView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny/STextView;)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/sunny/STextView;Landroid/text/TextUtils$TruncateAt;)Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/STextView;->mTruncateAt:Landroid/text/TextUtils$TruncateAt;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/sunny/STextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mEnabledMarquee:Z

    return p1
.end method

.method static synthetic access$602(Lcom/htc/sunny/STextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mMarqueeFinished:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/sunny/STextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/sunny/STextView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/sunny/STextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/sunny/STextView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/sunny/STextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/STextView;->mBitmapId:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/sunny/STextView;I)I
    .locals 0

    iput p1, p0, Lcom/htc/sunny/STextView;->mBitmapId:I

    return p1
.end method

.method private static getNext2Power(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private startMarquee()V
    .locals 13

    const/4 v12, 0x0

    iget v0, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v1, p0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView;->mBitmapW:I

    int-to-float v1, v1

    div-float v5, v0, v1

    iget v0, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v1, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/sunny/STextView;->mBitmapW:I

    int-to-float v1, v1

    div-float v7, v0, v1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    iget-object v1, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->setCoordinatesAnimation(FFFFFFFF)V

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    new-instance v1, Lcom/htc/sunny/Vector3F;

    invoke-direct {v1, v12, v12, v12}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/htc/sunny/Vector3F;

    iget v3, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v4, p0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v12, v12}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v1, p0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41f0

    mul-float/2addr v1, v9

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v11, v0, 0x3e8

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    int-to-long v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->setDuration(J)V

    const/16 v10, 0x4b0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny/SAnimationController;->isStarted()Z

    move-result v1

    if-ne v0, v1, :cond_0

    int-to-long v0, v10

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v10, v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    new-instance v1, Lcom/htc/sunny/STextView$14;

    invoke-direct {v1, p0}, Lcom/htc/sunny/STextView$14;-><init>(Lcom/htc/sunny/STextView;)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->start()V

    return-void
.end method

.method private updateBackgroundLayout()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/htc/sunny/STextView;->mBKWrapContentW:Z

    if-ne v8, v5, :cond_2

    iget v1, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v5, p0, Lcom/htc/sunny/STextView;->mLineLength:I

    iget v6, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    if-le v5, v6, :cond_0

    iget v1, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/htc/sunny/STextView;->mBKWrapContentH:Z

    if-ne v8, v5, :cond_3

    iget-object v5, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    iget-object v6, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    add-int v0, v5, v6

    iget v5, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    if-le v0, v5, :cond_1

    iget v0, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/htc/sunny/STextView;->setBackgroundDisplaySize(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    const/16 v5, 0xe

    aget v5, v4, v5

    if-ne v7, v5, :cond_4

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0xf

    aget v5, v4, v5

    if-ne v7, v5, :cond_6

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/htc/sunny/STextView;->setBackgroundPosition(III)V

    return-void

    :cond_2
    iget v1, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    goto :goto_1

    :cond_4
    const/16 v5, 0xb

    aget v5, v4, v5

    if-ne v7, v5, :cond_5

    iget v5, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v1, 0x2

    sub-int v2, v5, v6

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/htc/sunny/STextView;->mDisplayW:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v1, 0x2

    add-int v2, v5, v6

    goto :goto_2

    :cond_6
    const/16 v5, 0xc

    aget v5, v4, v5

    if-ne v7, v5, :cond_7

    iget v5, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v0, 0x2

    add-int v3, v5, v6

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/htc/sunny/STextView;->mDisplayH:I

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v0, 0x2

    sub-int v3, v5, v6

    goto :goto_3
.end method


# virtual methods
.method protected createResource()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :cond_2
    iget v0, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    :cond_3
    iget v0, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    iget v2, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    :cond_4
    iput-boolean v4, p0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    goto :goto_0
.end method

.method public enableTextBitmapCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/STextView;->mEnableTextBitmapCache:Z

    return-void
.end method

.method protected freeResource()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget v0, p0, Lcom/htc/sunny/STextView;->mBitmapId:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    iput v2, p0, Lcom/htc/sunny/STextView;->mBitmapId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/STextView;->mTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iput v2, p0, Lcom/htc/sunny/STextView;->mSpriteId:I

    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    goto :goto_0
.end method

.method protected generateText()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v1}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    if-le v1, v2, :cond_4

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/STextView;->mEnabledMarquee:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mMarqueeFinished:Z

    if-ne v1, v2, :cond_5

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    :goto_2
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    int-to-float v1, v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mGap:I

    add-int v15, v1, v2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    move/from16 v0, v17

    invoke-virtual {v1, v0, v11}, Landroid/widget/RelativeLayout;->measure(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mGravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny/STextView;->updateBackgroundLayout()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v1, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x1

    if-ne v1, v8, :cond_6

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    goto/16 :goto_2

    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    goto/16 :goto_3

    :cond_8
    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mEnableTextBitmapCache:Z

    if-ne v1, v2, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapH:I

    if-ne v1, v14, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapW:I

    if-ne v1, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-ne v1, v2, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    :cond_a
    invoke-static {v15, v14, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    :goto_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny/STextView;->mBitmapH:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny/STextView;->mBitmapW:I

    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    if-ne v1, v2, :cond_12

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v16

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onPreDraw()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mLineLength:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mGap:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    invoke-static {v2}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mBitmapW:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/STextView;->mBitmapH:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/htc/sunny/Sunny;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/STextView;->mEnableTextBitmapCache:Z

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mTextureId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/Sunny;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    invoke-static {v1}, Lcom/htc/sunny/SunnyEngine;->isBitmapDestroyed(I)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mTextureId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mSpriteId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    invoke-static {v1}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/STextView;->mBitmapId:I

    :cond_e
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    if-ne v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/STextView;->mBitmapW:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/STextView;->mBitmapH:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mSpriteId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setTextureCoordinates(IFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mSpriteId:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/STextView;->mSpriteId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/STextView;->mCanMarquee:Z

    if-ne v1, v2, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny/STextView;->startMarquee()V

    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_4

    :cond_11
    invoke-static {v15, v14, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/STextView;->mTextBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onPreDraw()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/STextView;->mCoordRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/STextView;->mDisplayW:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/STextView;->mBitmapW:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/STextView;->mDisplayH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/STextView;->mBitmapH:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6
.end method

.method protected init()V
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onAttachedToWindow(Lcom/htc/sunny/SView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onAttachedToWindow(Lcom/htc/sunny/SView;)V

    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/htc/sunny/STextView;->mFocusChangeNeedRegenText:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/STextView;->mTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    goto :goto_0
.end method

.method public renderAndUpdate3D()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/STextView;->mGenerateText:Z

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->generateText()V

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->isEnded()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->isStarted()Z

    move-result v3

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isStarted()Z

    move-result v3

    if-ne v1, v3, :cond_4

    move v0, v1

    :goto_0
    if-ne v1, v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->cancel()V

    :goto_1
    invoke-direct {p0}, Lcom/htc/sunny/STextView;->UpdateMarqueeText()V

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isStarted()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iput-boolean v1, p0, Lcom/htc/sunny/STextView;->mRestratMarquee:Z

    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny/STextView;->mRestratMarquee:Z

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iput-boolean v2, p0, Lcom/htc/sunny/STextView;->mRestratMarquee:Z

    iput-boolean v2, p0, Lcom/htc/sunny/STextView;->mMarqueeFinished:Z

    invoke-virtual {p0}, Lcom/htc/sunny/STextView;->generateText()V

    :cond_3
    invoke-super {p0}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V

    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny/STextView;->mMarqueeAnim:Lcom/htc/sunny/STextView$CoordinatesAnimation;

    invoke-virtual {v3}, Lcom/htc/sunny/STextView$CoordinatesAnimation;->animate()V

    goto :goto_1
.end method

.method public setDisplaySize(II)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/STextView$12;-><init>(Lcom/htc/sunny/STextView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$6;-><init>(Lcom/htc/sunny/STextView;Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$1;-><init>(Lcom/htc/sunny/STextView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$11;-><init>(Lcom/htc/sunny/STextView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$9;-><init>(Lcom/htc/sunny/STextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextAlignType(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$2;-><init>(Lcom/htc/sunny/STextView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextBackgroundScaleType(ZZ)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/STextView$13;-><init>(Lcom/htc/sunny/STextView;ZZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$7;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$7;-><init>(Lcom/htc/sunny/STextView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$8;-><init>(Lcom/htc/sunny/STextView;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextPadding(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/STextView$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/STextView$5;-><init>(Lcom/htc/sunny/STextView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$3;-><init>(Lcom/htc/sunny/STextView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/STextView$4;-><init>(Lcom/htc/sunny/STextView;IF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextWithoutRender(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/STextView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/STextView$10;-><init>(Lcom/htc/sunny/STextView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/STextView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method
