.class public Lcom/htc/opensense2/widget/GalleryImageView;
.super Landroid/widget/ImageView;
.source "GalleryImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static deleteCross:Landroid/graphics/Bitmap;

.field private static drmDecodedIcon:Landroid/graphics/Bitmap;

.field private static drmUnDecodedIcon:Landroid/graphics/Bitmap;

.field private static fileCorrupted:Landroid/graphics/Bitmap;

.field private static isInit:Z

.field private static mCheckedDrawable:Landroid/graphics/Bitmap;

.field private static mUnCheckedDrawable:Landroid/graphics/Bitmap;

.field private static videoIcon:Landroid/graphics/Bitmap;


# instance fields
.field private isDecodeDrm:Z

.field private isDrm:Z

.field private isFileCorrupted:Z

.field private isMakeDelete:Z

.field private isVideo:Z

.field private mAniDeleteFalse:Landroid/view/animation/Animation;

.field private mAniDeleteTrue:Landroid/view/animation/Animation;

.field private mBitmapDrawDes:Landroid/graphics/Rect;

.field private mDeleteIconMatrix:Landroid/graphics/Matrix;

.field private mDeleteMaskRect:Landroid/graphics/Rect;

.field private mDeletePaint:Landroid/graphics/Paint;

.field private mGrayPaint:Landroid/graphics/Paint;

.field private mIsChecked:Z

.field private mLayoutFlag:I

.field private mMultiPicker:Z

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/opensense2/widget/GalleryImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "layoutFlag"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/htc/opensense2/widget/GalleryImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput-object p3, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mParent:Landroid/view/ViewGroup;

    .line 89
    iput p2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mIsChecked:Z

    .line 47
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    .line 61
    sget-boolean v0, Lcom/htc/opensense2/widget/GalleryImageView;->isInit:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208019d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801b7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801b8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801bb

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801b4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/opensense2/widget/GalleryImageView;->isInit:Z

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mMultiPicker:Z

    .line 75
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isVideo:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDecodeDrm:Z

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/widget/GalleryImageView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getBitmapDrawDes()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private drawDeleteIndication(Landroid/content/Context;Landroid/graphics/Canvas;IIIZ)V
    .locals 9
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "heightFilmstripBase"
    .parameter "isAnimation"

    .prologue
    const/high16 v8, 0x4000

    .line 411
    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, offsetX:I
    const/4 v3, 0x0

    .line 414
    .local v3, offsetY:I
    const/high16 v4, 0x3f80

    .line 416
    .local v4, scaleRate:F
    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 417
    .local v1, iconW:I
    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 419
    .local v0, iconH:I
    iget-object v5, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 420
    iget v5, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v5, :pswitch_data_0

    .line 437
    if-eqz p6, :cond_2

    .line 438
    const v4, 0x3fb6db6e

    .line 439
    iget-object v5, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 445
    :goto_0
    int-to-float v5, p4

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    .line 446
    int-to-float v5, p3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    .line 450
    :goto_1
    iget-object v5, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 451
    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 453
    .end local v0           #iconH:I
    .end local v1           #iconW:I
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #scaleRate:F
    :cond_0
    return-void

    .line 423
    .restart local v0       #iconH:I
    .restart local v1       #iconW:I
    .restart local v2       #offsetX:I
    .restart local v3       #offsetY:I
    .restart local v4       #scaleRate:F
    :pswitch_0
    if-eqz p6, :cond_1

    .line 424
    const v4, 0x3f969696

    .line 425
    iget-object v5, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    int-to-float v5, p5

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    .line 433
    :goto_2
    int-to-float v5, p3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    .line 434
    goto :goto_1

    .line 429
    :cond_1
    const/high16 v4, 0x3f80

    .line 430
    int-to-float v5, p4

    const v6, 0x3e199998

    mul-float/2addr v5, v6

    int-to-float v6, p5

    const v7, 0x3f59999a

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_2

    .line 442
    :cond_2
    const/high16 v4, 0x3f80

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getBitmapDrawDes()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v1

    .line 202
    .local v1, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getHeight()I

    move-result v0

    .line 204
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 205
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    .line 210
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    return-object v2

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/widget/GalleryImageView;->isInit:Z

    .line 458
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 460
    :cond_0
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    .line 461
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 462
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    :cond_1
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    .line 464
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 465
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    :cond_2
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    .line 467
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 468
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    :cond_3
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    .line 470
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 471
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 472
    :cond_4
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    .line 473
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 474
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 475
    :cond_5
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    .line 477
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 478
    sget-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    :cond_6
    sput-object v1, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    .line 480
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;

    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mIsChecked:Z

    return v0
