.class public Lcom/htc/widget/HtcListItemTileImage;
.super Lcom/htc/widget/HtcListItemImageComponent;
.source "HtcListItemTileImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListItemTileImage$MaskImageView;
    }
.end annotation


# static fields
.field private static sBmpRetNoBadge:Landroid/graphics/Bitmap;

.field private static sErasePaint:Landroid/graphics/Paint;

.field private static sMaskBitmap:Landroid/graphics/Bitmap;

.field private static sRectBmpMask:Landroid/graphics/Rect;


# instance fields
.field private mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

.field private mBadgeSize:I

.field private mImageSize:I

.field private mMask:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 33
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    .line 34
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sRectBmpMask:Landroid/graphics/Rect;

    .line 35
    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;I)V

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemImageComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    .line 30
    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemTileImage;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sRectBmpMask:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private convertToBitmap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 45
    iput-object p1, p0, Lcom/htc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-direct {v0, p0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;-><init>(Lcom/htc/widget/HtcListItemTileImage;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    .line 48
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    .line 49
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    .line 50
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_photo_frame_mask"

    const v2, 0x2080703

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    const-string v1, "common_photo_frame"

    const v2, 0x2080702

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingTop:I

    .line 56
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingLeft:I

    .line 57
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingRight:I

    .line 58
    iput v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mPaddingBottom:I

    .line 60
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "HtcListItemTileImage"

    const-string v1, "sMaskBitmap == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    iget v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mImageSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemTileImage;->convertToBitmap()V

    .line 64
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sRectBmpMask:Landroid/graphics/Rect;

    .line 67
    const-string v0, "HtcListItemTileImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMaskBitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/widget/HtcListItemTileImage;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v0, "HtcListItemTileImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    iget v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    .line 74
    sget-object v0, Lcom/htc/widget/HtcListItemTileImage;->sErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    iget v3, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/htc/widget/HtcListItemTileImage;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method

.method private originalLayout()V
    .locals 9

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorLeftShift:I

    sub-int v2, v4, v5

    .line 143
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredHeight()I

    move-result v0

    .line 144
    .local v0, parentBottom:I
    const/4 v1, 0x0

    .line 145
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 147
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->layout(IIII)V

    .line 148
    iget v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleSize:I

    sub-int v6, v0, v6

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private revertLayout()V
    .locals 9

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredWidth()I

    move-result v2

    .line 160
    .local v2, parentRight:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredHeight()I

    move-result v0

    .line 161
    .local v0, parentBottom:I
    iget v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorLeftShift:I

    add-int/lit8 v1, v4, 0x0

    .line 162
    .local v1, parentLeft:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemTileImage;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 164
    .local v3, parentTop:I
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadgeSize:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->layout(IIII)V

    .line 165
    iget v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleCount:Lcom/htc/widget/HtcListItemBubbleCount;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleSize:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mBubbleSize:I

    add-int/2addr v6, v1

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/htc/widget/HtcListItemBubbleCount;->layout(IIII)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicator:Landroid/widget/ImageView;

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    sub-int v7, v0, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/htc/widget/HtcListItemTileImage;->mIndicatorSize:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic getBubbleCountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getBubbleCountText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/htc/widget/HtcListItemImageComponent;->getIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 119
    :goto_0
    return-object v0

    .line 114
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mComponentWidth:I

    iget v2, p0, Lcom/htc/widget/HtcListItemTileImage;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 117
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mLeftMargin:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 118
    iput-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public getTileImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mIsRevert:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemTileImage;->revertLayout()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/HtcListItemTileImage;->originalLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 129
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListItemTileImage;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public bridge synthetic setBubbleCount(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setBubbleCount(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setIndicatorResource(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setIndicatorResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 101
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 102
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/widget/HtcListItemTileImage;->mLeftMargin:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 105
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 123
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    return-void
.end method

.method public setTileImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    return-void
.end method

.method public setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void
.end method

.method public setTileImageResource(I)V
    .locals 1
    .parameter "rId"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->setImageResource(I)V

    .line 191
    return-void
.end method
