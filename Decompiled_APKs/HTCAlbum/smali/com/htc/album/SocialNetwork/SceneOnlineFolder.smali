.class public Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/widget/gridview/GridView;",
        "Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_BAR_ONLINE_FOLDER_VIEW:I = 0x2711

.field protected static final LAYOUT_TYPE_LIST:I = 0x1

.field protected static final LAYOUT_TYPE_LOADING:I = 0x2

.field protected static final LAYOUT_TYPE_LOGIN:I = 0x0

.field protected static final LAYOUT_TYPE_UNKNOWN:I = -0x1

.field private static final LOGIN_BAR_ONLINE_FOLDER_VIEW:I = 0x2712

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlineFolder"


# instance fields
.field private mAnimState:I

.field protected mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

.field private mFirstActivity:Z

.field private mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

.field private mLoginFirst:Z

.field protected mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 77
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 78
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 80
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 81
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    .line 82
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 83
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 84
    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 86
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimState:I

    .line 88
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 148
    return-void
.end method

.method private RelayoutPageView(I)V
    .locals 0
    .parameter "layout"

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 620
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageLogin()V

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRelayoutPageList()V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 160
    .local v0, header:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;,"Lcom/htc/album/modules/ui/widget/GalleryHeaderBar<*>;"
    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 164
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onRelayoutPageList()V
    .locals 2

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 573
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->setVisibility(I)V

    .line 575
    :cond_0
    return-void
.end method

