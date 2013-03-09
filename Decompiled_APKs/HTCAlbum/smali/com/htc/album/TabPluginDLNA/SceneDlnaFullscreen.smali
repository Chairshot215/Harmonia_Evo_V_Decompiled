.class public Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.source "SceneDlnaFullscreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen$DetailDlgParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase",
        "<",
        "Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_DLNA_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_DLNA_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneDlnaFullscreen"


# instance fields
.field private final SCENE_ID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;-><init>()V

    .line 30
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    .line 520
    return-void
.end method

.method private onDMRChanged(Ljava/lang/String;)V
    .locals 12
    .parameter "selectDMR"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v7

    .line 478
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 482
    .local v8, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v8, :cond_0

    .line 485
    iget-object v4, v8, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 488
    .local v4, contentId:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 489
    .local v6, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v6, :cond_0

    .line 492
    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v10

    .line 494
    .local v10, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v10, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 498
    .local v11, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v9

    .line 500
    .local v9, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v5, browseBundle:Landroid/os/Bundle;
    const-string v0, "folder_type"

    invoke-virtual {v6}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "location"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "key_bucket_id"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "key_folder_name"

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "startIdx"

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 506
    const-string v0, "endIdx"

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 507
    const-string v0, "direction"

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v0, "directory_info"

    invoke-virtual {v5, v0, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 510
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "AdapterDlnaFullscreen"

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, szSubText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_0
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 56
    const-string v0, "SceneDlnaFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][notifyDataChangedAt]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enablePageProgressLoading(Z)V

    .line 59
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const/16 v1, 0x1398

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 455
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, selectDMR:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 119
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onDisableTransitionAnimation(Z)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onLastViewItemUpdate()V

    .line 123
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "SceneDlnaGridview"

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 113
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onBack()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 241
    const-string v2, "SceneDlnaFullscreen"

    const-string v3, "[HTCAlbum][SceneDlnaFullscreen][onBindAdapter]: ..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onBindAdapter()V

    .line 244
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "DLNA_CONTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, contentId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItemIndex(Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, nIndex:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, v3, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;I)V

    .line 248
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onBindAdapter]: nIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->sendIDLEScrollState(I)V

    .line 250
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v0, "SceneDlnaFullscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onControlButtonClick]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 325
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onBack()V

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->showOutputChoice()V

    goto :goto_0

    .line 331
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRefresh()V

    goto :goto_0

    .line 334
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onRequestDetails()V

    goto :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_2
        0xb -> :sswitch_3
        0x10 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 190
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 192
    :cond_0
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 387
    const-string v3, "SceneDlnaFullscreen"

    const-string v4, "[HtcAlbum][SceneDlnaFullscreen][onCreateFooterBar]  "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 390
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 391
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 392
    const/16 v3, 0xb

    const v5, 0x7f0b0121

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 393
    const/4 v3, 0x6

    const v5, 0x20c0202

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 395
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 396
    .local v6, footer:Landroid/view/ViewGroup;
    instance-of v2, v6, Lcom/htc/widget/HtcFooter;

    if-eqz v2, :cond_0

    .line 397
    check-cast v6, Lcom/htc/widget/HtcFooter;

    .end local v6           #footer:Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 400
    :cond_0
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 370
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 371
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 372
    .local v2, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v2

    .line 373
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v3, v4}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/HeaderButton;

    .line 374
    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 376
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 377
    .local v1, header:Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/htc/widget/HeaderBar;

    if-eqz v3, :cond_0

    .line 378
    check-cast v1, Lcom/htc/widget/HeaderBar;

    .end local v1           #header:Landroid/view/ViewGroup;
    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBar;->enableTransparentBackground(Z)V

    .line 381
    :cond_0
    return-object v2
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 3

    .prologue
    .line 160
    const-string v1, "SceneDlnaFullscreen"

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onCreateScene]"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    .line 164
    .local v0, fullFilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    return-object v0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 169
    new-instance v1, Lcom/htc/album/Animation/animationSetFullscreenview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFullscreenview;-><init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;)V

    return-object v1
.end method

