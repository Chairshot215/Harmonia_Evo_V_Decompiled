.class public Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.super Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DRM_TEXT_SHIFT_Y:F = 0.0f

.field protected static final IMAGE_LAYER:I = 0x0

.field protected static final INK_LAYER:I = 0x1

.field public static LTAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0xb

.field protected static final SPRITE_LAYER_DRM:I = 0x6

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_DRM_TEXT:I = 0x8

.field protected static final SPRITE_LAYER_DRM_TEXT_BG:I = 0x7

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_IS_3D:I = 0xa

.field protected static final SPRITE_LAYER_LOADING:I = 0x9

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_PLAYABLE_SMALL:I = 0x4

.field protected static final SPRITE_LAYER_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private dataIndex:I

.field private imageSprite:Lcom/htc/sunny2/Sprite;

.field private indicatorSprite:Lcom/htc/sunny2/Sprite;

.field private mConsumeRightFlag:Z

.field private mCurrentTexture:Lcom/htc/sunny2/Texture;

.field private mFrameHeight:F

.field private mFrameWidth:F

.field public mIsAniamtion:Z

.field mIsDrm:Z

.field mIsForwardLock:Z

.field mIsPlayable:Z

.field private mIsReady:Z

.field private mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field private mText:Ljava/lang/String;

.field private mTextTexture:Lcom/htc/sunny2/Texture;

.field private mTextView:Landroid/widget/TextView;

.field paintTexture:Lcom/htc/sunny2/Texture;

.field private rotateDegrees:I

.field private sContext:Lcom/htc/sunny2/SunnyContext;

.field shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

.field private sourceImageHeight:I

.field private sourceImageWidth:I

.field private zoomable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    .line 44
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 53
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 54
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 55
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 61
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 63
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 69
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 70
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 97
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 871
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 103
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 53
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 54
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 55
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 61
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 63
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 69
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 70
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 97
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 871
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 108
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V
    .locals 3
    .parameter "context"
    .parameter "shareResources"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 53
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 54
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 55
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 61
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 63
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 66
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 68
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 69
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 70
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 77
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 97
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 871
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 114
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 116
    return-void
.end method