.method private onRelayoutPageLogin()V
    .locals 10

    .prologue
    .line 579
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    .line 581
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    if-nez v7, :cond_0

    .line 583
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 584
    .local v2, context:Landroid/content/Context;
    new-instance v7, Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/16 v8, 0x2712

    const v9, 0x7f03002c

    invoke-direct {v7, v8, v2, v9}, Lcom/htc/album/SocialNetwork/LiveLoginBar;-><init>(ILandroid/content/Context;I)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    .line 585
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 586
    .local v4, root:Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_0

    .line 588
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    const/4 v8, 0x3

    const/16 v9, 0x2711

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 589
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->setVisibility(I)V

    .line 593
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #root:Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 594
    .local v5, sceneIntent:Landroid/content/Intent;
    const-string v7, "login_btn_text"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, btnText:Ljava/lang/String;
    const-string v7, "login_btn_description"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, description:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0071

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 598
    .local v1, btnView:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_LoginButton(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 602
    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;

    invoke-direct {v7, p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    :cond_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginBar:Lcom/htc/album/SocialNetwork/LiveLoginBar;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LiveLoginBar;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0072

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 612
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_2

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :cond_2
    return-void
.end method

.method private onScrollIdle()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrollIdle()V

    .line 359
    :cond_0
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 327
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 328
    .local v1, scrollState:I
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    if-ne v2, v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 331
    :cond_0
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mScrollState:I

    .line 334
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    instance-of v2, v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    if-eqz v2, :cond_2

    .line 336
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_1
    const/16 v0, 0x4f4e

    .line 340
    .local v0, adapterScrollState:I
    :goto_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setScrollState(II)V

    .line 344
    .end local v0           #adapterScrollState:I
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 350
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrolling()V

    goto :goto_0

    .line 336
    :cond_3
    const/16 v0, 0x4f4d

    goto :goto_1

    .line 347
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrollIdle()V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private onScrolling()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onScrolling()V

    .line 364
    :cond_0
    return-void
.end method

.method private onUICmdRefresh(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 367
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh()V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public enableHostPadding()Z
    .locals 4

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, bIsPadding:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v1, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 566
    :cond_0
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][enableHostPadding] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return v0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x1

    return v0
.end method

.method protected getAdapterMediaType()I
    .locals 1

    .prologue
    .line 853
    const/16 v0, 0xff

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 6

    .prologue
    .line 932
    const-string v1, ""

    .line 933
    .local v1, nServiceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 934
    .local v2, sceneIntent:Landroid/content/Intent;
    if-nez v2, :cond_0

    move-object v3, v1

    .line 952
    :goto_0
    return-object v3

    .line 936
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 937
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "service_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 942
    :cond_1
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 948
    :cond_2
    const-string v3, "SceneOnlineFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlineFolder][getHeaderSubtitle]: Not support services "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    if-eqz v1, :cond_3

    move-object v3, v1

    .line 950
    goto :goto_0

    .line 952
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 910
    const-string v0, ""

    .line 912
    .local v0, nUserName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 913
    .local v1, sceneIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    move-object v2, v0

    .line 922
    :goto_0
    return-object v2

    .line 915
    :cond_0
    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string v2, ""

    if-eq v0, v2, :cond_1

    move-object v2, v0

    .line 918
    goto :goto_0

    .line 922
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1069
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1071
    .local v0, activity:Landroid/app/Activity;
    const-string v3, ""

    .line 1072
    .local v3, szServiceName:Ljava/lang/String;
    const-string v2, ""

    .line 1073
    .local v2, szLoading:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1074
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1075
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    return-object v2
.end method

.method public isHostScene()Z
    .locals 4

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, bIsHost:Z
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v1, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 557
    :cond_0
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][isHostScene] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string v1, "SceneOnlineFolder"

    const-string v2, "OnActivityResult: pass to data plugin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 845
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimState:I

    .line 847
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 2

    .prologue
    .line 744
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onBindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 746
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 747
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    .line 749
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->scrollListener()Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 751
    :cond_0
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 529
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 530
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->VERTICAL_SPACE_FOLDER_ITEM_PORT:I

    .line 531
    .local v2, vSpace:I
    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HORIZONTAL_SPACE_FOLDER_ITEM_PORT:I

    .line 532
    .local v1, hSpace:I
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 533
    sget v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->VERTICAL_SPACE_FOLDER_ITEM_LAND:I

    .line 534
    sget v1, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HORIZONTAL_SPACE_FOLDER_ITEM_LAND:I

    .line 536
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 537
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 539
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 540
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 541
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 543
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 546
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 549
    :cond_0
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 960
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 968
    :goto_0
    return-void

    .line 964
    :pswitch_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 4
    .parameter "nAnimState"

    .prologue
    .line 820
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 822
    .local v0, animationBundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 823
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 824
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 825
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 829
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimState:I

    .line 830
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 831
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 879
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 881
    :cond_0
    const-string v2, "SceneOnlineFolder"

    const-string v3, "null in onCreateHeaderBar"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const/4 v1, 0x0

    .line 893
    :goto_0
    return-object v1

    .line 885
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 886
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 887
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 888
    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageResource(I)V

    .line 889
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setSubtitle(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v1, v3, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->enableDivider(ZZ)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunny2/widget/gridview/GridView;
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 391
    const-string v7, "SceneOnlineFolder"

    const-string v8, "[HTCAlbum][SceneOnlineFolder][onCreateScene]: ..."

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 393
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 394
    const-string v7, "SceneOnlineFolder"

    const-string v8, "Activity is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 450
    :goto_0
    return-object v4

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 399
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;

    invoke-direct {v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;-><init>()V

    .line 400
    .local v3, folderParam:Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;
    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailW:I

    .line 401
    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_GRID_IMG:I

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->thumbnailH:I

    .line 402
    const v7, 0x7f02000d

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->backgroundResid:I

    .line 403
    iput v10, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemW:I

    .line 404
    iput v10, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->itemH:I

    .line 405
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Folder_Select(Landroid/content/Context;)I

    move-result v7

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->selecterResid:I

    .line 406
    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_TEXT_FIRST:I

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textviewHeight:I

    .line 407
    sget v7, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_FOLDER_TEXT_SECOND:I

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateviewHeight:I

    .line 408
    iput v11, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->numFolderImage:I

    .line 409
    const v7, 0x7f030010

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textLayoutResId:I

    .line 410
    const v7, 0x7f0a003d

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->textId:I

    .line 411
    const v7, 0x7f0a003e

    iput v7, v3, Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;->dateId:I

    .line 413
    new-instance v2, Lcom/htc/sunny2/widget/gridview/FolderViewItem;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v2, v1, v7, v3}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderViewItemParameter;)V

    .line 417
    .local v2, folderItemPrototype:Lcom/htc/sunny2/widget/gridview/FolderViewItem;
    new-instance v4, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v4, v1, v7, v2}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    .line 422
    .local v4, gridview:Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;
    new-instance v7, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-direct {v7, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    .line 423
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v5, inValue:Landroid/os/Bundle;
    const-string v7, "TEXTURE_MAX_COUNT"

    const/16 v8, 0xc8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v7, "GRID_WIDTH_HEIGHT"

    sget v8, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v7, v6, v5}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 430
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v6, v4}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 431
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 433
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/widget/gridview/FolderViewItem;->setFolderImageGetter(Lcom/htc/sunny2/widget/gridview/FolderViewItem$FolderImageGetter;)V

    .line 434
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 445
    const/4 v6, 0x2

    invoke-static {v1, v6}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeaderPaddingOffset(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v11}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v9, v6, v9, v9}, Lcom/htc/sunny2/widget/gridview/PreparatorNotifyGridView;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 463
    new-instance v1, Lcom/htc/album/Animation/animationSetFolderGridview;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetFolderGridview;-><init>(Lcom/htc/sunny2/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 456
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 457
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyScene()V

    .line 458
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 12
    .parameter "bundle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 468
    const-string v7, "SceneOnlineFolder"

    const-string v10, "[HTCAlbum][SceneOnlineFolder][onEnterScene]: ..."

    invoke-static {v7, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v4

    .line 470
    .local v4, sceneIntent:Landroid/content/Intent;
    const-string v7, "login_btn_text"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    .line 472
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 474
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-nez v7, :cond_0

    .line 475
    const/16 v7, 0x2711

    invoke-virtual {p0, v8, v7}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->createControlBar(II)V

    .line 478
    :cond_0
    iget-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v7, :cond_5

    .line 480
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    .line 481
    .local v0, activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    new-instance v7, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 483
    const-string v7, "service_name"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, serviceName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v7, v5, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 486
    invoke-virtual {v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->finish()V

    .line 525
    .end local v0           #activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    .end local v5           #serviceName:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v7, v9

    .line 470
    goto :goto_0

    .line 493
    .restart local v0       #activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    .restart local v5       #serviceName:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    .line 494
    .local v2, bIsAccountActive:Z
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v7, :cond_4

    .line 496
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .line 497
    .local v6, switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->isHostScene()Z

    move-result v7

    invoke-interface {v6, v7, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 499
    if-nez v2, :cond_7

    .line 500
    invoke-interface {v6, v8}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 504
    .end local v6           #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 506
    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 510
    .end local v0           #activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    .end local v2           #bIsAccountActive:Z
    .end local v5           #serviceName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    new-instance v8, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$OnItemSelectedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 511
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableScrollCache4GridviewFolderList()Z

    move-result v1

    .line 512
    .local v1, bEnableScrollCache:Z
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-nez v7, :cond_6

    .line 514
    new-instance v8, Lcom/htc/album/addons/SceneScrollCacheHandler;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v7, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {v8, v9, v7, p0, v1}, Lcom/htc/album/addons/SceneScrollCacheHandler;-><init>(Landroid/app/Activity;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/scene/GalleryBaseScene;Z)V

    iput-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 520
    :cond_6
    if-eqz v1, :cond_1

    .line 522
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v3, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 523
    .local v3, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    sget-object v7, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-virtual {v3, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->enableScrollingCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    goto :goto_1

    .line 502
    .end local v1           #bEnableScrollCache:Z
    .end local v3           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    .restart local v0       #activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    .restart local v2       #bIsAccountActive:Z
    .restart local v5       #serviceName:Ljava/lang/String;
    .restart local v6       #switchHost:Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
    :cond_7
    invoke-interface {v6, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    goto :goto_2
.end method

.method public onErrorList()V
    .locals 9

    .prologue
    .line 1032
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    const-string v6, "SceneOnlineFolder"

    const-string v7, "[HTCAlbum][SceneOnlineFolder][onErrorList]: ..."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v6, Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 1037
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6, p0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 1039
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1040
    .local v0, activity:Landroid/app/Activity;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v5

    .line 1042
    .local v5, viewRoot:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v6, :cond_2

    .line 1044
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1045
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03002f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 1047
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0011

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1048
    .local v4, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v7, 0x7f0a0070

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1050
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/4 v3, 0x0

    .line 1051
    .local v3, szMessage:Ljava/lang/String;
    const v6, 0x7f0b0041

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemSelected(I)V
    .locals 14
    .parameter "index"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    .line 187
    .local v0, adapter:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemSelected]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 194
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v2, Lcom/htc/album/Animation/animationSetFolderGridview;

    .line 198
    .local v2, animationSet:Lcom/htc/album/Animation/animationSetFolderGridview;
    invoke-virtual {v2, p1}, Lcom/htc/album/Animation/animationSetFolderGridview;->setFocused(I)V

    .line 200
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v4, bundle:Landroid/os/Bundle;
    move v9, p1

    .line 203
    .local v9, pos:I
    iget-object v7, v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    .line 204
    .local v7, mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
    const/4 v6, 0x0

    .line 206
    .local v6, mDataPlugin:Ljava/lang/Object;
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v11

    if-eq v10, v11, :cond_0

    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v11

    if-eq v10, v11, :cond_0

    .line 212
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v10, "service_name"

    iget-object v11, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v6, :cond_7

    .line 217
    const-string v10, "user_id"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    const-string v10, "album_id"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v10, "album_name"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v10, "album_photo"

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 227
    :cond_2
    const-string v10, "flag_genuine"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 228
    :cond_3
    const-string v11, "opensense_pugin"

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v10, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v10}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const-string v10, "refresh_by_delete"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string v10, "refresh_by_delete_all"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItemRequest()Ljava/lang/Object;

    move-result-object v8

    .line 236
    .local v8, obj:Ljava/lang/Object;
    instance-of v10, v8, Landroid/os/Bundle;

    if-eqz v10, :cond_6

    .line 242
    const-string v11, "from_tabhost"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "from_tabhost"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v11, "from_albumhost"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "from_albumhost"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v11, "from_tmoFaves"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "from_tmoFaves"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v11, "user_name"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "user_name"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v11, "user_buddyicon"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "user_buddyicon"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v11, "from_outside"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "from_outside"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v11, "my_live_album"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "my_live_album"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const/4 v11, 0x1

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "from_tmoFaves"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-ne v11, v10, :cond_6

    .line 256
    const/4 v5, 0x0

    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v10, v8

    .line 257
    check-cast v10, Landroid/os/Bundle;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 258
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]: facebook: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_4
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v10, v8

    .line 261
    check-cast v10, Landroid/os/Bundle;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 262
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]: flickr: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_5
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 265
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v11, "user_name"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "user_name"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v11, "photo_id"

    move-object v10, v8

    check-cast v10, Landroid/os/Bundle;

    const-string v12, "photo_id"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 271
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    check-cast v8, Landroid/os/Bundle;

    .end local v8           #obj:Ljava/lang/Object;
    const-string v10, "from_outside"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 273
    .local v3, bIsFromOutside:Z
    const-string v10, "SceneOnlineFolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][SceneOnlineFolder][onItemClick]4: isOutside: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v11, "SceneOnlinePhotoThumbnail"

    const/4 v12, 0x0

    invoke-interface {v10, v4, v11, v12}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 219
    .end local v3           #bIsFromOutside:Z
    :cond_7
    const-string v11, "user_id"

    iget-object v10, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 228
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onLeaveScene]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 634
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLeaveScene()V

    .line 635
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->uninitialize()V

    .line 637
    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    .line 641
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 642
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    .end local v0           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v0       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v0, :cond_0

    .line 996
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v1

    .line 1006
    :goto_0
    return v1

    .line 1000
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1006
    const/4 v1, 0x0

    goto :goto_0

    .line 1003
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh()V

    .line 1004
    const/4 v1, 0x1

    goto :goto_0

    .line 1000
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 288
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 320
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 293
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onItemSelected(I)V

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSyncList()V

    goto :goto_0

    .line 299
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onErrorList()V

    goto :goto_0

    .line 302
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->invalidateControlBars()V

    move v0, v1

    .line 303
    goto :goto_0

    .line 305
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onUICmdRefresh(Landroid/os/Message;)V

    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onLoadingOrDecodingThumbnails(I)V

    goto :goto_0

    .line 314
    :sswitch_7
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_0

    .line 317
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x139c -> :sswitch_0
        0x2763 -> :sswitch_2
        0x4e2d -> :sswitch_4
        0x4e88 -> :sswitch_1
        0x4e89 -> :sswitch_3
        0x4f4f -> :sswitch_8
        0x5079 -> :sswitch_6
        0x10200001 -> :sswitch_5
        0x10200009 -> :sswitch_7
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 653
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 655
    const-string v5, "SceneOnlineFolder"

    const-string v6, "[HTCAlbum][SceneOnlineFolder][onNewAdapter]: begin..."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 657
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v5, p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 658
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 659
    .local v1, sceneIntent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 708
    :goto_0
    return-void

    .line 661
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    .local v0, bundleNew:Landroid/os/Bundle;
    const-string v5, "mediaType"

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getAdapterMediaType()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    const-string v5, "user_name"

    const-string v6, "user_name"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v5, "user_buddyicon"

    const-string v6, "user_buddyicon"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v5, "service_display"

    const-string v6, "service_display"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v5, "from_tabhost"

    const-string v6, "from_tabhost"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 667
    const-string v5, "live_album"

    const-string v6, "live_album"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    const-string v5, "sort_list"

    const-string v6, "sort_list"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    const-string v5, "my_live_album"

    const-string v6, "my_live_album"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 670
    const-string v5, "recent_list"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, szUserID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 674
    .local v3, szServiceUrl:Ljava/lang/String;
    const-string v5, "service_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, szService:Ljava/lang/String;
    const-string v5, "service_name"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 678
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v3, v5, v8

    .line 688
    :goto_1
    const-string v5, "service_url"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 690
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v5, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataBundle(Landroid/os/Bundle;)V

    .line 693
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const-string v6, "from_albumhost"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setInternal(Z)V

    .line 695
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v5, :cond_3

    .line 697
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v5, p0, v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 698
    invoke-direct {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 707
    :goto_2
    const/16 v5, 0x4e89

    invoke-virtual {p0, v5, v10, v8}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 680
    :cond_1
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 682
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v3, v5, v9

    goto :goto_1

    .line 686
    :cond_2
    const-string v5, "service_url"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 702
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 703
    invoke-virtual {p0, v9}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 704
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    new-instance v6, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;

    invoke-direct {v6, p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V

    invoke-virtual {v5, v6}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    goto :goto_2
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 1059
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onNotifyUpdateComplete]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNotifyUpdateComplete()V

    .line 1061
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 1062
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 2
    .parameter "bIsLoading"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 800
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 802
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 804
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 781
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 782
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onPause()V

    .line 784
    :cond_0
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 2
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 836
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 837
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 840
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 972
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 974
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-ne v4, v2, :cond_0

    move v2, v3

    .line 987
    :goto_0
    return v2

    .line 976
    :cond_0
    const/4 v0, 0x0

    .line 977
    .local v0, dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v0

    .end local v0           #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .restart local v0       #dataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;
    if-eqz v0, :cond_1

    .line 979
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    move v2, v4

    .line 980
    goto :goto_0

    .line 984
    :cond_1
    const/4 v1, 0x0

    .line 985
    .local v1, itemRefresh:Landroid/view/MenuItem;
    const/4 v2, 0x6

    const v5, 0x20c0202

    invoke-interface {p1, v3, v2, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 986
    const v2, 0x208033b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v2, v4

    .line 987
    goto :goto_0
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 1011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 1012
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/16 v1, 0x4e24

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1013
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 4
    .parameter "header"

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSyncPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 899
    .local v0, bmpIcon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 901
    const-string v1, "SceneOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlineFolder][onRefreshHeaderBar] bmpIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageMode(I)V

    .line 905
    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setBackButtonImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 766
    const-string v1, "SceneOnlineFolder"

    const-string v2, "[HTCAlbum][SceneOnlineFolder][onResume]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onResume()V

    .line 769
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mFirstActivity:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mLoginFirst:Z

    if-eqz v1, :cond_0

    .line 771
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->RelayoutPageView(I)V

    .line 772
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onResume()V

    .line 773
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 774
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    .line 775
    .local v0, activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableSourceContentPadding(Z)V

    .line 778
    .end local v0           #activity:Lcom/htc/opensense2/widget/ActivityMainBase;
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 731
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 732
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mCacheControlHandler:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler;->onSendToBackground(Landroid/os/Bundle;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->setGlobalBackgroundResource(I)V

    .line 738
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 711
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 714
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 715
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 717
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 718
    .local v1, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 721
    .end local v1           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "refresh_by_delete_all"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 723
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneBundle:Landroid/os/Bundle;

    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRefresh()V

    .line 726
    :cond_1
    return-void
.end method

.method public onSyncList()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onSyncList]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->notifyDataSetChanged()V

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onEnablePageLoading(Z)V

    .line 283
    return-void
.end method

.method protected onSyncPhoto()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1023
    :goto_0
    return-object v0

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1019
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1020
    .local v7, sceneIntent:Landroid/content/Intent;
    if-eqz v7, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 1023
    :cond_5
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, -0x1

    const-string v3, "user_buddyicon"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    const-string v0, "SceneOnlineFolder"

    const-string v1, "[HTCAlbum][SceneOnlineFolder][onUnbindAdapter]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 759
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 760
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;)V

    .line 761
    return-void
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, "SceneOnlineFolder"

    return-object v0
.end method