.end method

.method public getVideoTagEnable()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isVideo:Z

    return v0
.end method

.method public isFileCorrupted()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    return v0
.end method

.method public isMakeDelete()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 237
    sget v14, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    .line 239
    .local v14, heightFilmstripBase:I
    const/16 v19, 0x0

    .line 240
    .local v19, width:I
    const/4 v13, 0x0

    .line 241
    .local v13, height:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_0

    .line 249
    sget v19, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    .line 250
    sget v13, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    .line 254
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v9, 0x1

    .line 255
    .local v9, isDuringAnimation:Z
    :goto_1
    const/16 v17, -0x1

    .line 257
    .local v17, saveCount:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v3, :cond_0

    if-nez v9, :cond_0

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    .line 259
    const/16 v18, 0x0

    .line 260
    .local v18, scale:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_1

    .line 267
    const v18, 0x3f333333

    .line 270
    :goto_2
    div-int/lit8 v3, v19, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v13, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 273
    .end local v18           #scale:F
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 274
    .local v10, bmp:Landroid/graphics/Bitmap;
    if-nez v10, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_2

    .line 289
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    if-nez v3, :cond_1

    .line 291
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v6, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_1
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 319
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mMultiPicker:Z

    if-eqz v3, :cond_2

    .line 321
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 323
    const/4 v12, 0x0

    .line 324
    .local v12, draw:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mIsChecked:Z

    if-eqz v3, :cond_c

    .line 326
    sget-object v12, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    .line 332
    :goto_5
    const/high16 v3, 0x4040

    const/high16 v4, 0x4040

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    .end local v12           #draw:Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isVideo:Z

    if-eqz v3, :cond_3

    .line 338
    const/16 v21, 0x0

    .line 339
    .local v21, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v3

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v20, v3, 0x2

    .line 341
    .local v20, x:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_3

    .line 348
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v21, v3, -0x1

    .line 352
    :goto_6
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    if-eqz v3, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isDecodeDrm:Z

    if-eqz v3, :cond_d

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v3

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    sub-int v15, v3, v4

    .line 360
    .local v15, offsetX:I
    const/16 v16, 0x0

    .line 362
    .local v16, offsetY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_4

    .line 369
    const/16 v16, 0x5

    .line 372
    :goto_7
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    int-to-float v4, v15

    move/from16 v0, v16

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 393
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v3, :cond_7

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v5, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 401
    if-nez v9, :cond_6

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 404
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v6, v19

    move v7, v13

    move v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/htc/opensense2/widget/GalleryImageView;->drawDeleteIndication(Landroid/content/Context;Landroid/graphics/Canvas;IIIZ)V

    .line 408
    :cond_7
    return-void

    .line 244
    .end local v9           #isDuringAnimation:Z
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v17           #saveCount:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLeft:I

    sub-int v19, v3, v4

    .line 245
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mTop:I

    sub-int v13, v3, v4

    .line 246
    goto/16 :goto_0

    .line 254
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v9       #isDuringAnimation:Z
    .restart local v17       #saveCount:I
    .restart local v18       #scale:F
    :pswitch_1
    const v18, 0x3f59999a

    .line 264
    goto/16 :goto_2

    .line 279
    .end local v18           #scale:F
    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v3

    int-to-float v6, v3

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    if-nez v3, :cond_1

    .line 282
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v4

    sget-object v5, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    sget-object v6, Lcom/htc/opensense2/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 301
    :cond_9
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 302
    .local v11, d:Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_a

    .line 304
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 306
    :cond_a
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_b

    instance-of v3, v11, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;

    if-eqz v3, :cond_b

    .line 308
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    int-to-float v6, v3

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 309
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 314
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 330
    .end local v11           #d:Landroid/graphics/drawable/Drawable;
    .restart local v12       #draw:Landroid/graphics/Bitmap;
    :cond_c
    sget-object v12, Lcom/htc/opensense2/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    .line 344
    .end local v12           #draw:Landroid/graphics/Bitmap;
    .restart local v20       #x:I
    .restart local v21       #y:I
    :pswitch_3
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v21, v3, -0x5

    .line 345
    goto/16 :goto_6

    .line 365
    .end local v20           #x:I
    .end local v21           #y:I
    .restart local v15       #offsetX:I
    .restart local v16       #offsetY:I
    :pswitch_4
    const/16 v16, 0x5

    .line 366
    goto/16 :goto_7

    .line 376
    .end local v15           #offsetX:I
    .end local v16           #offsetY:I
    :cond_d
    const/16 v21, 0x0

    .line 377
    .restart local v21       #y:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getWidth()I

    move-result v3

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v20, v3, 0x2

    .line 379
    .restart local v20       #x:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_5

    .line 386
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v21, v3, 0x2

    .line 389
    :goto_9
    sget-object v3, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 382
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getHeight()I

    move-result v3

    sget-object v4, Lcom/htc/opensense2/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v21, v3, -0x23

    .line 383
    goto :goto_9

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    .line 276
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 341
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    .line 362
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch

    .line 379
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mIsChecked:Z

    .line 100
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mMultiPicker:Z

    .line 101
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isVideo:Z

    .line 102
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    .line 103
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDecodeDrm:Z

    .line 104
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    .line 105
    iput-boolean v0, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    .line 106
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mIsChecked:Z

    .line 194
    return-void
