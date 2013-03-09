.class public abstract Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.super Lcom/htc/opensense/album/ViewTemplateBase;
.source "LiveFullscreenviewTemplateBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;,
        Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/ViewTemplateBase",
        "<",
        "Lcom/htc/opensense/widget/FullScreenView;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LiveFullscreenviewTemplateBase"


# instance fields
.field protected mDrmDecoded:Z

.field protected mLoadingText:Ljava/lang/String;

.field protected mServiceType:Ljava/lang/String;

.field protected mViewItemClickListener:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/AdapterBase;Lcom/htc/opensense/album/DisplayManagerInterface;)V
    .locals 1
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mServiceType:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDrmDecoded:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mLoadingText:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mViewItemClickListener:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;

    .line 71
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-object v0
.end method

.method private showCaptionBar(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 531
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 265
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v0

    .line 266
    .local v0, activityListener:Lcom/htc/opensense/album/TemplateActivityInterface;
    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, v7}, Lcom/htc/opensense/album/TemplateActivityInterface;->setFullscreen(Z)V

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 270
    .local v3, sharedPref:Landroid/content/SharedPreferences;
    const-string v4, "photo_position"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 272
    .local v2, nPosition:I
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-gt v4, v2, :cond_1

    .line 273
    const/4 v2, 0x0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 278
    .local v1, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V

    .line 279
    const/4 v4, 0x4

    new-instance v5, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;

    invoke-direct {v5, p0, v8}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$HighQualityLiveImageDecoder;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;)V

    new-instance v6, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;

    invoke-direct {v6, p0, v8}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setTemplateLayout(ILcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 284
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v4, v2}, Lcom/htc/opensense/widget/FullScreenView;->setPosition(I)V

    .line 285
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/opensense/widget/FullScreenView;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/opensense/widget/FullScreenView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 286
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/opensense/widget/FullScreenView;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20801b5

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense/widget/FullScreenView;->setLoadedIndicator(Landroid/graphics/Bitmap;)V

    .line 288
    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 289
    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    .line 290
    :cond_2
    invoke-virtual {v1, v2, v7}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    .line 291
    return-void
.end method

.method public abstract configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
.end method

.method public abstract configureTitleBar(Lcom/htc/opensense/album/ControlTitleBar;)V
.end method

.method protected bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->createMainView()Lcom/htc/opensense/widget/FullScreenView;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Lcom/htc/opensense/widget/FullScreenView;
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    .line 87
    :goto_0
    return-object v1

    .line 81
    :cond_0
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 83
    .local v0, view:Lcom/htc/opensense/widget/FullScreenView;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mViewItemClickListener:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->setOnItemClickListener(Lcom/htc/opensense/widget/FullScreenView$OnItemClickListener;)V

    .line 84
    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->setOnScrollListener(Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;)V

    .line 85
    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->setOnZoomListener(Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;)V

    move-object v1, v0

    .line 87
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView;->isZoom()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1, v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->switchBackToPreviousTemplate(Z)V

    move v1, v2

    .line 105
    goto :goto_0

    .line 109
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/widget/FullScreenView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 122
    :cond_0
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    :cond_0
    return v1
.end method

.method public abstract getCommandBarLayout()I
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x3

    return v0
.end method

