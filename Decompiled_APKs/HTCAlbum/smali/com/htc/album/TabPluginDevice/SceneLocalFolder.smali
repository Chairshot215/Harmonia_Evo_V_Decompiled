.class public Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.super Lcom/htc/album/TabPluginDevice/SceneLocalBase;
.source "SceneLocalFolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/SceneLocalBase",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CODE_HID_SHOW_ALBUM:I = 0x1234

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalFolder"


# instance fields
.field private mAnimState:I

.field protected mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field protected mScrollState:I

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 51
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 52
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 54
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mStatusBarHeight:I

    .line 55
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimState:I

    .line 57
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 83
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method private onDataSetChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 574
    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 128
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 132
    .local v1, host:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 134
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 137
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eq v3, v2, :cond_0

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 148
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-interface {v1, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollIdle()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrollIdle()V

    .line 201
    :cond_0
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 180
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 184
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mScrollState:I

    .line 186
    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrolling()V

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollIdle()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onScrolling()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrolling()V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 671
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 684
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 687
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 688
    .local v1, szLoading:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    return-object v1
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataChangedAt(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataChangedAt(I)V

    .line 560
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 561
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][notifyDataSetChanged]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->notifyDataSetChanged()V

    .line 553
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 554
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 387
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 389
    packed-switch p1, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 392
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1234
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 5
    .parameter "nAnimState"

    .prologue
    const/4 v4, 0x0

    .line 641
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onAnimationEnd(I)V

    .line 646
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 647
    .local v0, nLoadState:I
    const-string v1, "SceneLocalFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalFolder][onAnimationEnd]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-nez v0, :cond_0

    .line 649
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 651
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 663
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimState:I

    .line 664
    return-void

    .line 655
    :pswitch_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mStatusBarHeight:I

    invoke-virtual {v1, v4, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 440
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onBindAdapter()V

    .line 441
    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][onBindAdapter]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->invalidateControlBars()V

    .line 445
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v0

    .line 447
    .local v0, bEnableScrollCache:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2}, Lcom/htc/album/addons/SceneScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 449
    :cond_0
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 364
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->VERTICAL_SPACE_FOLDER_ITEM_PORT:I

    .line 365
    .local v2, vSpace:I
    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HORIZONTAL_SPACE_FOLDER_ITEM_PORT:I

    .line 366
    .local v1, hSpace:I
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 367
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->VERTICAL_SPACE_FOLDER_ITEM_LAND:I

    .line 368
    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HORIZONTAL_SPACE_FOLDER_ITEM_LAND:I

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 371
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 373
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 374
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 375
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 377
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 383
    :cond_0
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    const/4 v3, 0x0

    .line 610
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 611
    .local v0, animationBundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 625
    :goto_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimState:I

    .line 626
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 627
    return-object v0

    .line 613
    :pswitch_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 615
    .local v1, context:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 620
    .end local v1           #context:Landroid/app/Activity;
    :cond_0
    :pswitch_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->resumePreparator(Z)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 11

    .prologue
    const/16 v10, 0xc8

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 222
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 224
    const-string v6, "SceneLocalFolder"

    const-string v7, "Activity is null"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v4

    .line 227
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 228
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;

    invoke-direct {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;-><init>()V

    .line 229
    .local v3, folderParam:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailW:I

    .line 230
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailH:I

    .line 231
    const v6, 0x7f02000d

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->backgroundResid:I

    .line 232
    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemW:I

    .line 233
    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemH:I

    .line 234
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Folder_Select(Landroid/content/Context;)I

    move-result v6

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->selecterResid:I

    .line 235
    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_TEXT_FIRST:I

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textviewHeight:I

    .line 236
    iput v8, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateviewHeight:I

    .line 237
    iput v9, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->numFolderImage:I

    .line 238
    const v6, 0x7f030010

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textLayoutResId:I

    .line 239
    const v6, 0x7f0a003d

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textId:I

    .line 240
    const v6, 0x7f0a003e

    iput v6, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateId:I

    .line 242
    new-instance v2, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v2, v1, v6, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;)V

    .line 246
    .local v2, folderItemPrototype:Lcom/htc/sunny2/widget/gridview/FolderViewItem;
    new-instance v4, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v4, v1, v6, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 251
    .local v4, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v6, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 252
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v5, inValue:Landroid/os/Bundle;
    const-string v6, "TEXTURE_MAX_COUNT"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v6, "GRID_MEM_CACHE_SIZE"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v6, "GRID_FILE_CACHE_SIZE"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const-string v6, "GRID_WIDTH_HEIGHT"

    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v6, "CACHE_SET"

    const/16 v7, 0x65

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v1, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 259
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 260
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 262
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setFolderImageGetter(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;)V

    .line 263
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 265
    instance-of v6, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v6, :cond_0

    .line 266
    invoke-static {v0, v9}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v9}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v8, v6, v8, v8}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 586
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 280
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onDestroyScene()V

    .line 281
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 286
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v0

    .line 287
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-nez v2, :cond_0

    .line 289
    new-instance v3, Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 295
    :cond_0
    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 298
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 300
    .end local v1           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_1
    return-void
.end method

