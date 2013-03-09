.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;
.super Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.source "SceneLocalPhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_THUMBNAIL_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoThumbnail"

.field private static final THUMB_IMAGE_STATUS_FIRST:I = 0x0

.field private static final THUMB_IMAGE_STATUS_LAST:I = 0x1

.field private static final THUMB_IMAGE_STATUS_NONE:I = -0x1

.field private static final TIMER_PROGRESS_LOADING:I = 0x258


# instance fields
.field private m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

.field private mAnimationState:I

.field private mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

.field private mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDestroyController:Z

.field private mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOldDmr:Ljava/lang/String;

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mThumbImageStatus:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 79
    iput-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 80
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 83
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 84
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    .line 85
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 86
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 88
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0, v2, v2, v2}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    .line 90
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 92
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    .line 94
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 1310
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showControlBars()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method private getDMRPos()I
    .locals 5

    .prologue
    .line 347
    const/4 v3, -0x1

    .line 348
    .local v3, pos:I
    invoke-static {}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getPickDMRParam()Ljava/lang/Object;

    move-result-object v2

    .line 349
    .local v2, param:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 351
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #param:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 369
    :cond_0
    :goto_0
    return v3

    .line 355
    .restart local v2       #param:Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v3

    .line 356
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 361
    .local v1, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    move v3, v0

    .line 364
    goto :goto_0

    .line 358
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getFirstValidPos()I
    .locals 6

    .prologue
    .line 374
    const/4 v3, -0x1

    .line 375
    .local v3, pos:I
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_0

    move v4, v3

    .line 394
    .end local v3           #pos:I
    .local v4, pos:I
    :goto_0
    return v4

    .line 378
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 379
    .local v0, count:I
    if-gtz v0, :cond_1

    move v4, v3

    .line 380
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0

    .line 382
    .end local v4           #pos:I
    .restart local v3       #pos:I
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 384
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 385
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_3

    .line 382
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 387
    :cond_3
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 390
    move v3, v1

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    move v4, v3

    .line 394
    .end local v3           #pos:I
    .restart local v4       #pos:I
    goto :goto_0
.end method

.method private onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 295
    new-instance v2, Landroid/media/MediaScanner;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 296
    .local v2, ms:Landroid/media/MediaScanner;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 297
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "filePath"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, dstFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 300
    const-string v3, "external"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 309
    :cond_0
    return-void
.end method