.method public abstract getTitleBarLayout()I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 363
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v5, :cond_1

    .line 364
    :cond_0
    const/4 v3, 0x0

    .line 428
    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v3, p2

    .line 366
    check-cast v3, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .line 368
    .local v3, touchView:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v12, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 369
    .local v12, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    .line 372
    .local v10, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    move/from16 v0, p1

    invoke-virtual {v12, v0, v10}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCachedBitmap(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 373
    .local v13, bitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoIntegrity(I)I

    move-result v15

    .line 374
    .local v15, integrity:I
    const/4 v14, 0x6

    .line 377
    .local v14, indicator:I
    if-eqz v13, :cond_7

    .line 379
    const/4 v5, -0x2

    if-ne v5, v15, :cond_5

    .line 380
    const/4 v14, 0x7

    .line 390
    :goto_1
    const/4 v5, 0x7

    if-ne v5, v14, :cond_2

    .line 391
    const/4 v13, 0x0

    .line 393
    :cond_2
    const/4 v5, 0x6

    if-ne v14, v5, :cond_3

    if-eqz v13, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense/album/TemplateActivityBase;

    .line 396
    .local v11, activity:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<*>;"
    if-eqz v11, :cond_3

    .line 398
    invoke-virtual {v11}, Lcom/htc/opensense/album/TemplateActivityBase;->getScreenWidth()I

    move-result v19

    .line 399
    .local v19, screenW:I
    invoke-virtual {v11}, Lcom/htc/opensense/album/TemplateActivityBase;->getScreenHeight()I

    move-result v18

    .line 401
    .local v18, screenH:I
    new-instance v17, Lcom/htc/opensense/album/util/ImageUtils$Size;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v6}, Lcom/htc/opensense/album/util/ImageUtils$Size;-><init>(II)V

    .line 402
    .local v17, newSize:Lcom/htc/opensense/album/util/ImageUtils$Size;
    new-instance v16, Lcom/htc/opensense/album/util/ImageUtils$Size;

    move-object/from16 v0, v17

    iget v5, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/htc/opensense/album/util/ImageUtils$Size;-><init>(II)V

    .line 403
    .local v16, newFitSize:Lcom/htc/opensense/album/util/ImageUtils$Size;
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/opensense/album/util/ImageUtils;->calculateFitSize(Lcom/htc/opensense/album/util/ImageUtils$Size;II)V

    .line 404
    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v5, v6, v1, v2}, Lcom/htc/opensense/album/util/ImageUtils;->calculateFitPhotoSize(Lcom/htc/opensense/album/util/ImageUtils$Size;IIII)V

    .line 406
    move-object/from16 v0, v17

    iget v5, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->width:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/htc/opensense/album/util/ImageUtils$Size;->height:I

    const/4 v7, 0x1

    invoke-static {v13, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 411
    .end local v11           #activity:Lcom/htc/opensense/album/TemplateActivityBase;,"Lcom/htc/opensense/album/TemplateActivityBase<*>;"
    .end local v16           #newFitSize:Lcom/htc/opensense/album/util/ImageUtils$Size;
    .end local v17           #newSize:Lcom/htc/opensense/album/util/ImageUtils$Size;
    .end local v18           #screenH:I
    .end local v19           #screenW:I
    :cond_3
    const-string v4, "image/jpeg"

    .line 412
    .local v4, mimeType:Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 414
    const-string v4, "video"

    .line 415
    if-nez v13, :cond_8

    .line 416
    const/4 v14, 0x6

    .line 421
    :cond_4
    :goto_2
    invoke-virtual {v3, v14}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setOnlineIndicator(I)V

    .line 422
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setPath(Ljava/lang/String;)V

    .line 423
    if-nez v13, :cond_9

    const/4 v6, 0x0

    :goto_3
    if-nez v13, :cond_a

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    const/4 v5, 0x6

    if-ne v5, v14, :cond_b

    const/4 v9, 0x1

    :goto_5
    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageInfo(Ljava/lang/String;IIIZZ)V

    .line 426
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v13, v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto/16 :goto_0

    .line 381
    .end local v4           #mimeType:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    if-ne v5, v15, :cond_6

    .line 382
    const/16 v14, 0x8

    goto/16 :goto_1

    .line 384
    :cond_6
    const/4 v14, 0x6

    goto/16 :goto_1

    .line 388
    :cond_7
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onTriggerNotifyChange(I)V

    goto/16 :goto_1

    .line 418
    .restart local v4       #mimeType:Ljava/lang/String;
    :cond_8
    const/16 v14, 0x8

    goto :goto_2

    .line 423
    :cond_9
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto :goto_3

    :cond_a
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0x2724

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 482
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 448
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onSyncList()V

    goto :goto_0

    .line 457
    :sswitch_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/TemplateActivityInterface;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 463
    :sswitch_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 467
    :sswitch_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 470
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onAutoHideOnScreenBars()V

    goto :goto_0

    .line 473
    :sswitch_6
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 476
    :sswitch_7
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 479
    :sswitch_8
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x138a -> :sswitch_0
        0x138d -> :sswitch_2
        0x2724 -> :sswitch_3
        0x2728 -> :sswitch_4
        0x2738 -> :sswitch_8
        0x274f -> :sswitch_6
        0x2750 -> :sswitch_7
        0x4e3c -> :sswitch_5
        0x4e88 -> :sswitch_1
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 154
    return-void
.end method

.method protected onAutoHideOnScreenBars()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->toggleVisibility()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->toggleVisibility()V

    .line 772
    :cond_1
    return-void
.end method

.method public onBackKey_LoadingDialog(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 158
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/FullScreenView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView;->release()V

    .line 355
    :cond_0
    return-void
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/htc/opensense/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 301
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 302
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mServiceType:Ljava/lang/String;

    .line 303
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mServiceType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 308
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "showCaption"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public abstract onItemSelected(Landroid/view/View;Landroid/view/View;ILandroid/view/MotionEvent;)Z
.end method

.method public onLeave()V
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 321
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 322
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "photo_position"

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    invoke-super {p0}, Lcom/htc/opensense/album/ViewTemplateBase;->onLeave()V

    .line 326
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onPinchZoomEndInView()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public onPinchZoomInView(FF)V
    .locals 5
    .parameter "prevRatio"
    .parameter "newRatio"

    .prologue
    const/16 v1, 0x8

    const/high16 v4, 0x3f80

    .line 510
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 512
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    cmpl-float v0, p1, v4

    if-lez v0, :cond_0

    cmpg-float v0, p2, v4

    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onScrollStateViewChanged(I)V
    .locals 2
    .parameter "scrollState"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 536
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setScrollState(II)V

    .line 537
    packed-switch p1, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/FullScreenView;->isZoom()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSyncList()V
    .locals 2

    .prologue
    .line 775
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getFocusedItem()I

    move-result v0

    .line 779
    .local v0, nPosition:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/widget/FullScreenView;->setPosition(I)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    .line 783
    .end local v0           #nPosition:I
    :cond_1
    return-void
.end method

.method public onToggleVisibilityCommandBar()V
    .locals 4

    .prologue
    const/16 v3, 0x4e3c

    .line 754
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->toggleVisibility()V

    .line 755
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onUpdateViewCommandBarChange(I)V

    .line 760
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 762
    :cond_0
    return-void
.end method

.method public onToggleVisibilityTitleBar()V
    .locals 3

    .prologue
    .line 743
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/ControlBase;->toggleVisibility()V

    .line 744
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 746
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 747
    .local v1, nNumerator:I
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 749
    .local v0, nDenominator:I
    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onUpdateViewTitleCount(II)V

    .line 751
    .end local v0           #nDenominator:I
    .end local v1           #nNumerator:I
    :cond_0
    return-void
.end method

.method public abstract onUpdateCommandBar()V
.end method

.method public abstract onUpdateViewCommandBarChange(I)V
.end method

.method public abstract onUpdateViewTitle()V
.end method

.method public abstract onUpdateViewTitleCount(II)V
.end method

.method public onZoomBeginInView(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    const/16 v1, 0x8

    .line 488
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 492
    return-void
.end method

.method public onZoomEndInView(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 498
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 504
    :cond_0
    return-void
.end method

.method public unbindAdapter()V
    .locals 4

    .prologue
    .line 334
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/FullScreenView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 338
    .local v1, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStop()V

    .line 339
    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRelease()V

    .line 341
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense/album/TemplateActivityInterface;

    move-result-object v0

    .line 342
    .local v0, activityListener:Lcom/htc/opensense/album/TemplateActivityInterface;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/htc/opensense/album/TemplateActivityInterface;->setFullscreen(Z)V

    .line 343
    :cond_1
    return-void
.end method