.method public onItemSelected(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    .line 94
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v5, "SceneLocalFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SceneLocalFolder][onItemSelected]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 100
    .local v2, anAlbum:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 104
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    invoke-virtual {v3, p1}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 106
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v2, v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->onFolderClicked(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v4, bundle:Landroid/os/Bundle;
    const-string v5, "collection_info"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    const-string v5, "call_MainActivity_from_collection"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v6, "SceneLocalPhotoThumbnail"

    const/4 v7, 0x0

    invoke-interface {v5, v4, v6, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onLeaveScene]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 343
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onLeaveScene()V

    .line 344
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->uninitialize()V

    .line 346
    :cond_0
    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 350
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 351
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 499
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 500
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 501
    const/4 v1, 0x0

    .line 517
    :goto_0
    return v1

    .line 504
    :cond_0
    const/4 v1, 0x0

    .line 505
    .local v1, bResult:Z
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 508
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 509
    .local v2, hideShowAlbum:Landroid/content/Intent;
    const-class v3, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 510
    const/16 v3, 0x1234

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 513
    .end local v2           #hideShowAlbum:Landroid/content/Intent;
    :sswitch_1
    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoVod(Landroid/content/Context;)V

    goto :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00ac -> :sswitch_0
        0x7f0b00ec -> :sswitch_1
    .end sparse-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 174
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onMessage(Landroid/os/Message;)Z

    .line 176
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 159
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onItemSelected(I)V

    goto :goto_0

    .line 162
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onSceneLoading()V

    goto :goto_0

    .line 165
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 168
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 171
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRefreshAdapter()V

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x138f -> :sswitch_4
        0x139c -> :sswitch_0
        0x4e46 -> :sswitch_1
        0x4f4f -> :sswitch_3
        0x5079 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 419
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onNewAdapter]: ..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 422
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 424
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "media_connected"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 425
    .local v1, bIsMediaConnected:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "media_connected"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    new-instance v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getAdapterMediaType()I

    move-result v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;-><init>(Landroid/content/Context;Landroid/os/Handler;ILandroid/os/Bundle;)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 432
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->enableObserverNotify()V

    .line 433
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3, p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 434
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onLoadData()V

    .line 435
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 566
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onNotifyUpdateComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdateComplete()V

    .line 568
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDataSetChange(I)V

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 570
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 525
    const-string v1, "SceneLocalFolder"

    const-string v2, "[HTCAlbum][SceneLocalFolder][onNotifyUpdating]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onNotifyUpdating(Z)V

    .line 527
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 528
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 530
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 532
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPause()V

    .line 355
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPause()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 361
    :cond_1
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 633
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 636
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 6
    .parameter "nAnimState"

    .prologue
    const/4 v3, 0x1

    .line 590
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onPrepareAnimation(I)Z

    move-result v0

    .line 591
    .local v0, anim:Z
    if-ne v3, v0, :cond_2

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 593
    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mStatusBarHeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 594
    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 595
    .local v1, context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mStatusBarHeight:I

    .line 597
    .end local v1           #context:Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 598
    .local v2, header:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<*>;"
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez v4, :cond_3

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 600
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mStatusBarHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V

    .line 604
    .end local v2           #header:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<*>;"
    :cond_2
    return v0

    .line 598
    .restart local v2       #header:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<*>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0b00ac

    const/4 v4, 0x0

    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, bResult:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onPrepareOptionsMenu]: InternalStorageStateError"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 493
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 474
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    const-string v3, "SceneLocalFolder"

    const-string v4, "[HTCAlbum][SceneLocalFolder][onPrepareOptionsMenu]: loading..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 477
    .restart local v1       #bResult:I
    goto :goto_0

    .line 479
    .end local v1           #bResult:I
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 488
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 489
    .local v2, item:Landroid/view/MenuItem;
    const v3, 0x208031f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 492
    const/4 v0, 0x1

    move v1, v0

    .line 493
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method protected onRefreshAdapter()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureSendToBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isLoadingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: is reloading... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneMediaMounted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 710
    :cond_3
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: reload... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 715
    :cond_4
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onRefreshAdapter]: no media ready... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSceneLoading()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onEnablePageLoading(Z)V

    .line 125
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 321
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onSendToBackground]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 323
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onSendToBackground(Landroid/os/Bundle;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 334
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 303
    const-string v2, "SceneLocalFolder"

    const-string v3, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: ..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 305
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    if-eqz v2, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    .line 310
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->isObservedDataChange()Z

    move-result v1

    .line 311
    .local v1, isDataChanged:Z
    const-string v2, "SceneLocalFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SceneLocalFolder][onSendToForeground]: dirty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-eqz v1, :cond_0

    .line 314
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->setIntermediateDataBundle(Landroid/os/Bundle;)V

    .line 317
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/ObserverAdapter;
    .end local v1           #isDataChanged:Z
    :cond_0
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 5

    .prologue
    const/16 v4, 0x4e44

    .line 535
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->getLastLoadState()I

    move-result v0

    .line 539
    .local v0, nLoadState:I
    const-string v1, "SceneLocalFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalFolder][onTriggerErrorReport]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 542
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onRemoveMessage(I)V

    .line 543
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalBase;->onUnbindAdapter()V

    .line 455
    const-string v0, "SceneLocalFolder"

    const-string v1, "[HTCAlbum][SceneLocalFolder][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 458
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 459
    return-void
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "SceneLocalFolder"

    return-object v0
.end method