.method private onClickShareItemSelected(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 4
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 103
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 105
    .local v0, ri:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v2, "SharedAdapter.KEY_PACKAGE"

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    instance-of v1, v0, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    if-eqz v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    const-string v3, "SharedAdapter.KEY_SHARE_TO"

    move-object v1, v0

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/htc/album/helper/MenuManager;->callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;I)V
    .locals 7
    .parameter "selectDMR"
    .parameter "pos"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v5, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 317
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 318
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    .line 320
    .local v3, collectionInfo:Lcom/htc/album/modules/collection/Collection;
    const/4 v5, -0x1

    if-eq p2, v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v5, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 324
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_0

    .line 326
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 327
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 329
    const-string v5, "folder_type"

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v5, "key_folder_name"

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v5, "key_bucket_id"

    invoke-virtual {v3}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_2
    const-string v5, "position"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 338
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p1, v5, v6, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v5

    invoke-static {v0, p1, v5, p2, v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onDataSetChange(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 1142
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mIsBound:Z

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 1144
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, selectIdx:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    if-ne v1, v2, :cond_1

    .line 1147
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1150
    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v1, -0x1

    if-ne v1, p1, :cond_4

    .line 1151
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_5

    .line 1153
    :cond_3
    const-string v1, "SceneLocalPhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t decode title image: mDecodeFirstImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSceneControl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_4
    :goto_0
    return-void

    .line 1158
    :cond_5
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method

.method private onEditPhoto(I)V
    .locals 6
    .parameter "nIndex"

    .prologue
    const/4 v4, 0x0

    .line 943
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 944
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v2, "[onEditPhoto] SceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 948
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 949
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    goto :goto_0
.end method

.method private onSlideShow(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, -0x1

    .line 955
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 956
    .local v0, activity:Landroid/app/Activity;
    move v1, p1

    .line 958
    .local v1, itemPosition:I
    if-ne v3, v1, :cond_0

    .line 960
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 962
    if-ne v1, v3, :cond_0

    .line 963
    const/4 v1, 0x0

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/htc/album/helper/MenuManager;->launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V

    .line 968
    return-void
.end method

.method private onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 4
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"

    .prologue
    .line 972
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 974
    .local v1, c:Lcom/htc/album/modules/collection/Collection;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 975
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "itemIndex"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v2, "folder_type"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "key_folder_name"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v2, "key_bucket_id"

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v2, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    invoke-static {p2, p3, v2, v0}, Lcom/htc/album/helper/MenuManager;->playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 985
    :cond_1
    return-void
.end method

.method private playImage(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 6
    .parameter "nIndex"
    .parameter "activity"
    .parameter "targetImg"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 989
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    invoke-static {p2, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, dmr:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 996
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    invoke-static {p2, v0, v2, p1, p4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCLocalPhotos(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImageList;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1001
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 1003
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1005
    const/4 v2, 0x3

    const/16 v3, 0x1398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v2, v3, v5, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 1016
    :cond_3
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v3, "SceneLocalPhotoFullscreen"

    invoke-interface {v2, p4, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateThumbImageStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 421
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    .line 424
    :cond_0
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 430
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->showLatest()Z

    move-result v1

    if-eq v4, v1, :cond_3

    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    :cond_3
    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0

    .line 435
    :cond_4
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    goto :goto_0
.end method


# virtual methods
.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 1228
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1210
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1211
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 1213
    const-string v3, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][getHeaderTitle]: 2"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    :goto_0
    return-object v2

    .line 1217
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 1218
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 1221
    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, szTitle:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1130
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataChangedAt(I)V

    .line 1131
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 1132
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1123
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->notifyDataSetChanged()V

    .line 1124
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 1125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 187
    if-eq p2, v10, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 236
    :sswitch_0
    invoke-static {v0, v11}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 238
    const-string v7, "DMR"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, selectDMR:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 245
    .local v4, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 247
    .local v1, directMode:I
    if-eqz v4, :cond_2

    .line 249
    const-string v7, "directmode"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 251
    if-ne v1, v9, :cond_2

    .line 254
    const-string v7, "directmode"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v7, "SceneLocalPhotoThumbnail"

    const-string v8, "[HTCAlbum][SceneLocalPhotoThumbnail][onActivityResult]: Reset direct mode"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    const/4 v5, -0x1

    .line 261
    .local v5, pos:I
    if-ne v1, v9, :cond_3

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_3

    .line 262
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v5

    .line 266
    :goto_1
    if-eqz v6, :cond_4

    .line 268
    invoke-direct {p0, v6, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDMRChanged(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    .end local v1           #directMode:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #pos:I
    .end local v6           #selectDMR:Ljava/lang/String;
    :sswitch_1
    invoke-static {v0, p2, p3}, Lcom/htc/album/helper/MenuManager;->setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V

    goto :goto_0

    .line 200
    :sswitch_2
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v8, v9}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :sswitch_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drm_content"

    invoke-virtual {p3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v0, v7, v8, v9, v10}, Lcom/htc/album/helper/MenuManager;->doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 215
    :sswitch_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v7, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :sswitch_5
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v7, p3}, Lcom/htc/album/helper/MenuManager;->doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :sswitch_6
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :sswitch_7
    invoke-direct {p0, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onActivityResult_CROP_NONE(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 264
    .restart local v1       #directMode:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #pos:I
    .restart local v6       #selectDMR:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getFirstValidPos()I

    move-result v5

    goto :goto_1

    .line 272
    :cond_4
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 274
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 275
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_5

    .line 277
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    .line 278
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->bindService(Landroid/content/Context;Landroid/os/Handler;)Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    .line 282
    .end local v2           #handler:Landroid/os/Handler;
    :cond_5
    if-eq v5, v10, :cond_0

    .line 284
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v7, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 285
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0, v5, v0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x1398 -> :sswitch_0
        0x7f00 -> :sswitch_7
        0x7f03 -> :sswitch_1
        0x7f08 -> :sswitch_7
        0x110000 -> :sswitch_2
        0x220000 -> :sswitch_4
        0x330000 -> :sswitch_3
        0x440000 -> :sswitch_5
        0x550000 -> :sswitch_6
    .end sparse-switch
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1105
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onAnimationEnd(I)V

    .line 1106
    packed-switch p1, :pswitch_data_0

    .line 1114
    :goto_0
    return-void

    .line 1110
    :pswitch_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 1106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 755
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_0
    const-string v2, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 761
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v3, 0x0

    const-string v4, "SceneLocalFolder"

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 767
    :goto_0
    return v5

    .line 765
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->invalidateControlBars()V

    .line 447
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->updateThumbImageStatus()V

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, selectIdx:I
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mThumbImageStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 450
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    .line 454
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onBindAdapter()V

    .line 456
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 457
    .local v0, activty:Landroid/app/Activity;
    new-instance v3, Lcom/htc/album/helper/DeleteManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;

    invoke-direct {v4, p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 460
    new-instance v3, Lcom/htc/album/helper/ThreeDFlattenManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    new-instance v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;

    invoke-direct {v4, p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$FlattenListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$1;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/htc/album/helper/ThreeDFlattenManager;-><init>(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    .line 461
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v2, v3}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    .line 464
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->sendRequest(Landroid/content/Context;Lcom/htc/sunny2/IMediaData;)V

    .line 466
    const/16 v2, 0x2724

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onRemoveMessage(I)V

    .line 467
    const/16 v2, 0x2728

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 468
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 850
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v5

    .line 854
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 855
    .local v2, position:I
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 856
    .local v1, activity:Landroid/app/Activity;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 858
    .local v3, selectedImg:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 862
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 933
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected] Unsupported context menu operation."

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 938
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 867
    :sswitch_0
    invoke-direct {p0, v2, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_1

    .line 872
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onEditPhoto(I)V

    goto :goto_1

    .line 877
    :sswitch_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 882
    :sswitch_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;

    goto :goto_1

    .line 887
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 894
    :sswitch_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0, v2, v3}, Lcom/htc/album/helper/DeleteManager;->deleteSingleMedia(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_1

    .line 899
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto :goto_1

    .line 904
    :sswitch_7
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v4, "[onContextItemSelected][PRINT]"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/helper/MenuManager;->preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 910
    :sswitch_8
    const-string v0, "SceneLocalPhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LocalGridviewTemplate][onMainViewContextItemSelected][TRIM]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 918
    :sswitch_9
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-static {v1, v0}, Lcom/htc/album/helper/MenuManager;->showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 923
    :sswitch_a
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v0, v1, v3}, Lcom/htc/album/helper/MenuManager;->showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto/16 :goto_1

    .line 928
    :sswitch_b
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_1

    .line 862
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a008e -> :sswitch_0
        0x7f0a008f -> :sswitch_0
        0x7f0a0090 -> :sswitch_1
        0x7f0a0092 -> :sswitch_3
        0x7f0a0093 -> :sswitch_4
        0x7f0a0095 -> :sswitch_5
        0x7f0a0097 -> :sswitch_6
        0x7f0a009b -> :sswitch_2
        0x7f0a009c -> :sswitch_7
        0x7f0a009d -> :sswitch_9
        0x7f0a009f -> :sswitch_a
        0x7f0a00a0 -> :sswitch_b
        0x7f0b00ee -> :sswitch_8
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v10, 0x1

    .line 642
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v9, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 646
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v9

    if-ne v10, v9, :cond_2

    .line 648
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    .line 657
    :sswitch_0
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v11, 0x0

    const-string v12, "SceneLocalFolder"

    invoke-interface {v9, v11, v12, v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 662
    :sswitch_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v7

    .line 663
    .local v7, itemPosition:I
    if-ne v7, v12, :cond_3

    .line 665
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 667
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 668
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v9

    if-nez v9, :cond_4

    .line 670
    move v7, v5

    .line 676
    .end local v5           #i:I
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    const/4 v9, 0x3

    const/16 v10, 0x1398

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v1, v9, v10, v11, v12}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 665
    .restart local v1       #context:Landroid/content/Context;
    .restart local v5       #i:I
    .restart local v6       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 685
    .end local v5           #i:I
    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v7           #itemPosition:I
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.htc.album.ACTION_PICK_DELETE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v2, delete:Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v3, extras:Landroid/os/Bundle;
    const-string v11, "collection_info"

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 688
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 689
    const-string v9, "show_drm_all"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    const-string v9, "*/*"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 692
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    const/high16 v10, 0x10a

    const v11, 0x10a0001

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 697
    .end local v2           #delete:Landroid/content/Intent;
    .end local v3           #extras:Landroid/os/Bundle;
    :sswitch_3
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, folderType:Ljava/lang/String;
    const-string v9, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 701
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoSnapbooth(Landroid/app/Activity;)V

    .line 712
    :goto_2
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v9, :cond_0

    .line 713
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v8

    .line 714
    .local v8, pos:I
    if-ne v8, v12, :cond_0

    .line 715
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v9, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    goto/16 :goto_0

    .line 705
    .end local v8           #pos:I
    .restart local v1       #context:Landroid/content/Context;
    :cond_5
    const/4 v0, 0x0

    .line 707
    .local v0, bVideo:Z
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v9

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v9

    if-lez v9, :cond_6

    move v0, v10

    .line 709
    :goto_3
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-static {v1, v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    goto :goto_2

    .restart local v1       #context:Landroid/content/Context;
    :cond_6
    move v0, v11

    .line 707
    goto :goto_3

    .line 723
    .end local v0           #bVideo:Z
    .end local v4           #folderType:Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onSlideShow(I)V

    goto/16 :goto_0

    .line 728
    :sswitch_5
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/htc/album/helper/MenuManager;->callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V

    goto/16 :goto_0

    .line 734
    .restart local v1       #context:Landroid/content/Context;
    :sswitch_6
    invoke-static {v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 652
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0xd -> :sswitch_4
        0x10 -> :sswitch_1
        0x12 -> :sswitch_5
        0x13 -> :sswitch_0
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 1061
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1062
    .local v0, animationBundle:Landroid/os/Bundle;
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    .line 1063
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    .line 1064
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1065
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_0

    .line 844
    .end local p3
    :goto_0
    return-void

    .line 781
    .restart local p3
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v13, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 783
    .local v13, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast p3, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget v15, v0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 784
    .local v15, position:I
    invoke-virtual {v13}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCanSetAsImageCount()I

    move-result v6

    .line 786
    .local v6, count:I
    invoke-virtual {v13, v15}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 787
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v3, :cond_1

    .line 789
    const-string v1, "SceneLocalPhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateContextMenu]: skip1..."

    invoke-static {v1, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 794
    .local v2, context:Landroid/content/Context;
    const/4 v14, 0x0

    .line 795
    .local v14, isWMDrm:Z
    if-eqz v3, :cond_2

    const-string v1, "video/x-wmv-drm"

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    const/4 v14, 0x1

    .line 799
    :cond_2
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 800
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0x20128

    invoke-virtual/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager;->makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I

    move-result v12

    .line 807
    .local v12, exclusion:I
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v14, :cond_4

    .line 809
    :cond_3
    if-eqz v14, :cond_8

    const/16 v16, 0x1

    .line 810
    .local v16, type:I
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 813
    or-int/lit8 v12, v12, 0x4

    .line 817
    .end local v16           #type:I
    :cond_4
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isTrimExists(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 819
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 822
    const/4 v1, 0x0

    const v4, 0x7f0b00ee

    const/16 v5, 0x11

    const v7, 0x7f0b00ee

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v4, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 826
    :cond_5
    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    if-nez v14, :cond_6

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintSupport(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 833
    :cond_6
    const/high16 v1, 0x8

    or-int/2addr v12, v1

    .line 838
    :cond_7
    const/high16 v1, 0x1

    or-int/2addr v12, v1

    .line 839
    const/high16 v1, 0x10

    or-int/2addr v12, v1

    .line 841
    invoke-static {v3, v12}, Lcom/htc/album/helper/MenuManager;->exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p1

    move-object v11, v3

    invoke-virtual/range {v7 .. v12}, Lcom/htc/album/helper/MenuManager;->showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v3

    .line 809
    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v16

    goto/16 :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 122
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 127
    :goto_0
    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v1, p1, p2}, Lcom/htc/album/helper/ThreeDFlattenManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 531
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 532
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 533
    .local v1, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v1

    .line 535
    return-object v1
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 512
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 514
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 515
    const/16 v2, 0x10

    invoke-virtual {v1, v0, v3, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 516
    const/4 v2, 0x3

    invoke-virtual {v1, v0, v3, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 517
    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 519
    return-object v1
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 482
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v1

    .line 483
    .local v1, gv:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 484
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setPadding(IIII)V

    .line 487
    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-direct {v2, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 488
    return-object v1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1033
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 1

    .prologue
    .line 492
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onDestroyScene()V

    .line 493
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;->exit()V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDecodeFirstImage:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$DecodeFirstImage;

    .line 497
    :cond_0
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 409
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 410
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createHeaderBar(IZ)V

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->createFooterBar(IZ)V

    .line 412
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableInvalidateWhenShow(Z)V

    .line 413
    return-void
.end method

.method protected onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V
    .locals 2
    .parameter "view"
    .parameter "index"

    .prologue
    .line 1172
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V

    .line 1176
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {p1}, Lcom/htc/sunny2/view/SView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(Lcom/htc/sunny2/view/Vector3F;)V

    .line 1177
    return-void
.end method

.method protected onItemSelected(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 1185
    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onItemSelected]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1188
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1191
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v1, :cond_0

    .line 1194
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetGridview;

    .line 1195
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mItemClickPosition:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v3, p1, v4}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunny2/view/Vector3F;)V

    .line 1197
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1198
    .local v2, anAlbum:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    .line 1201
    invoke-direct {p0, p1, v0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onViewMediaContent(ILandroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    .line 133
    const/4 v3, 0x1

    .line 134
    .local v3, isHandled:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 169
    const/4 v3, 0x0

    .line 173
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 174
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v3

    .line 177
    .end local v3           #isHandled:Z
    :cond_1
    return v3

    .line 137
    .restart local v3       #isHandled:Z
    :sswitch_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    if-eqz v4, :cond_0

    .line 141
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z

    if-eqz v4, :cond_2

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->getService()Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 145
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 146
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDestroyController:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-static {v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;->unbindService(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)V

    .line 153
    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mConnection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SceneLocalPhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mServiceCallback Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    .line 158
    .local v2, hb:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 159
    .local v1, firstImage:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 160
    if-nez v1, :cond_3

    .line 161
    const v4, 0x7f02000e

    invoke-virtual {v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v2, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x139a -> :sswitch_0
        0x5078 -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 403
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->enableEntryProgressload()V

    .line 404
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 405
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 1

    .prologue
    .line 1137
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNotifyUpdateComplete()V

    .line 1138
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->onDataSetChange(I)V

    .line 1139
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstIndexPostion()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->markSelection(II)V

    .line 507
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPause()V

    .line 508
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 4
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 1069
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAnimationState:I

    packed-switch v0, :pswitch_data_0

    .line 1100
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 1101
    return-void

    .line 1078
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;

    invoke-direct {v1, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1095
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1096
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->hideControlBars()V

    goto :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x1

    .line 1038
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 1039
    .local v0, anim:Z
    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v1, :cond_0

    .line 1048
    if-ne p1, v2, :cond_0

    .line 1051
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1052
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->showControlBars()V

    .line 1056
    :cond_0
    return v0
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 21
    .parameter "footer"

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v10

    .line 544
    .local v10, activity:Landroid/app/Activity;
    if-eqz v10, :cond_0

    .line 546
    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 547
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v11, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 550
    .local v11, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v12

    .line 551
    .local v12, collection:Lcom/htc/album/modules/collection/Collection;
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-result-object v15

    .line 552
    .local v15, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    if-eqz v12, :cond_0

    if-eqz v15, :cond_0

    .line 554
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v20

    .line 555
    .local v20, totalCount:I
    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getDrmContentCount()I

    move-result v13

    .line 557
    .local v13, drmCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 558
    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v3

    .line 563
    .local v3, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    if-eqz v15, :cond_2

    .line 565
    if-lez v20, :cond_2

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableImageCount()I

    move-result v4

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getSharableVideoCount()I

    move-result v5

    sub-int v6, v13, v20

    if-nez v6, :cond_b

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;IIZ)Z

    move-result v17

    .line 573
    .local v17, result:Z
    if-nez v17, :cond_2

    .line 574
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->removeButton(I)V

    .line 579
    .end local v17           #result:Z
    :cond_2
    const/16 v19, 0x1

    .line 580
    .local v19, showSlideShow:Z
    const-string v1, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {v12}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    move/from16 v0, v20

    if-eq v1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 586
    :cond_4
    const/16 v19, 0x0

    .line 588
    :cond_5
    sub-int v1, v13, v20

    if-nez v1, :cond_6

    .line 589
    const/16 v19, 0x0

    .line 590
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 591
    invoke-virtual {v11, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 592
    const/16 v19, 0x1

    .line 598
    .end local v14           #i:I
    :cond_6
    if-eqz v19, :cond_7

    .line 600
    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    const v9, 0x7f0b010d

    move-object/from16 v4, p1

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 603
    :cond_7
    const/16 v18, 0x1

    .line 605
    .local v18, showPrint:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isPrintExists(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 607
    const/16 v18, 0x0

    .line 611
    :cond_8
    sub-int v1, v13, v20

    if-eqz v1, :cond_9

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    move/from16 v0, v20

    if-ne v1, v0, :cond_a

    .line 613
    :cond_9
    const/16 v18, 0x0

    .line 616
    :cond_a
    or-int v1, v19, v18

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    .line 618
    const/4 v1, 0x0

    const/16 v4, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v16

    .line 620
    .local v16, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v1, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0b010a

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    .line 621
    if-eqz v18, :cond_0

    .line 623
    const/16 v1, 0x12

    const/4 v4, 0x0

    const v5, 0x7f0b010e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto/16 :goto_0

    .line 567
    .end local v16           #moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v18           #showPrint:Z
    .end local v19           #showSlideShow:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 590
    .restart local v14       #i:I
    .restart local v19       #showSlideShow:Z
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 628
    .end local v14           #i:I
    .restart local v18       #showPrint:Z
    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const v9, 0x7f0b010a

    move-object/from16 v4, p1

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public onShare(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 633
    const-string v0, "SceneLocalPhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneLocalPhotoThumbnail][onShare]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mShareItemClickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/album/helper/ShareMenuManager;->onLocalShareFolderClick(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    .line 638
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 474
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->m3DFlattenManager:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->release()V

    .line 475
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 476
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onUnbindAdapter()V

    .line 477
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1024
    const-string v0, "SceneLocalPhotoThumbnail"

    return-object v0
.end method
