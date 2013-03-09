.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.source "SceneDlnaGridviewBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "TADAPTER;>;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;-><init>()V

    .line 31
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->LOG_TAG:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    .line 36
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 40
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 67
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 75
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 76
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 78
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 80
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollIdle()V
    .locals 1

    .prologue
    .line 125
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrollIdle()V

    .line 127
    :cond_0
    return-void
.end method

.method private onScrolling()V
    .locals 1

    .prologue
    .line 130
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrolling()V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 205
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onBindAdapter()V

    .line 206
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 221
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 223
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 225
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 228
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 28
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 7

    .prologue
    .line 162
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][SceneDlnaGridviewBase][onCreateScene]: ..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 166
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Activity is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 193
    :goto_0
    return-object v2

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 173
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v4, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 174
    .local v4, thumbnail:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v1, v5, v4}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 178
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v5, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 179
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v3, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    const/16 v6, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v5, "GRID_WIDTH_HEIGHT"

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v1, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 186
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 187
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 189
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setThumbnailImageGetter(Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;)V

    .line 190
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 191
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 200
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onDestroyScene()V

    .line 201
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 138
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onEnterScene(Landroid/os/Bundle;)V

    .line 139
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 140
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-nez v2, :cond_0

    .line 142
    new-instance v3, Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 147
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    .line 149
    :cond_0
    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 152
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 153
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 155
    .end local v1           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_1
    return-void
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 239
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onLeaveScene()V

    .line 240
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->uninitialize()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 243
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 93
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onMessage(Landroid/os/Message;)Z

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 96
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onItemSelected(I)V

    .line 104
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_1

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 246
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPause()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 253
    :cond_1
    return-void
.end method

.method protected onScrollStateChanged(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 108
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mScrollState:I

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 119
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrolling()V

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onScrollIdle()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 211
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onSendToBackground(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onSendToBackground(Landroid/os/Bundle;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 218
    :cond_1
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 234
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onUnbindAdapter()V

    .line 235
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 236
    return-void
.end method
