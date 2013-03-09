.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
.super Lcom/htc/sunny2/view/SView;
.source "FilmstripViewChildItem.java"

# interfaces
.implements Lcom/htc/sunny2/ViewItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/view/SView;",
        "Lcom/htc/sunny2/ViewItem",
        "<",
        "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FIXED_CHILD_HEIGHT:I = 0x0

.field private static final FIXED_SHADOW_HEIGHT:I = 0x4c

.field private static LOG_TAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0x5

.field protected static final SPRITE_LAYER_DRM:I = 0x4

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_BACKGROUND:I = 0x0

.field protected static final SPRITE_LAYER_MAIN_COUNT:I = 0x2

.field protected static final SPRITE_LAYER_MAIN_IMAGE:I = 0x1

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1

.field private static sTextureManager:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDrm:Z

.field private isPlayable:Z

.field protected mCenterXOffset:I

.field protected mCenterYOffset:I

.field private mEnableShadow:Z

.field protected mFrame:Landroid/graphics/Rect;

.field protected mItemHeight:I

.field private mItemRoot:Lcom/htc/sunny2/SceneNode;

.field protected mItemWidth:I

.field protected mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field protected mOriginX:I

.field protected mOriginY:I

.field private mScale:F

.field private mShadowRatio:F

.field private mShowShadow:Z

.field private mSpriteIndicator:Lcom/htc/sunny2/Sprite;

.field private mSpriteMain:Lcom/htc/sunny2/Sprite;

.field private mSpriteShadow:Lcom/htc/sunny2/Sprite;

.field protected mSunnyContext:Lcom/htc/sunny2/SunnyContext;

.field private mTextureHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    .line 34
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIPVIEW_ITEM_HEIGHT:I

    sput v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/view/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 66
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    .line 75
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    .line 76
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShadowRatio:F

    .line 94
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 95
    sget v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 96
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 97
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 99
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    .line 100
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 101
    return-void
.end method


# virtual methods
.method public attachToScene(Lcom/htc/sunny2/SceneNode;)Z
    .locals 1
    .parameter "sceneNode"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public attachToSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 0
    .parameter "parentSceneNode"

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunny2/SceneNode;)Z

    .line 614
    return-void
.end method