.method private createDrmText(Landroid/content/Context;ILcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V
    .locals 7
    .parameter "context"
    .parameter "sunnyEnvironment"
    .parameter "shareResources"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 661
    new-instance v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const v4, 0x2030036

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 662
    .local v2, tView:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 665
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20c01f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 669
    .local v1, measureW:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 670
    .local v0, measureH:I
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 671
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 673
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iput v3, p3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextWidth:I

    .line 674
    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iput v3, p3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextHeight:I

    .line 675
    invoke-static {v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v3

    iput-object v3, p3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    .line 676
    const/4 v2, 0x0

    .line 677
    return-void
.end method

.method private setDisplayFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1081
    return-void
.end method

.method private setLoading(Z)V
    .locals 2
    .parameter "isLoading"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v0, :cond_0

    .line 1016
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setLoading NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1019
    return-void
.end method

.method private setPlayable(Z)V
    .locals 6
    .parameter "isPlayable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v0, :cond_0

    .line 891
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setPlayable NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    if-eqz p1, :cond_2

    .line 895
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 898
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 911
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 903
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 909
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 5
    .parameter "mediaData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1085
    if-eqz p1, :cond_5

    .line 1087
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 1088
    const-string v1, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1089
    .local v0, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 1090
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1092
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setPlayable(Z)V

    .line 1094
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1100
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setCorrupted(Z)V

    .line 1106
    .end local v0           #mIsWMDrm:Z
    :goto_1
    return-void

    :cond_4
    move v1, v2

    .line 1087
    goto :goto_0

    .line 1104
    :cond_5
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][GalleryFullScreenView][setupIndicator]mediaData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateImageSizeByDefaultOrTextureInfo()V
    .locals 3

    .prologue
    .line 1218
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-gtz v0, :cond_1

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getSourceWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1223
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getSourceHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1225
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1226
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v0, v0, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v0, :cond_2

    .line 1234
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1235
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1238
    :cond_2
    return-void
.end method

.method private updateImageSizeByDrm()V
    .locals 24

    .prologue
    .line 1242
    sget v21, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    .line 1243
    .local v21, gridHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    .line 1245
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1247
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    .line 1248
    .local v20, cropSize:F
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_1

    .line 1250
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v22, v20, v3

    .line 1251
    .local v22, ratioX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v23, v20, v3

    .line 1252
    .local v23, ratioY:F
    const/high16 v3, 0x3f00

    sub-float v4, v3, v22

    .line 1253
    .local v4, topU:F
    const/high16 v3, 0x3f00

    sub-float v9, v3, v23

    .line 1254
    .local v9, topV:F
    const/high16 v3, 0x3f00

    add-float v6, v3, v22

    .line 1255
    .local v6, bottomU:F
    const/high16 v3, 0x3f00

    add-float v5, v3, v23

    .line 1256
    .local v5, bottomV:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    .line 1257
    .local v2, sprite:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v3, :sswitch_data_0

    .line 1269
    const/4 v11, 0x0

    move v10, v2

    move v12, v4

    move v13, v9

    move v14, v6

    move v15, v5

    invoke-static/range {v10 .. v15}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 1275
    .end local v2           #sprite:I
    .end local v4           #topU:F
    .end local v5           #bottomV:F
    .end local v6           #bottomU:F
    .end local v9           #topV:F
    .end local v20           #cropSize:F
    .end local v22           #ratioX:F
    .end local v23           #ratioY:F
    :cond_1
    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1276
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1277
    return-void

    .line 1260
    .restart local v2       #sprite:I
    .restart local v4       #topU:F
    .restart local v5       #bottomV:F
    .restart local v6       #bottomU:F
    .restart local v9       #topV:F
    .restart local v20       #cropSize:F
    .restart local v22       #ratioX:F
    .restart local v23       #ratioY:F
    :sswitch_0
    const/4 v3, 0x0

    move v7, v5

    move v8, v4

    move v10, v6

    move v11, v9

    invoke-static/range {v2 .. v11}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1263
    :sswitch_1
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1266
    :sswitch_2
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v9

    move v14, v4

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v10 .. v19}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1257
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public allocateShareResources()V
    .locals 5

    .prologue
    .line 572
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 576
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_2

    .line 582
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - already allocated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_2
    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 588
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020022

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    .line 589
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    .line 591
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020023

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    .line 596
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_4

    .line 598
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020015

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    .line 603
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_5

    .line 605
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture Drm create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020013

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    .line 610
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_6

    .line 612
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture DrmCorrupt create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 616
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020020

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    .line 617
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_7

    .line 619
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture videoCorrupt create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 623
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020024

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    .line 624
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_8

    .line 626
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture corrupt create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 630
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x7f020019

    invoke-static {v1, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    .line 631
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_9

    .line 633
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 644
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v2, 0x2080183

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    .line 645
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_a

    .line 647
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 651
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sunnyEnvironment:I

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->createDrmText(Landroid/content/Context;ILcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V

    .line 652
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    goto/16 :goto_0
.end method

.method public attachToSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 32
    .parameter "parentSceneNode"

    .prologue
    .line 125
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_0

    .line 128
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create imageSprite NG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 301
    :goto_0
    return-void

    .line 133
    :cond_0
    const/16 v17, 0xb

    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_1

    .line 136
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create indicatorSprite NG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 138
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create indicatorSprite NG - release imageSprite"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->release()V

    .line 140
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    goto :goto_0

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    .line 157
    .local v4, playableLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 160
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 166
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v5

    .line 169
    .local v5, playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 172
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 178
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    .line 181
    .local v6, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    .line 184
    .local v7, drmWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v8, v0

    .line 187
    .local v8, drmHeight:F
    sget v17, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    .line 188
    .local v28, gridHeight:F
    const/high16 v17, 0x4000

    div-float v17, v28, v17

    const/high16 v18, 0x4000

    div-float v18, v7, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v26, v17, v18

    .line 189
    .local v26, drmX:F
    const/high16 v17, 0x4000

    div-float v17, v28, v17

    const/high16 v18, 0x4000

    div-float v18, v8, v18

    sub-float v17, v17, v18

    sget v18, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v27, v17, v18

    .line 190
    .local v27, drmY:F
    move/from16 v0, v26

    neg-float v9, v0

    move/from16 v0, v27

    neg-float v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 191
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 197
    .end local v7           #drmWidth:F
    .end local v8           #drmHeight:F
    .end local v26           #drmX:F
    .end local v27           #drmY:F
    .end local v28           #gridHeight:F
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v9

    .line 202
    .local v9, corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v22, v0

    .line 205
    .local v22, corruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v10, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 206
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 212
    .end local v22           #corruptTexture:Lcom/htc/sunny2/Texture;
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v10

    .line 215
    .local v10, drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v23, v0

    .line 218
    .local v23, drmCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 219
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 225
    .end local v23           #drmCorruptTexture:Lcom/htc/sunny2/Texture;
    :goto_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v11

    .line 228
    .local v11, videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v31, v0

    .line 231
    .local v31, videoCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 232
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 238
    .end local v31           #videoCorruptTexture:Lcom/htc/sunny2/Texture;
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v12

    .line 241
    .local v12, loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    move-object/from16 v30, v0

    .line 244
    .local v30, loadingTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 245
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 251
    .end local v30           #loadingTexture:Lcom/htc/sunny2/Texture;
    :goto_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v29

    .line 268
    .local v29, is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v17, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v13

    .line 271
    .local v13, drmTextBGLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    move-object/from16 v24, v0

    .line 274
    .local v24, drmTextBGTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v14, v0

    .line 275
    .local v14, w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 276
    .local v15, h:F
    const/16 v16, 0x0

    sget v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 277
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 278
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v14, v19

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v15, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 284
    .end local v14           #w:F
    .end local v15           #h:F
    .end local v24           #drmTextBGTexture:Lcom/htc/sunny2/Texture;
    :goto_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v16

    .line 287
    .local v16, drmTextLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    move-object/from16 v25, v0

    .line 290
    .local v25, drmTextTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v14, v0

    .line 291
    .restart local v14       #w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 292
    .restart local v15       #h:F
    const/16 v19, 0x0

    sget v20, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    const/16 v21, 0x0

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v21}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 293
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 294
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v14, v19

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v15, v20

    invoke-virtual/range {v16 .. v20}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 300
    .end local v14           #w:F
    .end local v15           #h:F
    .end local v25           #drmTextTexture:Lcom/htc/sunny2/Texture;
    :goto_9
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 164
    .end local v5           #playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    .end local v6           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v10           #drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v11           #videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v12           #loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v13           #drmTextBGLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v16           #drmTextLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v29           #is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_2
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - playableLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    .restart local v5       #playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    :cond_3
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - playableLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 195
    .restart local v6       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_4
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 210
    .restart local v9       #corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_5
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - corruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 223
    .restart local v10       #drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_6
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmCorruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 236
    .restart local v11       #videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_7
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - videoCorruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 249
    .restart local v12       #loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_8
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - loadingLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 282
    .restart local v13       #drmTextBGLayer:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v29       #is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_9
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 298
    .restart local v16       #drmTextLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_a
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 331
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 332
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 333
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 334
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_6

    .line 336
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 338
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 341
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 354
    const/4 v2, 0x0

    .line 357
    .local v2, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 363
    :goto_1
    const/4 v1, 0x1

    .line 364
    .local v1, isJPSFullSideBySide:Z
    if-eqz v2, :cond_0

    const-string v4, "image/jps"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    if-eqz v1, :cond_0

    .line 368
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 381
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 382
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 383
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v4, :cond_1

    .line 385
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 388
    :cond_1
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_8

    .line 390
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 396
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 399
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 400
    const/4 v3, -0x1

    .line 401
    .local v3, quality:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    .line 403
    if-nez v3, :cond_9

    .line 404
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 410
    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_4

    if-nez v3, :cond_5

    .line 411
    :cond_4
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 414
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 416
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 417
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 422
    .end local v1           #isJPSFullSideBySide:Z
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #quality:I
    :cond_6
    :goto_4
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 344
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 347
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 348
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 359
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 361
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, ""

    goto/16 :goto_1

    .line 394
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isJPSFullSideBySide:Z
    :cond_8
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2

    .line 405
    .restart local v3       #quality:I
    :cond_9
    if-ne v3, v6, :cond_2

    .line 406
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_3

    .line 419
    :cond_a
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_4
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    return-void
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunny2/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V

    return-object v0
.end method

.method public detachFromScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 3
    .parameter "parentSceneNode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 313
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 314
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 315
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 318
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 320
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 325
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 327
    :cond_3
    return-void
.end method

.method public freeShareResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 681
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 689
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    .line 690
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 691
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    .line 692
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 693
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    .line 694
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 695
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    .line 696
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 697
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    .line 698
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 699
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    .line 700
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 701
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextBG:Lcom/htc/sunny2/Texture;

    .line 702
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 703
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmText:Lcom/htc/sunny2/Texture;

    .line 704
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 705
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    .line 709
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getImageRotateDegrees()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    return v0
.end method

.method public getSourceImageHeight()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getSourceImageWidth()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 1317
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 1320
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-eqz v1, :cond_1

    .line 1321
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1323
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    return v0
.end method

.method public onFrameSizeUpdate(FF)V
    .locals 11
    .parameter "frameWidth"
    .parameter "frameHeight"

    .prologue
    const/high16 v4, 0x4000

    .line 714
    const/4 v6, 0x0

    .line 715
    .local v6, adjustLayout:Z
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 717
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 718
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 719
    const/4 v6, 0x1

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 725
    .local v1, drmWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 728
    .local v2, drmHeight:F
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v9, v0

    .line 729
    .local v9, gridHeight:F
    div-float v0, v9, v4

    div-float v3, v1, v4

    sub-float/2addr v0, v3

    neg-float v0, v0

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v3, v3

    add-float v7, v0, v3

    .line 730
    .local v7, drmX:F
    div-float v0, v9, v4

    div-float v3, v2, v4

    sub-float/2addr v0, v3

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v3, v3

    add-float v8, v0, v3

    .line 731
    .local v8, drmY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    neg-float v3, v7

    neg-float v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 732
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_2

    .line 734
    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 735
    .local v10, txtView:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 765
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v7           #drmX:F
    .end local v8           #drmY:F
    .end local v9           #gridHeight:F
    .end local v10           #txtView:Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 770
    :cond_3
    return-void
.end method

.method public onImageGeometryUpdate(FFFF)V
    .locals 10
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x4000

    .line 806
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    if-nez v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, p3, p4, v5}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 809
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, p1, p2, v4}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 812
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_1

    .line 814
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 815
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 816
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 817
    .local v2, drmHeight:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getScale()[F

    move-result-object v8

    .line 819
    .local v8, imageScale:[F
    const/4 v3, 0x0

    aget v3, v8, v3

    div-float/2addr v3, v9

    div-float v4, v1, v9

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 820
    .local v6, drmX:F
    const/4 v3, 0x1

    aget v3, v8, v3

    div-float/2addr v3, v9

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 821
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 823
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #imageScale:[F
    :cond_1
    return-void
.end method

.method public onImageGeometryUpdateWithUVAdjust(FFFFF)V
    .locals 15
    .parameter "fitToScreenAspect"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    .line 773
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 775
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v3, 0x3f80

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 777
    div-float v13, p2, p3

    .line 778
    .local v13, imageAspect:F
    cmpl-float v2, p1, v13

    if-ltz v2, :cond_1

    .line 779
    div-float v14, v13, p1

    .line 780
    .local v14, uSpan:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 781
    .local v4, u0:F
    const/high16 v2, 0x3f80

    sub-float v6, v2, v4

    .line 782
    .local v6, u1:F
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v5, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    .line 790
    .end local v4           #u0:F
    .end local v6           #u1:F
    .end local v13           #imageAspect:F
    .end local v14           #uSpan:F
    :cond_0
    :goto_0
    return-void

    .line 784
    .restart local v13       #imageAspect:F
    :cond_1
    div-float v14, p1, v13

    .line 785
    .restart local v14       #uSpan:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 786
    .local v10, v0:F
    const/high16 v2, 0x3f80

    sub-float v12, v2, v10

    .line 787
    .local v12, v1:F
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    goto :goto_0
.end method

.method public onImageTextureExpired()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 880
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 881
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 882
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 883
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 885
    :cond_0
    return-void
.end method

.method public onImageTextureReady(Lcom/htc/sunny2/Texture;)V
    .locals 9
    .parameter "texture"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 827
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_0

    .line 829
    if-eqz p1, :cond_0

    .line 831
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v7, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 832
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 833
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 837
    :cond_0
    const/4 v3, 0x0

    .line 838
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 839
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 840
    .local v0, checkTextureSizeUpdate:Z
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    .line 842
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    .line 843
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lt v4, v3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-ge v4, v2, :cond_2

    .line 844
    :cond_1
    const/4 v0, 0x1

    .line 845
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][GalleryFullScreenViewItem][onImageTextureReady]this.sourceImageWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this.sourceImageHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][GalleryFullScreenViewItem][onImageTextureReady]sourceImageDimensionWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sourceImageDimensionHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    .line 852
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 858
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_4

    .line 859
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v1

    .line 860
    .local v1, quality:I
    if-nez v1, :cond_6

    .line 861
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-direct {p0, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 868
    .end local v1           #quality:I
    :cond_4
    :goto_1
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 869
    return-void

    .line 856
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    goto :goto_0

    .line 863
    .restart local v1       #quality:I
    :cond_6
    if-ne v1, v8, :cond_4

    .line 864
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_1
.end method

.method public onSetImageAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    .line 802
    :cond_0
    return-void
.end method

.method public onSetImageVisible(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 796
    :cond_0
    return-void
.end method

.method public refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 7
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 463
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 464
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 465
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v3, :cond_4

    .line 467
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 468
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 470
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 471
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 490
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 491
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v3, :cond_0

    .line 493
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 499
    const/4 v2, 0x0

    .line 502
    .local v2, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 508
    :goto_1
    const/4 v1, 0x1

    .line 509
    .local v1, isJPSFullSideBySide:Z
    if-eqz v2, :cond_1

    const-string v3, "image/jps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    if-eqz v1, :cond_1

    .line 513
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 518
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_6

    .line 520
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 526
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 529
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 530
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v3, :cond_4

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    .end local p2
    invoke-interface {p2}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    if-nez v3, :cond_4

    .line 533
    :cond_3
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 536
    .end local v1           #isJPSFullSideBySide:Z
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_4
    return-void

    .line 472
    .restart local p2
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 474
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    .line 477
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 478
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    .line 504
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 506
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_1

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isJPSFullSideBySide:Z
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2
.end method

.method public resetConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1119
    :cond_0
    return-void
.end method

.method public setConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1111
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 4
    .parameter "isCorrupted"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 991
    if-eqz p1, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 994
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 995
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 996
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 997
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 998
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1002
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1010
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 13
    .parameter "mediaData"

    .prologue
    .line 915
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_0

    .line 917
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - indicatorSprite is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_0
    return-void

    .line 920
    :cond_0
    if-nez p1, :cond_1

    .line 922
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - mediaData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 925
    :cond_1
    const-string v3, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 926
    .local v11, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v11, :cond_8

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 928
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_c

    .line 930
    if-nez v11, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getContentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 931
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 932
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setupIndicator: Drm is ForwardLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 937
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_9

    .line 939
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 940
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 941
    .local v2, drmHeight:F
    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v8, v3

    .line 942
    .local v8, gridHeight:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 943
    .local v6, drmX:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 944
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 945
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 952
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #gridHeight:F
    :goto_2
    const/4 v10, 0x0

    .line 953
    .local v10, isStateSuccess:Z
    instance-of v3, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_5

    move-object v3, p1

    .line 954
    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v10

    .line 956
    :cond_5
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 957
    .local v12, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    if-eq v3, v12, :cond_6

    .line 958
    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 959
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 961
    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_a

    const/4 v9, 0x1

    .line 962
    .local v9, isDisplayDrmText:Z
    :goto_3
    if-eqz v9, :cond_7

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_7

    .line 963
    const/4 v9, 0x0

    .line 965
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 966
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 967
    if-eqz v10, :cond_b

    .line 968
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 969
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 926
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 949
    .restart local v0       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_9
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 961
    .restart local v10       #isStateSuccess:Z
    .restart local v12       #text:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 971
    .restart local v9       #isDisplayDrmText:Z
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 972
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 973
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 974
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 975
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 977
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 982
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 983
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 984
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 985
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0
.end method

.method public setIndicatorSpriteVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 1327
    return-void
.end method

.method public setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 8
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1123
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1126
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1127
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1128
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 1131
    :cond_0
    if-eqz p1, :cond_4

    .line 1133
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1135
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP - itemPaintLayerInfo.bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_1
    :goto_0
    return-void

    .line 1139
    :cond_2
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 1140
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    .line 1142
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - paintTexture.getHandler() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1144
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1148
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    iget v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1149
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v7, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1150
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1151
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    if-eqz v0, :cond_1

    .line 1153
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;->onPaintLayerSetEnd()V

    goto :goto_0

    .line 1158
    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - itemPaintLayerInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setItemPaintTransparency(I)V
    .locals 2
    .parameter "transparency"

    .prologue
    .line 1164
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1166
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - transparency range incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    goto :goto_0
.end method

.method public setTextureUseMaxQualityAs(I)V
    .locals 9
    .parameter "quality"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1176
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    if-eqz v3, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1179
    .local v0, textureEQ:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1180
    .local v1, textureHQ:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 1181
    .local v2, textureLQ:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_2

    if-lt p1, v7, :cond_2

    .line 1183
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1184
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1185
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 1211
    .end local v0           #textureEQ:Lcom/htc/sunny2/Texture;
    .end local v1           #textureHQ:Lcom/htc/sunny2/Texture;
    .end local v2           #textureLQ:Lcom/htc/sunny2/Texture;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_1

    .line 1212
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 1214
    :cond_1
    return-void

    .line 1188
    .restart local v0       #textureEQ:Lcom/htc/sunny2/Texture;
    .restart local v1       #textureHQ:Lcom/htc/sunny2/Texture;
    .restart local v2       #textureLQ:Lcom/htc/sunny2/Texture;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt p1, v6, :cond_3

    .line 1190
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1191
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1192
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1196
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1198
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1199
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1200
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1205
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1206
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1207
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 12
    .parameter "bForce"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v5, 0x4000

    .line 1281
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    .line 1283
    const/4 v9, 0x0

    .line 1284
    .local v9, isStateSuccess:Z
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_0

    .line 1286
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v9

    .line 1288
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 1289
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    if-eqz v9, :cond_4

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_4

    .line 1291
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_3

    .line 1293
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1294
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1295
    .local v2, drmHeight:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getScale()[F

    move-result-object v8

    .line 1297
    .local v8, imageScale:[F
    aget v3, v8, v10

    div-float/2addr v3, v5

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 1298
    .local v6, drmX:F
    aget v3, v8, v11

    div-float/2addr v3, v5

    div-float v4, v2, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 1299
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1300
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v10, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1301
    invoke-virtual {v0, v11}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1313
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #imageScale:[F
    .end local v9           #isStateSuccess:Z
    :cond_2
    :goto_0
    return-void

    .line 1305
    .restart local v0       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v9       #isStateSuccess:Z
    :cond_3
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1310
    :cond_4
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator - do nothing for state not success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 426
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 427
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 428
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 429
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 430
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 431
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 433
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 434
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 435
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 436
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 437
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 438
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 439
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 440
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 441
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 442
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 444
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 445
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 446
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 447
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 448
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 449
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 450
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 452
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 453
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 455
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 456
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 457
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 458
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 459
    return-void
.end method
