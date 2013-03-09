.class public Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
.super Lcom/htc/sunny2/widget/gridview/GridViewItem;
.source "ThumbnailItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;,
        Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;
    }
.end annotation


# static fields
.field private static final FLAG_DRM:I = 0x2

.field private static final FLAG_PLAYABLE:I = 0x1

.field private static final SPRITE_LAYER_BACKGROUND:I = 0x0

.field private static final SPRITE_LAYER_BOTTOM_TEXT:I = 0x1

.field private static final SPRITE_LAYER_CENTER_TEXT:I = 0xa

.field private static final SPRITE_LAYER_COUNT:I = 0xd

.field private static final SPRITE_LAYER_DELETE:I = 0x8

.field private static final SPRITE_LAYER_DRM:I = 0x7

.field private static final SPRITE_LAYER_DRM_CORRUPT:I = 0x4

.field private static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x2

.field private static final SPRITE_LAYER_INKED:I = 0xb

.field private static final SPRITE_LAYER_IS_3D:I = 0xc

.field private static final SPRITE_LAYER_PICKER:I = 0x8

.field private static final SPRITE_LAYER_PLAYABLE:I = 0x6

.field private static final SPRITE_LAYER_SELECTOR:I = 0x9

.field private static final SPRITE_LAYER_THUMBNAIL:I = 0x5

.field private static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundResId:I

.field private mBgTexture:Lcom/htc/sunny2/Texture;

.field private mBottomTexture:Lcom/htc/sunny2/Texture;

.field private mBottomView:Landroid/widget/TextView;

.field private mCenterTextTexture:Lcom/htc/sunny2/Texture;

.field private mCenterTextView:Landroid/widget/TextView;

.field private mHeight:I

.field private mPrivateFlag:I

.field private mShareTextureKey:Ljava/lang/String;

.field private mSprite:Lcom/htc/sunny2/Sprite;

.field private mStyle:I