.method public bindData(Lcom/htc/sunny2/IMediaData;)V
    .locals 12
    .parameter "data"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 359
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eq v6, p1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 362
    check-cast p1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 365
    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v6, :cond_1

    .line 492
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 370
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    move v6, v8

    :goto_1
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 372
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v2

    .line 373
    .local v2, rotateDegrees:I
    rem-int/lit16 v2, v2, 0x168

    .line 374
    if-gez v2, :cond_3

    .line 376
    add-int/lit16 v2, v2, 0x168

    .line 379
    :cond_3
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v6, :cond_8

    .line 381
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 382
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 467
    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    if-ne v6, v8, :cond_4

    .line 469
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 471
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 473
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 476
    :cond_5
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    .line 477
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    .line 478
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    .line 479
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    .line 480
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10, v11}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 481
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 482
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x4298

    invoke-virtual {v6, v8, v9, v11}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 483
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 485
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v6, :cond_6

    .line 486
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    add-int/lit8 v6, v6, 0x4c

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 488
    :cond_6
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 490
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 491
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    goto/16 :goto_0

    .end local v2           #rotateDegrees:I
    :cond_7
    move v6, v7

    .line 370
    goto/16 :goto_1

    .line 384
    .restart local v2       #rotateDegrees:I
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 386
    :cond_9
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_VIDEO:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 387
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2

    .line 425
    :cond_a
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, sourceImageWidth:I
    const/4 v4, 0x0

    .line 429
    .local v4, sourceImageHeight:I
    const/16 v6, 0x5a

    if-eq v2, v6, :cond_b

    const/16 v6, 0x10e

    if-ne v2, v6, :cond_e

    .line 431
    :cond_b
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v5

    .line 432
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    .line 442
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    .line 444
    .local v0, isJPSFullSideBySide:Z
    if-eqz v1, :cond_c

    const-string v6, "image/jps"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 446
    if-eqz v0, :cond_c

    .line 448
    div-int/lit8 v5, v5, 0x2

    .line 452
    :cond_c
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v5, v4, v6}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v3

    .line 454
    .local v3, size:[I
    aget v6, v3, v7

    sget v9, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v6, v9, :cond_d

    .line 455
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v6, v3, v7

    .line 457
    :cond_d
    aget v6, v3, v7

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 458
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2

    .line 436
    .end local v0           #isJPSFullSideBySide:Z
    .end local v1           #mimeType:Ljava/lang/String;
    .end local v3           #size:[I
    :cond_e
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v5

    .line 437
    iget-object v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    goto :goto_3

    .line 462
    .end local v4           #sourceImageHeight:I
    .end local v5           #sourceImageWidth:I
    :cond_f
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 463
    sget v6, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    iput v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    goto/16 :goto_2
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 0
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    .line 617
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    .line 618
    return-void
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

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
    .line 628
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 629
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    return-object v0
.end method

.method public create(I)V
    .locals 18
    .parameter "env"

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    .line 107
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    .line 108
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    if-nez v7, :cond_0

    .line 109
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v8, "create mSpriteMain NG"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    .line 168
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 114
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 116
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    .line 117
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 119
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    .line 121
    const/high16 v7, 0x4298

    sget v8, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShadowRatio:F

    .line 122
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShadowRatio:F

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->setReverseRatio(F)V

    .line 124
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v8}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 125
    .local v16, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v7}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v7}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v7

    if-eqz v7, :cond_2

    if-nez v16, :cond_2

    .line 126
    :cond_1
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v8, "create - SunnyContext or shared texture is empty, unable to set share resources to sprite"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    goto/16 :goto_0

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 129
    .local v1, mask:Lcom/htc/sunny2/Sprite$Layer;
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 130
    const/4 v7, 0x0

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->shadowTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v7, v8}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 133
    .local v2, playableLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunny2/Texture;

    .line 134
    .local v15, playableTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v7

    int-to-float v3, v7

    invoke-virtual {v15}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    int-to-float v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 135
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v15}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 136
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    .line 139
    .local v3, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    .line 140
    .local v14, drmTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v7

    int-to-float v4, v7

    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v8, v8

    sub-float v6, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v14}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    neg-float v7, v7

    sget v8, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 141
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v14}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 142
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    .line 145
    .local v4, corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunny2/Texture;

    .line 146
    .local v12, corruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v7

    int-to-float v5, v7

    invoke-virtual {v12}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    int-to-float v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 147
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v12}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 148
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v5

    .line 151
    .local v5, drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunny2/Texture;

    .line 152
    .local v13, drmCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v7

    int-to-float v6, v7

    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 153
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 154
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    .line 157
    .local v6, videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    .line 158
    .local v17, videoCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 159
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 160
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 162
    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    iput v7, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 173
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 175
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 176
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 178
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 179
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 181
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 182
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 183
    :cond_0
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SunnyContext or shared texture is empty"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    goto :goto_0
.end method

.method public detachFromScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 1
    .parameter "sceneNode"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 355
    return-void
.end method

.method public enableShadow(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/high16 v1, 0x4218

    const/4 v2, 0x0

    .line 541
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    .line 543
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 546
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2, v2, v2}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 554
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2, v1, v2}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 551
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2, v1, v2}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 552
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    sget v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1, v2}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    goto :goto_0
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getData()Lcom/htc/sunny2/IMediaData;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    return v0
.end method

.method public getItemCenter()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    return v0
.end method

.method public getItemRootNode()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getItemScale()F
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 201
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSprite()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    return v0
.end method

.method public getXCenterOffset()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    return v0
.end method

.method public getYCenterOffset()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    return v0
.end method

