.class public Lcom/htc/opensense/widget/GalleryImageView;
.super Landroid/widget/ImageView;
.source "GalleryImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = 0xffffff

.field private static final LOG_TAG:Ljava/lang/String;

.field private static checkPositionLeft:Z

.field private static defaultBackgroundColor:I

.field private static deleteCross:Landroid/graphics/Bitmap;

.field private static drmDecodedIcon:Landroid/graphics/Bitmap;

.field private static drmUnDecodedIcon:Landroid/graphics/Bitmap;

.field private static fileCorrupted:Landroid/graphics/Bitmap;

.field private static isInit:Z

.field private static mCheckedDrawable:Landroid/graphics/Bitmap;

.field private static mUnCheckedDrawable:Landroid/graphics/Bitmap;

.field private static videoCorruptedIcon:Landroid/graphics/Bitmap;

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

    const-class v0, Lcom/htc/opensense/widget/GalleryImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/htc/opensense/widget/GalleryImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/htc/opensense/widget/GalleryImageView;->mParent:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mIsChecked:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/widget/GalleryImageView;->initStaticResource(Landroid/content/res/Resources;)V

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mMultiPicker:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDecodeDrm:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/GalleryImageView;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/GalleryImageView;->getBitmapDrawDes()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private drawDeleteIndication(Landroid/content/Context;Landroid/graphics/Canvas;IIIZ)V
    .locals 9

    const/high16 v8, 0x4000

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget v5, p0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v5, :pswitch_data_0

    if-eqz p6, :cond_2

    sget v4, Lcom/htc/opensense/album/AlbumCommon/Constants;->RECIPROCAL_ANIMATION_RATIO_GV:F

    iget-object v5, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    int-to-float v5, p4

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    int-to-float v5, p3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    :goto_1
    iget-object v5, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :pswitch_0
    if-eqz p6, :cond_1

    const v4, 0x3f969696

    iget-object v5, p0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v5, p5

    int-to-float v6, v0

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    :goto_2
    int-to-float v5, p3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f80

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

    :cond_2
    const/high16 v4, 0x3f80

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private getBitmapDrawDes()Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/GalleryImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/GalleryImageView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView;->mBitmapDrawDes:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static initStaticResource(Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/htc/opensense/widget/GalleryImageView;->isInit:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const v0, 0x208019f

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    const v0, 0x208019d

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    sput-boolean v1, Lcom/htc/opensense/widget/GalleryImageView;->checkPositionLeft:Z

    const v0, 0x20801b7

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    const v0, 0x20801b8

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    const v0, 0x20801bb

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    const v0, 0x20801b4

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    const v0, 0x20801bc

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    const v0, 0xffffff

    sput v0, Lcom/htc/opensense/widget/GalleryImageView;->defaultBackgroundColor:I

    sput-boolean v1, Lcom/htc/opensense/widget/GalleryImageView;->isInit:Z

    :cond_0
    return-void
.end method

.method public static releaseResource()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense/widget/GalleryImageView;->isInit:Z

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->deleteCross:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    sput-object v1, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setCheckedBoxPosition(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/opensense/widget/GalleryImageView;->checkPositionLeft:Z

    return-void
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0

    sput p0, Lcom/htc/opensense/widget/GalleryImageView;->defaultBackgroundColor:I

    return-void
.end method

.method public static setDrmDecodedIcon(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setDrmUnDecodedIcon(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setFileCorruptedIcon(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setVideoCorruptedIcon(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static setVideoIcon(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/GalleryImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mIsChecked:Z

    return v0
.end method

.method public getVideoTagEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    return v0
.end method

.method public isFileCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    return v0
.end method

.method public isMakeDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    sget v14, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_0

    sget v19, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v13, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v9, 0x1

    :goto_1
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget v3, Lcom/htc/opensense/widget/GalleryImageView;->defaultBackgroundColor:I

    const v4, 0xffffff

    if-eq v3, v4, :cond_0

    sget v3, Lcom/htc/opensense/widget/GalleryImageView;->defaultBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v3, :cond_1

    if-nez v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_1

    sget v18, Lcom/htc/opensense/album/AlbumCommon/Constants;->DELETE_ANIMATION_RATIO_GV:F

    :goto_2
    div-int/lit8 v3, v19, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v13, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v6, Lcom/htc/opensense/widget/GalleryImageView;->videoCorruptedIcon:Landroid/graphics/Bitmap;

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

    :cond_2
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mMultiPicker:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mIsChecked:Z

    if-eqz v3, :cond_f

    sget-object v12, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    :goto_5
    const/16 v20, 0x3

    sget-boolean v3, Lcom/htc/opensense/widget/GalleryImageView;->checkPositionLeft:Z

    if-nez v3, :cond_3

    add-int/lit8 v3, v19, -0x3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v20, v3, v4

    :cond_3
    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v4, 0x4040

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    if-nez v3, :cond_5

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getWidth()I

    move-result v3

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v20, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    div-int/lit8 v4, v4, 0x4

    add-int v21, v3, v4

    :goto_6
    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isDecodeDrm:Z

    if-eqz v3, :cond_11

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_4

    const/16 v16, 0x5

    :goto_7
    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->drmDecodedIcon:Landroid/graphics/Bitmap;

    int-to-float v4, v15

    move/from16 v0, v16

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v5, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mDeleteMaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/widget/GalleryImageView;->mDeletePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez v9, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v6, v19

    move v7, v13

    move v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/htc/opensense/widget/GalleryImageView;->drawDeleteIndication(Landroid/content/Context;Landroid/graphics/Canvas;IIIZ)V

    :cond_9
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLeft:I

    sub-int v19, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/GalleryImageView;->mTop:I

    sub-int v13, v3, v4

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    :pswitch_1
    const v18, 0x3f59999a

    goto/16 :goto_2

    :pswitch_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getWidth()I

    move-result v3

    int-to-float v6, v3

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getWidth()I

    move-result v4

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    sget-object v6, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

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

    :cond_b
    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    sget v4, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v5, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v6, Lcom/htc/opensense/widget/GalleryImageView;->fileCorrupted:Landroid/graphics/Bitmap;

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

    :cond_c
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_d

    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_e

    instance-of v3, v11, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;

    if-eqz v3, :cond_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    int-to-float v6, v3

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/opensense/widget/GalleryImageView;->mGrayPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    :cond_f
    sget-object v12, Lcom/htc/opensense/widget/GalleryImageView;->mUnCheckedDrawable:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :pswitch_3
    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_FILMSTRIP:I

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v21, v3, 0x2

    goto/16 :goto_6

    :cond_10
    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->videoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v21, v3, 0x2

    goto/16 :goto_6

    :pswitch_4
    const/16 v16, 0x5

    goto/16 :goto_7

    :cond_11
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getWidth()I

    move-result v3

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v20, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    packed-switch v3, :pswitch_data_5

    sget v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v21, v3, 0x2

    :goto_9
    sget-object v3, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/GalleryImageView;->getHeight()I

    move-result v3

    sget-object v4, Lcom/htc/opensense/widget/GalleryImageView;->drmUnDecodedIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v21, v3, -0x23

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mIsChecked:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mMultiPicker:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDecodeDrm:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    iput-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->mIsChecked:Z

    return-void
.end method

.method public setCheckedEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->mMultiPicker:Z

    return-void
.end method

.method public setDrmDecodedSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDecodeDrm:Z

    return-void
.end method

.method public setDrmTagEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->isDrm:Z

    return-void
.end method

.method public setFileCorrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->isFileCorrupted:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;-><init>(Lcom/htc/opensense/widget/GalleryImageView;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMakeDelete(Z)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/GalleryImageView;->setMarkDeleteMode(Z)V

    iget v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mLayoutFlag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const v2, 0x3f59999a

    :goto_0
    iget-boolean v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    invoke-super {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-super {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x320

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    iput-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteTrue:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/GalleryImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_1
    sget v2, Lcom/htc/opensense/album/AlbumCommon/Constants;->DELETE_ANIMATION_RATIO_GV:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteFalse:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    invoke-super {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-super {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x320

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/htc/opensense/album/SocialNetwork/DeleteAnimation;-><init>(FFFFIIZIZZ)V

    iput-object v1, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteFalse:Landroid/view/animation/Animation;

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView;->mAniDeleteFalse:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/GalleryImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setMarkDeleteMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->isMakeDelete:Z

    return-void
.end method

.method public setSkinnableCheckBox(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/GalleryImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/widget/GalleryImageView;->mCheckedDrawable:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setVideoTagEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/GalleryImageView;->isVideo:Z

    return-void
.end method