.field private mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 2
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 137
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    .line 138
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    .line 139
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBackgroundResId:I

    .line 141
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    .line 142
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyContext;->getSunnyContext()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 9
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 334
    if-nez p2, :cond_1

    .line 335
    sget-object v6, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindMediaData NG - MediaData is null, data index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    move-object v2, p2

    .line 339
    .local v2, mData:Lcom/htc/sunny2/IMediaData;
    const/4 v3, 0x0

    .line 340
    .local v3, mediaDataGallery:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    instance-of v6, v2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v6, :cond_8

    move-object v3, v2

    .line 341
    check-cast v3, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 347
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    if-eqz v6, :cond_2

    .line 348
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    invoke-interface {v6, p1, p0, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;->onItemBindMediaDataIRT(ILcom/htc/sunny2/widget/gridview/GridViewItem;Lcom/htc/sunny2/IMediaData;)V

    .line 351
    :cond_2
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v6, v8

    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setPlayable(Z)V

    .line 352
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 353
    instance-of v6, v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 355
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isInked()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setInked(Z)V

    .line 359
    :cond_4
    instance-of v6, v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v6

    if-eqz v6, :cond_a

    move v1, v8

    .line 360
    .local v1, is3D:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setIs3D(Z)V

    .line 362
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setCorrupted(Z)V

    .line 364
    iget v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    if-ne v6, v8, :cond_5

    .line 365
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v5

    .line 366
    .local v5, useLayer:Lcom/htc/sunny2/Sprite$Layer;
    invoke-virtual {v5, v8}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 382
    .end local v5           #useLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

    if-eqz v6, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v6

    if-nez v6, :cond_6

    .line 383
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

    invoke-interface {v6, p1, v2}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;->getThumbnailImage(ILcom/htc/sunny2/IMediaData;)Lcom/htc/sunny2/Texture;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setThumbnail(Lcom/htc/sunny2/Texture;)V

    .line 386
    :cond_6
    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    .line 387
    .local v4, rotateDegrees:I
    rem-int/lit16 v4, v4, 0x168

    .line 388
    if-gez v4, :cond_7

    .line 389
    add-int/lit16 v4, v4, 0x168

    .line 391
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 393
    instance-of v6, v2, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    if-eqz v6, :cond_0

    move-object v6, v2

    .line 394
    check-cast v6, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setBottomText(Ljava/lang/String;)V

    move-object v6, v2

    .line 395
    check-cast v6, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    invoke-interface {v6}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getCenterText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setCenterText(Ljava/lang/String;)V

    .line 396
    check-cast v2, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;

    .end local v2           #mData:Lcom/htc/sunny2/IMediaData;
    invoke-interface {v2}, Lcom/htc/opensense2/album/sunny/IMediaDataDLNA;->getBackground()I

    move-result v0

    .line 397
    .local v0, bgResId:I
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setBackground(I)V

    goto/16 :goto_0

    .line 343
    .end local v0           #bgResId:I
    .end local v1           #is3D:Z
    .end local v4           #rotateDegrees:I
    .restart local v2       #mData:Lcom/htc/sunny2/IMediaData;
    :cond_8
    sget-object v6, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->TAG:Ljava/lang/String;

    const-string v7, "mediaData is not instance of IMediaDataGallery"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v6, v7

    .line 351
    goto/16 :goto_1

    :cond_a
    move v1, v7

    .line 359
    goto :goto_2
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 150
    .local v0, item:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setStyle(I)V

    .line 151
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBackgroundResId:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBackgroundResId:I

    .line 152
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

    .line 153
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    iput-object v1, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBindMediaDataListener:Lcom/htc/sunny2/widget/gridview/GridViewItem$BindMediaDataListener;

    .line 154
    return-object v0
.end method

.method public createResource()V
    .locals 46

    .prologue
    .line 162
    invoke-super/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->createResource()V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v42

    .line 165
    .local v42, sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    if-nez v42, :cond_0

    .line 166
    new-instance v42, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;

    .end local v42           #sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailSharedTexture;-><init>(Lcom/htc/sunny2/widget/gridview/ThumbnailItem;Landroid/content/Context;)V

    .line 167
    .restart local v42       #sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    const/4 v3, 0x0

    move-object/from16 v0, v42

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setSharedTexture(Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;)V

    .line 170
    :cond_0
    move-object/from16 v0, v42

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    .line 172
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v5, v3, v4

    .line 173
    .local v5, mImgOriginalX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v6, v3, v4

    .line 175
    .local v6, mImgOriginalY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_1

    .line 176
    const/16 v3, 0xd

    invoke-static {v3}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    .line 183
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 184
    .local v2, bgLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual/range {v42 .. v42}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getBackgroundTexture()Lcom/htc/sunny2/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v30

    .line 189
    .local v30, bottomLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v7

    .line 193
    .local v7, imageCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_IMAGE_CORRUPT"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v31

    .line 194
    .local v31, corruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/4 v12, 0x0

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v7, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v8

    .line 199
    .local v8, videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_VIDEO_CORRUPT"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v45

    .line 200
    .local v45, videoCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v45 .. v45}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v9, v3

    invoke-virtual/range {v45 .. v45}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v10, v3

    const/4 v13, 0x0

    move v11, v5

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 201
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v8, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 202
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v9

    .line 205
    .local v9, drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_DRM_CORRUPT"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v33

    .line 206
    .local v33, drmCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v33 .. v33}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v10, v3

    invoke-virtual/range {v33 .. v33}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v11, v3

    const/4 v14, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 207
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v9, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 208
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v10

    .line 212
    .local v10, thumbLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v12, v3

    const/4 v15, 0x0

    move v13, v5

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 213
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v11

    .line 217
    .local v11, playLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_PLAYABLE"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v41

    .line 220
    .local v41, playTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v41 .. v41}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v12, v3

    invoke-virtual/range {v41 .. v41}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v13, v3

    const/16 v16, 0x0

    move v14, v5

    move v15, v6

    invoke-virtual/range {v11 .. v16}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 221
    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v11, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 222
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v37

    .line 231
    .local v37, inkedLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v12

    .line 235
    .local v12, is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_3D"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v39

    .line 236
    .local v39, is3DTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v39 .. v39}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v40

    .line 237
    .local v40, is3DWidth:I
    invoke-virtual/range {v39 .. v39}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v38

    .line 238
    .local v38, is3DHeight:I
    move/from16 v0, v40

    int-to-float v13, v0

    move/from16 v0, v38

    int-to-float v14, v0

    move/from16 v0, v40

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->GRID_3D_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v15, v3, v4

    move/from16 v0, v38

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->GRID_3D_ICON_Y_OFFSET:I

    int-to-float v4, v4

    sub-float v16, v3, v4

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 239
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v12, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v13

    .line 244
    .local v13, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    const-string v3, "NAME_TEXTUREE_DRM"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v35

    .line 245
    .local v35, drmTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v36

    .line 246
    .local v36, drmWidth:I
    invoke-virtual/range {v35 .. v35}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v34

    .line 247
    .local v34, drmHeight:I
    move/from16 v0, v36

    int-to-float v14, v0

    move/from16 v0, v34

    int-to-float v15, v0

    move/from16 v0, v36

    neg-int v3, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v16, v3, v4

    move/from16 v0, v34

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float v17, v3, v4

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 248
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v13, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 249
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v14

    .line 253
    .local v14, pickerLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 255
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v44

    .line 256
    .local v44, unpickedTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v3, v3

    neg-float v3, v3

    invoke-virtual/range {v44 .. v44}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v15, 0x4000

    div-float/2addr v4, v15

    add-float v17, v3, v4

    .line 257
    .local v17, pickerX:F
    invoke-virtual/range {v44 .. v44}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v18, v3, v4

    .line 258
    .local v18, pickerY:F
    invoke-virtual/range {v44 .. v44}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v15, v3

    invoke-virtual/range {v44 .. v44}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v16, v0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v14, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 269
    .end local v17           #pickerX:F
    .end local v18           #pickerY:F
    .end local v44           #unpickedTexture:Lcom/htc/sunny2/Texture;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v24

    .line 273
    .local v24, selLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v0, v3

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v0, v3

    move/from16 v26, v0

    const/16 v29, 0x0

    move/from16 v27, v5

    move/from16 v28, v6

    invoke-virtual/range {v24 .. v29}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 274
    const/4 v3, 0x0

    const-string v4, "NAME_TEXTUREE_SELECTED"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 275
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v43

    .line 279
    .local v43, textLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 288
    return-void

    .line 261
    .end local v24           #selLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v43           #textLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 263
    const-string v3, "NAME_TEXTUREE_DELETE"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v32

    .line 264
    .local v32, deleteTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v3, v3

    neg-float v3, v3

    const/high16 v4, 0x4000

    div-float v22, v3, v4

    .line 265
    .local v22, deleteX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float v23, v3, v4

    .line 266
    .local v23, deleteY:F
    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    invoke-virtual/range {v32 .. v32}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 267
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v14, v3, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto/16 :goto_0
.end method

