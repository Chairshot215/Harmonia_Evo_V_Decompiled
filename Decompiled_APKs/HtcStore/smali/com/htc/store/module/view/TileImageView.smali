.class public Lcom/htc/store/module/view/TileImageView;
.super Landroid/widget/FrameLayout;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/module/view/TileImageView$MaskImageView;
    }
.end annotation


# static fields
.field private static sBmpRetNoBadge:Landroid/graphics/Bitmap;

.field private static sErasePaint:Landroid/graphics/Paint;

.field private static sMaskBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field private mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

.field protected mFrameHeight:I

.field protected mFrameWidth:I

.field private mMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/htc/store/module/view/TileImageView;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 24
    sput-object v0, Lcom/htc/store/module/view/TileImageView;->sErasePaint:Landroid/graphics/Paint;

    .line 25
    sput-object v0, Lcom/htc/store/module/view/TileImageView;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    .line 27
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    .line 28
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    .line 29
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    .line 33
    invoke-direct {p0, p1}, Lcom/htc/store/module/view/TileImageView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    .line 27
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    .line 28
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    .line 29
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/view/TileImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    .line 27
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    .line 28
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    .line 29
    iput v1, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/store/module/view/TileImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/store/module/view/TileImageView;->sErasePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private convertToBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 14
    .parameter "maskBitmap"
    .parameter "context"

    .prologue
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 113
    .local v6, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v8, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    iget v9, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    .local v1, bitmap_mask:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    .local v3, canvas_mask:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    iget-object v10, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    iget-object v11, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    iget-object v12, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    iget-object v13, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v8, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    iget v8, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    div-int/lit8 v7, v8, 0x2

    .line 124
    .local v7, width_corner:I
    iget v8, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    div-int/lit8 v5, v8, 0x2

    .line 125
    .local v5, height_corner:I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v9, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, bitmap_corner:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 129
    .local v4, drawable_corner:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v7, -0x1

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    add-int/lit8 v8, v7, -0x1

    const/4 v9, 0x0

    invoke-static {v1, v8, v9, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #drawable_corner:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 134
    .restart local v4       #drawable_corner:Landroid/graphics/drawable/Drawable;
    iget v8, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    const/4 v8, 0x0

    add-int/lit8 v9, v5, -0x1

    invoke-static {v1, v8, v9, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #drawable_corner:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 140
    .restart local v4       #drawable_corner:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    iget v9, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v7, -0x1

    iget v11, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v5, -0x1

    invoke-static {v1, v8, v9, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #drawable_corner:Landroid/graphics/drawable/Drawable;
    invoke-direct {v4, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 145
    .restart local v4       #drawable_corner:Landroid/graphics/drawable/Drawable;
    iget v8, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 71
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/store/module/view/TileImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 73
    new-instance v3, Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-direct {v3, p0, p1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;-><init>(Lcom/htc/store/module/view/TileImageView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 75
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_4

    .line 76
    const v3, 0x2080703

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/store/module/view/TileImageView;->mMask:Landroid/graphics/drawable/Drawable;

    .line 77
    const-string v3, "common_photo_frame"

    const v4, 0x2080702

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v3, v0}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v3, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    .line 82
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    .line 83
    invoke-virtual {p0, p1}, Lcom/htc/store/module/view/TileImageView;->setFrameSize(Landroid/content/Context;)V

    .line 84
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    if-gez v3, :cond_0

    .line 85
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundWidth:I

    iput v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    .line 86
    :cond_0
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    if-gez v3, :cond_1

    .line 87
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mBackgroundHeight:I

    iput v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/htc/store/module/view/TileImageView;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .local v1, mask:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 92
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    iget v4, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    invoke-direct {p0, v1, p1}, Lcom/htc/store/module/view/TileImageView;->convertToBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 96
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v1}, Lcom/htc/store/module/view/TileImageView;->setMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget v3, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    iget v4, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/store/module/view/TileImageView;->setBmpRetNoBadge(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_2
    sget-object v3, Lcom/htc/store/module/view/TileImageView;->sErasePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    .line 103
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/htc/store/module/view/TileImageView;->sErasePaint:Landroid/graphics/Paint;

    .line 104
    sget-object v3, Lcom/htc/store/module/view/TileImageView;->sErasePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    const/4 v4, 0x0

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/htc/store/module/view/TileImageView;->mFrameWidth:I

    iget v7, p0, Lcom/htc/store/module/view/TileImageView;->mFrameHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/store/module/view/TileImageView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #mask:Landroid/graphics/Bitmap;
    :cond_4
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/store/module/view/TileImageView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getBmpRetNoBadge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/store/module/view/TileImageView;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/store/module/view/TileImageView;->sMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTileImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    iget-object v1, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v2}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->layout(IIII)V

    .line 154
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 155
    return-void
.end method

.method protected setBmpRetNoBadge(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 63
    sput-object p1, Lcom/htc/store/module/view/TileImageView;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method protected setFrameSize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    return-void
.end method

.method protected setMaskBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 55
    sput-object p1, Lcom/htc/store/module/view/TileImageView;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    return-void
.end method

.method public setTileImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    return-void
.end method

.method public setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    return-void
.end method

.method public setTileImageResource(I)V
    .locals 2
    .parameter "rId"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/htc/store/module/view/TileImageView;->mBadge:Lcom/htc/store/module/view/TileImageView$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/TileImageView$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    return-void
.end method