.method public onDestroyAdapter()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onDestroyAdapter()V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onDestroyAdapter()V

    .line 90
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 134
    if-eqz p1, :cond_1

    .line 136
    const-string v2, "directory_info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    .local v0, importInfo:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v3, "server_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    .local v1, nIndexCurrentDirectory:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 151
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onEnterScene]: Directories: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "SceneDlnaFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onEnterScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v4, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v0           #importInfo:Ljava/util/ArrayList;
    .end local v1           #nIndexCurrentDirectory:I
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->createHeaderBar(IZ)V

    .line 156
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->defaultControlBarOn()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->createFooterBar(IZ)V

    .line 157
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 359
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onMessage(Landroid/os/Message;)Z

    .line 361
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 356
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onShowDetails(Landroid/os/Message;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x4e94
        :pswitch_0
    .end packed-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 70
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onNewAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaFullscreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 74
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 76
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setDataBundle(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onLoadData()V

    .line 79
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaGridview][onNotifyUpdateComplete]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onNotifyUpdateComplete()V

    .line 66
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onPrepareAnimation(I)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enableHeaderTransparentBackground(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->invalidateControlBars()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 270
    .local v0, nIndex:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->refreshSinglePhoto(I)V

    .line 271
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->onNotifyUpdating(Z)V

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enablePageProgressLoading(Z)V

    .line 274
    .end local v0           #nIndex:I
    :cond_0
    return-void
.end method

.method public onRequestDetails()V
    .locals 4

    .prologue
    .line 277
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 279
    .local v0, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/16 v2, 0x4e35

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onPostMessage(ILjava/lang/Object;I)V

    .line 280
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 4
    .parameter "scrollState"

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onScrollStateChange(I)V

    .line 343
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 347
    .local v0, index:I
    const-string v1, "SceneDlnaFullscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneDlnaFullscreen][onScrollStateChanged]:nIndex :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setScrollState(III)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 261
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->enableHeaderTransparentBackground(Z)V

    .line 264
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 197
    const-string v3, "SceneDlnaFullscreen"

    const-string v4, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 200
    const-string v3, "directory_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    .local v0, directoryInfo:Ljava/util/ArrayList;
    new-instance v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 204
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 205
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 209
    .local v2, nIndexCurrentDirectory:I
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "/"

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 215
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    .line 215
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 221
    .end local v1           #i:I
    :cond_0
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: mediumID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: mediumName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v3, "SceneDlnaFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneDlnaFullscreen][onSendToForeground]: Directories: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3, v6, v6, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    .line 228
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setAlpha(F)V

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v3, v7}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneQuality(Z)V

    .line 234
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setHandler(Landroid/os/Handler;)V

    .line 235
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->SCENE_ID:I

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->setSceneType(I)V

    .line 237
    :cond_2
    return-void
.end method

.method public onShowDetails(Landroid/os/Message;)V
    .locals 22
    .parameter "message"

    .prologue
    .line 283
    const-string v1, "SceneDlnaFullscreen"

    const-string v2, "[HTCAlbum][SceneDlnaFullscreen][onShowDetails]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v21

    check-cast v21, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 286
    .local v21, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 287
    .local v20, itemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    if-nez v20, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, filePath:Ljava/lang/String;
    const-string v1, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v2, "remote"

    const-string v4, "image"

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_1
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_2
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string v8, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_3
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v9, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_4
    const-string v10, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v11, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v12, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v13, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v14, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getThumbnailUri()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    const-string v15, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    :goto_5
    const-string v16, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    const-string v17, "unknown-03302ac8-7d1b-4e94-9e04-05acc17ddc9a"

    invoke-static/range {v1 .. v17}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen$DetailDlgParams;->CreateExtraParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 311
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v18

    .line 314
    .local v18, activity:Landroid/app/Activity;
    if-eqz v18, :cond_0

    .line 315
    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    .end local v18           #activity:Landroid/app/Activity;
    .end local v19           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    goto :goto_4

    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->getThumbnailUri()Ljava/lang/String;

    move-result-object v15

    goto :goto_5
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->bindDLNAService()V

    .line 40
    :cond_0
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onStart]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->unBindDLNAService()V

    .line 48
    :cond_0
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onStop]..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "SceneDlnaFullscreen"

    const-string v1, "[HTCAlbum][SceneDlnaFullscreen][onUnbindAdapter]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onUnbindAdapter()V

    .line 257
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 258
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "SceneDlnaFullscreen"

    return-object v0
.end method

.method public setAdapter(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 637
    return-void
.end method

.method public bridge synthetic setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->setAdapter(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V

    return-void
.end method

.method public showOutputChoice()V
    .locals 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x1398

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    .line 446
    :cond_0
    return-void
.end method
