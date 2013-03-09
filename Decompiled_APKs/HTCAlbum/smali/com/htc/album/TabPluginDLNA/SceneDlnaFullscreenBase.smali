.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.super Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.source "SceneDlnaFullscreenBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "TADAPTER;>;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase",
            "<TADAPTER;>.OnItemClick",
            "Listener;"
        }
    .end annotation
.end field

.field private mOrientationHasChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;-><init>()V

    .line 24
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    .line 27
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 28
    new-instance v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    .line 466
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isHitIndicator(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private isHitIndicator(II)Z
    .locals 10
    .parameter "posX"
    .parameter "posY"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 396
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x5

    .line 397
    .local v5, wSection:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x5

    .line 398
    .local v0, hSection:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v4, v6

    .line 399
    .local v4, top:I
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v3, v6

    .line 401
    .local v3, left:I
    sub-int v6, p1, v3

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v5, :cond_0

    move v1, v7

    .line 402
    .local v1, hitX:Z
    :goto_0
    sub-int v6, p2, v4

    mul-int/lit8 v9, v0, 0x2

    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v0, :cond_1

    move v2, v7

    .line 404
    .local v2, hitY:Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v7

    .end local v1           #hitX:Z
    .end local v2           #hitY:Z
    :cond_0
    move v1, v8

    .line 401
    goto :goto_0

    .restart local v1       #hitX:Z
    :cond_1
    move v2, v8

    .line 402
    goto :goto_1

    .restart local v2       #hitY:Z
    :cond_2
    move v7, v8

    .line 404
    goto :goto_2
.end method


# virtual methods
.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 442
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 443
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 432
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    return-void
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 9

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/4 v6, 0x0

    .line 40
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[HTCAlbum][SceneDlnaFullscreenBase][onCreateScene] + "

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 43
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Activity is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 66
    :goto_0
    return-object v3

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 48
    .local v2, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v4, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 49
    .local v4, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v3, v1, v7, v2, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 51
    .local v3, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v7, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v7, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 52
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v5, inValue:Landroid/os/Bundle;
    const-string v7, "TEXTURE_MAX_COUNT"

    const/4 v8, 0x7

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v7, "ENABLE_QUALITY_OPTIONS"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v1, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 58
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 59
    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 60
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 61
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 62
    new-instance v7, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;

    invoke-direct {v7, p0, v6}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 63
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->mOnItemClickListener:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$OnItemClickListener;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 65
    iget-object v6, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][SceneDlnaFullscreenBase][onCreateScene] - "

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 21
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method protected onItemSelected(I)V
    .locals 4
    .parameter "index"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    const/16 v3, 0x4e3c

    .line 447
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 448
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->isControlBarShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->toggleControlBarsVisibility()V

    .line 455
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 415
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 418
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->hideControlBars()V

    .line 419
    const/4 v0, 0x1

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x4e3c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 460
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 461
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 462
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->onItemSelected(I)V

    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method protected onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 318
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase<TADAPTER;>;"
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->hideControlBars()V

    goto :goto_0
.end method