.method public loadResources(Landroid/content/Context;ILcom/htc/sunny2/SunnyContext;)V
    .locals 4
    .parameter "context"
    .parameter "env"
    .parameter "sunnyContext"

    .prologue
    .line 558
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    .line 559
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    .line 560
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "loadResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 564
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-nez v0, :cond_0

    .line 565
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources - create sharedTexture for sunnyContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .end local v0           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    invoke-direct {v0, p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;-><init>(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 567
    .restart local v0       #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    const v1, 0x7f020015

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    .line 568
    const v1, 0x7f020023

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunny2/Texture;

    .line 569
    const v1, 0x7f020024

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunny2/Texture;

    .line 570
    const v1, 0x7f020013

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunny2/Texture;

    .line 571
    const v1, 0x7f020020

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunny2/Texture;

    .line 572
    const v1, 0x7f020003

    invoke-static {p1, v1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->shadowTexture:Lcom/htc/sunny2/Texture;

    .line 573
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    .line 575
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 4
    .parameter "x"

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 232
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 233
    return-void
.end method

.method public releaseResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 581
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    if-nez v1, :cond_1

    .line 582
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    const-string v2, "releaseResources NG - SunnyContext is 0"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 586
    .local v0, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-eqz v0, :cond_0

    .line 587
    iget v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    if-eqz v1, :cond_2

    .line 588
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources NG - referenceCount != 0 , referenceCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_2
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 591
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    .line 592
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 593
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->playableTexture:Lcom/htc/sunny2/Texture;

    .line 594
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 595
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->corruptTexture:Lcom/htc/sunny2/Texture;

    .line 596
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 597
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmCorruptTexture:Lcom/htc/sunny2/Texture;

    .line 598
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 599
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->videoCorruptTexture:Lcom/htc/sunny2/Texture;

    .line 600
    iget-object v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->shadowTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 601
    iput-object v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->shadowTexture:Lcom/htc/sunny2/Texture;

    .line 603
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->referenceCount:I

    .line 605
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 607
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseResources - Shared texture release for mSunnyContetx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCorrupted(Z)V
    .locals 5
    .parameter "isCorrupted"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 635
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 636
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 637
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 638
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 640
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 647
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Z)V
    .locals 14
    .parameter "isDrm"

    .prologue
    const/4 v13, 0x4

    const/high16 v3, 0x4000

    .line 650
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 651
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite$Layer;->getGeometry()[I

    move-result-object v7

    .line 652
    .local v7, geomertry:[I
    const/4 v1, 0x2

    aget v11, v7, v1

    .line 653
    .local v11, originalX:I
    const/4 v1, 0x3

    aget v10, v7, v1

    .line 654
    .local v10, origianlY:I
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 655
    .local v12, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    if-nez v12, :cond_0

    .line 665
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v6, v12, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    .line 659
    .local v6, drmTexture:Lcom/htc/sunny2/Texture;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    sub-int v8, v1, v2

    .line 660
    .local v8, newX:I
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    add-int v9, v1, v2

    .line 661
    .local v9, newY:I
    if-ne v8, v11, :cond_1

    if-eq v9, v10, :cond_2

    .line 662
    :cond_1
    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v13}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setItemScale(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "updateValue"

    .prologue
    const/high16 v1, 0x3f80

    .line 522
    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2

    move v0, v1

    .line 523
    .local v0, newScale:F
    :goto_0
    if-nez p2, :cond_0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    .line 524
    :cond_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mScale:F

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v2, v0, v0, v1}, Lcom/htc/sunny2/SceneNode;->setScale(FFF)V

    .line 527
    return-void

    .end local v0           #newScale:F
    :cond_2
    move v0, p1

    .line 522
    goto :goto_0
.end method

.method public setPlayable(Z)V
    .locals 2
    .parameter "isPlayable"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 669
    return-void
.end method

.method public setPosition(IIZ)V
    .locals 4
    .parameter "posX"
    .parameter "posY"
    .parameter "fromLeft"

    .prologue
    .line 252
    if-eqz p3, :cond_0

    .line 253
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    .line 256
    :goto_0
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    .line 258
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->getNodeId()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    .line 260
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 261
    return-void

    .line 255
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mOriginX:I

    goto :goto_0
.end method

.method public setRenderOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemRoot:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    .line 537
    return-void
.end method

.method public setTexture(Lcom/htc/sunny2/Texture;)V
    .locals 17
    .parameter "texture"

    .prologue
    .line 265
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v2, :cond_7

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_9

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/Texture;->getSourceWidth()I

    move-result v9

    .line 268
    .local v9, imageWidthFromTexture:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/Texture;->getSourceHeight()I

    move-result v8

    .line 270
    .local v8, imageHeightFromTexture:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    if-lez v9, :cond_0

    if-lez v8, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2, v9, v8}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    .line 278
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v11

    .line 279
    .local v11, mimeType:Ljava/lang/String;
    const/4 v10, 0x1

    .line 280
    .local v10, isJPSFullSideBySide:Z
    if-eqz v11, :cond_1

    const-string v2, "image/jps"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    if-eqz v10, :cond_1

    .line 284
    div-int/lit8 v9, v9, 0x2

    .line 289
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v12

    .line 290
    .local v12, rotateDegrees:I
    rem-int/lit16 v12, v12, 0x168

    .line 291
    if-gez v12, :cond_2

    .line 293
    add-int/lit16 v12, v12, 0x168

    .line 295
    :cond_2
    const/16 v2, 0x5a

    if-eq v12, v2, :cond_3

    const/16 v2, 0x10e

    if-ne v12, v2, :cond_4

    .line 298
    :cond_3
    move v15, v9

    .line 299
    .local v15, temp:I
    move v9, v8

    .line 300
    move v8, v15

    .line 302
    .end local v15           #temp:I
    :cond_4
    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    invoke-static {v9, v8, v2}, Lcom/htc/opensense2/album/util/ImageUtils;->countNewSize(III)[I

    move-result-object v14

    .line 304
    .local v14, size:[I
    const/4 v2, 0x0

    aget v2, v14, v2

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    if-le v2, v3, :cond_5

    .line 306
    const/4 v2, 0x0

    sget v3, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->WIDTH_FILMSTRIP_MAX:I

    aput v3, v14, v2

    .line 309
    :cond_5
    const/4 v2, 0x0

    aget v2, v14, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    .line 310
    sget v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->FIXED_CHILD_HEIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    .line 311
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setDrm(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPlayable(Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mTextureHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x4298

    const/high16 v5, 0x3f80

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 319
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_6

    .line 320
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->sTextureManager:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v3}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;

    .line 321
    .local v13, sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v2}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_6

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 323
    .local v1, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v7, v13, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;->drmTexture:Lcom/htc/sunny2/Texture;

    .line 324
    .local v7, drmTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v16, 0x4000

    div-float v6, v6, v16

    sub-float/2addr v5, v6

    neg-float v5, v5

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->FILMSTRIP_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 328
    .end local v1           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v7           #drmTexture:Lcom/htc/sunny2/Texture;
    .end local v13           #sharedTexture:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem$SharedTexture;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemWidth:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterXOffset:I

    .line 329
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mItemHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mCenterYOffset:I

    .line 334
    .end local v8           #imageHeightFromTexture:I
    .end local v9           #imageWidthFromTexture:I
    .end local v10           #isJPSFullSideBySide:Z
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #rotateDegrees:I
    .end local v14           #size:[I
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-nez v2, :cond_a

    .line 344
    :cond_8
    :goto_1
    return-void

    .line 330
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    if-eqz v2, :cond_7

    .line 331
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setCorrupted(Z)V

    goto :goto_0

    .line 338
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mEnableShadow:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mShowShadow:Z

    if-eqz v2, :cond_8

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteShadow:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    goto :goto_1

    .line 338
    :cond_b
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public unbindData()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 497
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 498
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteMain:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 500
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 501
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 502
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 503
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 504
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSpriteIndicator:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 506
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isDrm:Z

    .line 507
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->isPlayable:Z

    .line 508
    return-void
.end method

.method public unbindDataWithoutSetTexture()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 513
    return-void
.end method

.method public unbindMediaData()V
    .locals 0

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 623
    return-void
.end method