.end method

.method public setCheckedEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mMultiPicker:Z

    .line 140
    return-void
.end method

.method public setDrmDecodedSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDecodeDrm:Z

    .line 136
    return-void
.end method

.method public setDrmTagEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isDrm:Z

    .line 132
    return-void
.end method

.method public setFileCorrupted(Z)V
    .locals 0
    .parameter "corrupted"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isFileCorrupted:Z

    .line 181
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    new-instance v0, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense2/widget/GalleryImageView$FastBitmapDrawable;-><init>(Lcom/htc/opensense2/widget/GalleryImageView;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMakeDelete(Z)V
    .locals 5
    .parameter "isMakeDelete"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3e99999a

    .line 152
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/widget/GalleryImageView;->setMarkDeleteMode(Z)V

    .line 153
    iget v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mLayoutFlag:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const v0, 0x3f59999a

    .line 156
    .local v0, ratio:F
    :goto_0
    iget-boolean v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/GalleryImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    :goto_1
    return-void

    .line 153
    .end local v0           #ratio:F
    :cond_1
    const v0, 0x3f333333

    goto :goto_0

    .line 168
    .restart local v0       #ratio:F
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteFalse:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    .line 170
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->mAniDeleteFalse:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/GalleryImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setMarkDeleteMode(Z)V
    .locals 0
    .parameter "isMakeDelete"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isMakeDelete:Z

    .line 149
    return-void
.end method

.method public setSkinnableCheckBox(I)V
    .locals 1
    .parameter "nResID"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method

.method public setVideoTagEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/opensense2/widget/GalleryImageView;->isVideo:Z

    .line 124
    return-void
.end method