.method public freeResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 295
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 300
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomTexture:Lcom/htc/sunny2/Texture;

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->release()V

    .line 305
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    .line 316
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->release()V

    .line 317
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v0

    .line 321
    .local v0, sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    if-eqz v0, :cond_4

    .line 322
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    .line 323
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->referenceCount:I

    if-nez v1, :cond_4

    .line 324
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->removeSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    .line 325
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->release()V

    .line 329
    :cond_4
    invoke-super {p0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->freeResource()V

    .line 330
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 441
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 436
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 431
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setMeasuredDimension(II)V

    .line 432
    return-void
.end method

.method public setBackground(I)V
    .locals 5
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    .line 473
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    .line 482
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 483
    return-void

    .line 476
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 477
    .local v1, opt:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 478
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 479
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBgTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 18
    .parameter "text"

    .prologue
    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 535
    .local v1, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomView:Landroid/widget/TextView;

    .line 536
    .local v12, tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomTexture:Lcom/htc/sunny2/Texture;

    .line 538
    .local v13, texture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v15, v2, -0xa

    .line 540
    .local v15, width:I
    if-eqz p1, :cond_2

    .line 541
    if-nez v12, :cond_0

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 555
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .end local v12           #tView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 556
    .restart local v12       #tView:Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v15, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomView:Landroid/widget/TextView;

    .line 560
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const/high16 v2, 0x4000

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 563
    .local v11, measureW:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 564
    .local v10, measureH:I
    invoke-virtual {v12, v11, v10}, Landroid/widget/TextView;->measure(II)V

    .line 565
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v12, v2, v3, v15, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 567
    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    .line 569
    .local v14, viewH:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 570
    .local v4, mImgOriginalX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    div-int/lit8 v3, v14, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6

    int-to-float v5, v2

    .line 571
    .local v5, mImgOriginalY:F
    int-to-float v2, v15

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 572
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 574
    if-nez v13, :cond_1

    .line 575
    invoke-static {v12}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    .line 577
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 579
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mBottomTexture:Lcom/htc/sunny2/Texture;

    .line 585
    :goto_0
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    .line 586
    .local v7, H:I
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v8

    .line 588
    .local v8, W:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v6, v15

    int-to-float v0, v8

    move/from16 v16, v0

    div-float v6, v6, v16

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 590
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 595
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v7           #H:I
    .end local v8           #W:I
    .end local v10           #measureH:I
    .end local v11           #measureW:I
    .end local v14           #viewH:I
    :goto_1
    return-void

    .line 582
    .restart local v4       #mImgOriginalX:F
    .restart local v5       #mImgOriginalY:F
    .restart local v10       #measureH:I
    .restart local v11       #measureW:I
    .restart local v14       #viewH:I
    :cond_1
    invoke-virtual {v13, v12}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 593
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v10           #measureH:I
    .end local v11           #measureW:I
    .end local v14           #viewH:I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 16
    .parameter "text"

    .prologue
    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    .line 487
    .local v1, layer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextView:Landroid/widget/TextView;

    .line 488
    .local v12, tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 490
    .local v13, texture:Lcom/htc/sunny2/Texture;
    if-eqz p1, :cond_2

    .line 491
    if-nez v12, :cond_0

    .line 492
    new-instance v12, Landroid/widget/TextView;

    .end local v12           #tView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v6, 0x203004f

    invoke-direct {v12, v2, v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    .restart local v12       #tView:Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    const/4 v6, -0x2

    invoke-direct {v2, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    const/16 v2, 0x11

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v11, v2

    .line 496
    .local v11, size:I
    const/4 v2, 0x0

    int-to-float v3, v11

    invoke-virtual {v12, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 497
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextView:Landroid/widget/TextView;

    .line 499
    .end local v11           #size:I
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 502
    .local v10, measureW:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 503
    .local v9, measureH:I
    invoke-virtual {v12, v10, v9}, Landroid/widget/TextView;->measure(II)V

    .line 504
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-virtual {v12, v2, v3, v6, v14}, Landroid/widget/TextView;->layout(IIII)V

    .line 506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 507
    .local v4, mImgOriginalX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v5, v2, v3

    .line 508
    .local v5, mImgOriginalY:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 509
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 511
    if-nez v13, :cond_1

    .line 512
    invoke-static {v12}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    .line 514
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 516
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mCenterTextTexture:Lcom/htc/sunny2/Texture;

    .line 522
    :goto_0
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v7

    .line 523
    .local v7, H:I
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v8

    .line 525
    .local v8, W:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v6, v6

    int-to-float v14, v8

    div-float/2addr v6, v14

    invoke-virtual {v12}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v7

    div-float/2addr v14, v15

    invoke-virtual {v1, v2, v3, v6, v14}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 531
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v7           #H:I
    .end local v8           #W:I
    .end local v9           #measureH:I
    .end local v10           #measureW:I
    :goto_1
    return-void

    .line 519
    .restart local v4       #mImgOriginalX:F
    .restart local v5       #mImgOriginalY:F
    .restart local v9       #measureH:I
    .restart local v10       #measureW:I
    :cond_1
    invoke-virtual {v13, v12}, Lcom/htc/sunny2/Texture;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 529
    .end local v4           #mImgOriginalX:F
    .end local v5           #mImgOriginalY:F
    .end local v9           #measureH:I
    .end local v10           #measureW:I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setCorrupted(Z)V
    .locals 5
    .parameter "isCorrupted"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 608
    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 610
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 611
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 612
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 613
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 615
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 618
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 626
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 627
    .local v0, isDrm:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 628
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    .line 629
    const/4 v1, 0x0

    .line 630
    .local v1, isStateSuccess:Z
    instance-of v4, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v4, :cond_1

    .line 631
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v1

    .line 633
    :cond_1
    if-eqz v1, :cond_3

    .line 634
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 635
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 650
    .end local v1           #isStateSuccess:Z
    :goto_1
    return-void

    .end local v0           #isDrm:Z
    .restart local p1
    :cond_2
    move v0, v2

    .line 626
    goto :goto_0

    .line 637
    .end local p1
    .restart local v0       #isDrm:Z
    .restart local v1       #isStateSuccess:Z
    :cond_3
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 638
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 639
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 640
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 642
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 643
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1

    .line 646
    .end local v1           #isStateSuccess:Z
    .restart local p1
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    .line 647
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 648
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_1
.end method

.method public setInked(Z)V
    .locals 0
    .parameter "isInked"

    .prologue
    .line 701
    return-void
.end method

.method public setIs3D(Z)V
    .locals 2
    .parameter "is3D"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 705
    return-void
.end method

.method public setPicked(ZLcom/htc/sunny2/view/animation/SAnimationController;)V
    .locals 9
    .parameter "isSelected"
    .parameter "controller"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 654
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v0

    .line 656
    .local v0, sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v2

    .line 658
    .local v2, useLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    packed-switch v3, :pswitch_data_0

    .line 686
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->cancelAnimation()V

    .line 687
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 688
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 689
    invoke-virtual {v2, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 660
    :pswitch_0
    const/4 v1, 0x0

    .line 661
    .local v1, temp:Lcom/htc/sunny2/Texture;
    if-eqz p1, :cond_1

    .line 662
    const-string v3, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 666
    :goto_1
    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v2, v6, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 664
    :cond_1
    const-string v3, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    goto :goto_1

    .line 671
    .end local v1           #temp:Lcom/htc/sunny2/Texture;
    :pswitch_1
    if-eqz p2, :cond_2

    .line 672
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->cancelAnimation()V

    .line 673
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 678
    :goto_2
    if-eqz p1, :cond_3

    .line 679
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    .line 683
    :goto_3
    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->cancelAnimation()V

    .line 676
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_2

    .line 681
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    goto :goto_3

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPlayable(Z)V
    .locals 2
    .parameter "isPlayable"

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 605
    return-void

    .line 602
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2
    .parameter "isPressed"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 697
    return-void
.end method

.method public setStyle(I)V
    .locals 14
    .parameter "style"

    .prologue
    .line 446
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    if-eq v1, p1, :cond_0

    .line 447
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    .line 449
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v12

    .line 450
    .local v12, sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    if-eqz v12, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    if-nez v1, :cond_1

    .line 470
    .end local v12           #sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    :cond_0
    :goto_0
    return-void

    .line 452
    .restart local v12       #sharedTexture:Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 453
    .local v0, pickerLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 455
    const-string v1, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v12, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v13

    .line 456
    .local v13, unpickedTexture:Lcom/htc/sunny2/Texture;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4000

    div-float/2addr v2, v5

    add-float v3, v1, v2

    .line 457
    .local v3, pickerX:F
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v4, v1, v2

    .line 458
    .local v4, pickerY:F
    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0

    .line 461
    .end local v3           #pickerX:F
    .end local v4           #pickerY:F
    .end local v13           #unpickedTexture:Lcom/htc/sunny2/Texture;
    :cond_2
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 463
    const-string v1, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v12, v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v11

    .line 464
    .local v11, deleteTexture:Lcom/htc/sunny2/Texture;
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mWidth:I

    int-to-float v1, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float v8, v1, v2

    .line 465
    .local v8, deleteX:F
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 466
    .local v9, deleteY:F
    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v11}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v1

    int-to-float v7, v1

    const/4 v10, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 467
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0
.end method

.method public setThumbnail(Lcom/htc/sunny2/Texture;)V
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 711
    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 714
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setThumbnailImageGetter(Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mThumbnailImageGetter:Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;

    .line 159
    return-void
.end method

.method public unbindMediaData()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 405
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mPrivateFlag:I

    .line 406
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setThumbnail(Lcom/htc/sunny2/Texture;)V

    .line 408
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 410
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 411
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 412
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 413
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 414
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 415
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 416
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 417
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 418
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 419
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 425
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->mShareTextureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->getSharedTexture(Ljava/lang/String;)Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;

    move-result-object v1

    const-string v2, "NAME_TEXTURE_BACKGROUND"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem$SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 427
    :cond_0
    return-void
.end method
