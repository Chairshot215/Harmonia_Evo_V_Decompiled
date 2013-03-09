.class public Lcom/htc/album/addons/SceneScrollCacheHandler;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;,
        Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final RETRY_TIMER:I = 0x1f4

.field private static final SCCSTATE_PREPARE_FOOTER_SNAPSHOT:I = 0xb

.field private static final SCCSTATE_PREPARE_HEADER_SNAPSHOT:I = 0xa

.field private static final SCCSTATE_UNKNOWN:I = -0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

.field private mEnableCache:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsEnablePreciseFooterCache:Z

.field private mIsEnablePreciseHeaderCache:Z

.field private mIsProgressBarOn:Z

.field private mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mScrollState:I

.field private mStatusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V
    .locals 3
    .parameter "activity"
    .parameter "mainView"
    .parameter "controlHost"
    .parameter "bEnable"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 49
    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 50
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 51
    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 52
    iput v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    .line 54
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 407
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$1;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    iput-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 129
    iput-object p2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 130
    iput-object p3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 131
    iput-boolean p4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 132
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][SceneScrollCacheHandler]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/scene/GalleryBaseScene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onCacheAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/addons/SceneScrollCacheHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private onCacheAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V
    .locals 4
    .parameter "nCacheType"

    .prologue
    .line 210
    iget-boolean v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/16 v1, 0x4f4d

    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-ne v1, v2, :cond_2

    .line 216
    sget-object v1, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneScrollCacheHandler][onCacheAttached]: already in idle state skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    const/4 v0, 0x0

    .line 222
    .local v0, galleryBar:Lcom/htc/album/modules/ui/widget/BaseControlBar;
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 236
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 238
    sget-object v1, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][onCacheAttached]: hide control..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->setVisibility(I)V

    goto :goto_0

    .line 229
    :cond_4
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_5

    .line 230
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_5
    sget-object v1, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v1, p1, :cond_3

    .line 232
    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_1
.end method

.method private takeSnapShot4Footer()V
    .locals 5

    .prologue
    .line 330
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 331
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v0, :cond_1

    .line 333
    sget-object v2, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Footer]: no footer..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    .local v1, snapShot:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 340
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v4, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v4, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    goto :goto_0
.end method

.method private takeSnapShot4Header()V
    .locals 5

    .prologue
    .line 308
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 309
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-nez v0, :cond_1

    .line 311
    sget-object v2, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SceneScrollCacheHandler][takeSnapShot4Header]: no header..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    .local v1, snapShot:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 322
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v4, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v4, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enablePreciseFooterCache()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseFooterCache:Z

    .line 156
    return-void
.end method

.method public enablePreciseHeaderCache()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsEnablePreciseHeaderCache:Z

    .line 152
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHeaderSnapShotLock()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][onConfigurationChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 424
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 433
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 427
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header()V

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNotifyHeaderProgressBar(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mIsProgressBarOn:Z

    .line 124
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][onPause]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    :cond_0
    return-void
.end method

.method public onRecycleCache(Z)V
    .locals 7
    .parameter "bEnableControl"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 159
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 164
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v4, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridView;->postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    .line 166
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 169
    .local v2, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->releaseSnapShot()V

    .line 172
    :cond_2
    if-eqz p1, :cond_0

    .line 174
    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2, v5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->setVisibility(I)V

    goto :goto_0

    .line 180
    .end local v2           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 181
    .local v1, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-eqz v1, :cond_5

    .line 182
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->releaseSnapShot()V

    .line 188
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 189
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->releaseSnapShot()V

    .line 196
    :goto_2
    if-eqz p1, :cond_0

    .line 198
    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setVisibility(I)V

    .line 201
    invoke-virtual {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    .line 203
    :cond_4
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto :goto_0

    .line 185
    .end local v0           #footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_5
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][onRecycleCache]: no header..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .restart local v0       #footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_6
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][onRecycleCache]: no footer..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public onScrollIdle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-boolean v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/16 v3, 0x4f4d

    iput v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 273
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][onScrollIdle]: "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v2

    .line 279
    .local v2, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v2, v5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->setVisibility(I)V

    goto :goto_0

    .line 284
    .end local v2           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 285
    .local v1, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    iget-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 287
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v1, :cond_3

    .line 289
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][onScrollIdle]: no header..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_1
    if-nez v0, :cond_4

    .line 296
    sget-object v3, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SceneScrollCacheHandler][onScrollIdle]: no footer..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {v1, v5}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setVisibility(I)V

    goto :goto_1

    .line 300
    :cond_4
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 301
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->invalidate()V

    goto :goto_0
.end method

.method public onScrolling()V
    .locals 5

    .prologue
    const/16 v4, 0x4f4e

    .line 348
    iget-boolean v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    if-eq v4, v2, :cond_0

    .line 354
    sget-object v2, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SceneScrollCacheHandler][onScrolling]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iput v4, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mScrollState:I

    .line 360
    iget v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    if-nez v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    .line 363
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mStatusBarHeight:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setStatusBarHeight(I)V

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v1

    .line 372
    .local v1, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    if-eqz v1, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, bitmapHost:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->isExistSnapShot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 377
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 380
    :cond_3
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    .line 383
    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    new-instance v4, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;

    invoke-direct {v4, p0}, Lcom/htc/album/addons/SceneScrollCacheHandler$scrollCacheListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V

    goto :goto_0

    .line 395
    .end local v0           #bitmapHost:Landroid/graphics/Bitmap;
    .end local v1           #hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    :cond_4
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Header()V

    .line 401
    invoke-direct {p0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->takeSnapShot4Footer()V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][onSendToBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onRecycleCache(Z)V

    goto :goto_0
.end method

.method public scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/album/addons/SceneScrollCacheHandler$1;)V

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 419
    return-void
.end method

.method public uninitialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: identify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/htc/album/addons/SceneScrollCacheHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneScrollCacheHandler][uninitialize]: host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mActivity:Landroid/app/Activity;

    .line 141
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mMainView:Lcom/htc/sunny2/widget/gridview/GridView;

    .line 142
    iput-object v3, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler;->mEnableCache:Z

    .line 144
    return-void
.end method
