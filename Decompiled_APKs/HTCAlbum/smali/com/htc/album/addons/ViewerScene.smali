.class public Lcom/htc/album/addons/ViewerScene;
.super Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.source "ViewerScene.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mViewWebPhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/album/addons/ViewerScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    return-void
.end method

.method private onSyncPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-boolean v2, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 185
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v0

    .line 188
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setDataPath(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 146
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 158
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->onDetails()V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->onProtectionInfo()V

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->toggle3D()V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a009f -> :sswitch_1
        0x7f0a00a0 -> :sswitch_0
        0x7f0b00ef -> :sswitch_2
        0x7f0b00f0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/ViewerScene;->onSyncPhoto()V

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x4e89
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const v8, 0x7f0b00f0

    const v7, 0x7f0b00ef

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 113
    iget-boolean v4, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 141
    :goto_0
    return v4

    .line 115
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 117
    iget-object v4, p0, Lcom/htc/album/addons/ViewerScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 118
    .local v3, position:I
    iget-object v4, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v4, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 119
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_1

    move v4, v6

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    .line 123
    :cond_2
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget v4, p0, Lcom/htc/album/addons/ViewerScene;->mSWButtonState:I

    if-nez v4, :cond_5

    .line 127
    invoke-interface {p1, v6, v8, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 135
    :cond_3
    :goto_1
    const-string v4, "video/x-wmv-drm"

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 136
    .local v1, isWMDrm:Z
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    .line 137
    const v4, 0x7f0a009f

    const/16 v7, 0x23

    const v8, 0x20c01fa

    invoke-interface {p1, v6, v4, v7, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 140
    :cond_4
    const v4, 0x7f0a00a0

    const/16 v7, 0x24

    const v8, 0x20c01fe

    invoke-interface {p1, v6, v4, v7, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .local v2, menuItem:Landroid/view/MenuItem;
    move v4, v5

    .line 141
    goto :goto_0

    .line 131
    .end local v1           #isWMDrm:Z
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_5
    invoke-interface {p1, v6, v7, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onSendToForeground(Landroid/os/Bundle;)V

    .line 89
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/album/addons/SingleCollection;

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 94
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 96
    .local v1, scheme:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/addons/ViewerScene;->mViewWebPhoto:Z

    .line 101
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 102
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v4, p0, Lcom/htc/album/addons/ViewerScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 103
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onCreate()V

    .line 104
    iget-object v3, p0, Lcom/htc/album/addons/ViewerScene;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/addons/ViewerScene;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 109
    .end local v0           #img:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method protected onSetAs()V
    .locals 5

    .prologue
    .line 207
    iget-object v1, p0, Lcom/htc/album/addons/ViewerScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 208
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/album/addons/ViewerScene;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/addons/ViewerScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/album/addons/ViewerScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;

    .line 209
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/htc/album/addons/ViewerScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method
