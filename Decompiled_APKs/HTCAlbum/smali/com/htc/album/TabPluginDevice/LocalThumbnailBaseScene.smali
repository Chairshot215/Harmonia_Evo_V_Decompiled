.class public abstract Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "LocalThumbnailBaseScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LocalThumbnailBaseScene"


# instance fields
.field protected mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    .line 42
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 44
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$1;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 52
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    return-void
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 87
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 89
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 91
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollIdle()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrollIdle()V

    .line 150
    :cond_0
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 129
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, scrollState:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    if-ne v1, v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mScrollState:I

    .line 135
    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrolling()V

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrollIdle()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onScrolling()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrolling()V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method protected markSelection(II)V
    .locals 4
    .parameter "index"
    .parameter "posY"

    .prologue
    .line 294
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    move v2, p1

    .line 299
    .local v2, pos:I
    if-gez v2, :cond_3

    .line 300
    const/4 v2, 0x0

    .line 304
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 305
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 307
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 308
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "photo_position"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v3, "first_positionY"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 301
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 337
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 339
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 340
    .local v1, view:Lcom/htc/sunny2/widget/gridview/GridView;
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 341
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$3;-><init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 239
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 240
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 241
    .local v0, bEnableScrollCache:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2}, Lcom/htc/album/addons/SceneScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 243
    :cond_0
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 275
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 276
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->SPACE_THUMBNAIL_ITEM_PORT:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 278
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getNumColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->setSectionCollumnNumber(I)V

    .line 279
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 8

    .prologue
    const/16 v7, 0xc8

    .line 184
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "[HTCAlbum][SceneLocalPhotoThumbnail][onCreateScene]: ..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 186
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 187
    const-string v5, "LocalThumbnailBaseScene"

    const-string v6, "Activity is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    .line 215
    :goto_0
    return-object v2

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 194
    .local v2, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    move-result-object v4

    .line 196
    .local v4, ti:Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    .end local v2           #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v1, v5, v4}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 200
    .restart local v2       #gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v5, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 201
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v3, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v5, "GRID_MEM_CACHE_SIZE"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string v5, "GRID_FILE_CACHE_SIZE"

    const/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v5, "GRID_WIDTH_HEIGHT"

    sget v6, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v5, "CACHE_SET"

    const/16 v6, 0xa

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v1, v3}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 208
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 209
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 211
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;->setThumbnailImageGetter(Lcom/htc/sunny2/widget/gridview/ThumbnailItem$ThumbnailImageGetter;)V

    .line 212
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 213
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mOnItemSelectedListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 222
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 223
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewList()Z

    move-result v0

    .line 164
    .local v0, bEnableScrollCache:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-nez v2, :cond_0

    .line 166
    new-instance v3, Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v3, v4, v2, p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 171
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V

    .line 173
    :cond_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 176
    .local v1, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 177
    sget-object v2, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    .line 179
    .end local v1           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    :cond_1
    return-void
.end method

.method protected onItemClickIRT(Lcom/htc/sunny2/view/SView;I)V
    .locals 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 80
    const/16 v0, 0x139c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 81
    return-void
.end method

.method protected abstract onItemSelected(I)V
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 263
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->uninitialize()V

    .line 265
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 266
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 116
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    .line 118
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 107
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onItemSelected(I)V

    goto :goto_0

    .line 110
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x4f4f -> :sswitch_2
        0x5079 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewThumbnailItem(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)Lcom/htc/sunny2/widget/gridview/ThumbnailItem;
    .locals 1
    .parameter "context"
    .parameter "sContext"

    .prologue
    .line 328
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;

    invoke-direct {v0, p1, p2}, Lcom/htc/sunny2/widget/gridview/ThumbnailItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 283
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPause()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 289
    :cond_1
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 247
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onSendToBackground(Landroid/os/Bundle;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V

    .line 253
    :cond_1
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 257
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 258
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 259
    return-void
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method
