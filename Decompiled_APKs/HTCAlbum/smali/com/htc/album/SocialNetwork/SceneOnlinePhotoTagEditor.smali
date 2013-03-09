.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$ViewScrollStateChangedListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;",
        ">;",
        "Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_UPLOADEDITOR:I = 0x2

.field private static final HEADER_BAR_UPLOADEDITOR:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoTagEditor"


# instance fields
.field private final DEBUG:Ljava/lang/String;

.field private mAnimState:I

.field protected mCurrentIndex:I

.field protected mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mIsAllDataRdy:Z

.field private mIsUploading:Z

.field protected mPreviousIndex:I

.field private mService:Ljava/lang/String;

.field protected mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

.field protected mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

.field private mbCleanTop5FrinedList:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 50
    const-string v0, "KA>>> [SceneOnlinePhotoTagEditor]: "

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->DEBUG:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mPreviousIndex:I

    .line 57
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 58
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    .line 59
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    .line 62
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mbCleanTop5FrinedList:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z

    .line 65
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    .line 571
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onLaunchSettings_Wireless()V

    return-void
.end method

.method private adjustMainViewOffset()V
    .locals 6

    .prologue
    const v5, 0x7f080035

    const/4 v4, 0x0

    .line 424
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 429
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 431
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 432
    .local v1, paddingTop:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    .line 436
    .end local v1           #paddingTop:I
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 437
    .restart local v1       #paddingTop:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0
.end method

.method private onLaunchSettings_Wireless()V
    .locals 3

    .prologue
    .line 850
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 852
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 853
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 856
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method private onPhotoDetailReady()V
    .locals 6

    .prologue
    .line 323
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    .line 325
    const-string v4, "SceneOnlinePhotoTagEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoTagEditor][onPhotoDetailReady]: All Datqa Ready, Size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getCount()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v3, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 332
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v3, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->initBundleData(Ljava/util/ArrayList;)Z

    .line 335
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onNotifyUpdating(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onShowEditor()V

    .line 338
    return-void
.end method

.method private updateTitleBar(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const v9, 0x7f080036

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;

    .line 443
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    if-nez v1, :cond_0

    .line 445
    const-string v6, "SceneOnlinePhotoTagEditor"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoTagEditor][updateTitleBar]: UploaderHeaderBar not Ready !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitleGroup()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    .local v5, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_1

    .line 454
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 457
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 461
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v6, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v6

    if-nez v6, :cond_3

    .line 463
    :cond_2
    const-string v6, "SceneOnlinePhotoTagEditor"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoTagEditor][updateTitleBar]: mService == null || mAdapter == null || mAdapter.getItem(mCurrentIndex) == null !"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 469
    .restart local v0       #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 471
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 472
    .local v2, isFacebook:Z
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v6, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v4

    .line 473
    .local v4, isVideo:Z
    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    .line 475
    .local v3, isShowIndex:Z
    :goto_1
    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v3           #isShowIndex:Z
    :cond_4
    move v3, v7

    .line 473
    goto :goto_1

    .line 475
    .restart local v3       #isShowIndex:Z
    :cond_5
    const/4 v7, 0x4

    goto :goto_2
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "LivePhotoAdapter4Picker"

    return-object v0
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x1

    return v0
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 929
    const/16 v0, 0x12c

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x4

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 636
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v3, :cond_0

    .line 637
    const-string v3, ""

    .line 646
    :goto_0
    return-object v3

    .line 639
    :cond_0
    const/4 v1, 0x0

    .line 640
    .local v1, nCurrentIndex:I
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    if-gtz v3, :cond_1

    .line 641
    const/4 v1, 0x0

    .line 644
    :goto_1
    const-string v2, ""

    .line 645
    .local v2, szTextIndicator:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 646
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0b0098

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 643
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #szTextIndicator:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    goto :goto_1
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 717
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 719
    .local v0, activity:Landroid/app/Activity;
    const-string v1, ""

    .line 721
    .local v1, szLoading:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    .line 733
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 744
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 748
    .local v1, activity:Landroid/app/Activity;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 752
    :pswitch_0
    if-eqz p3, :cond_0

    .line 753
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 754
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/htc/album/addons/UploadEditorViewManager;->updateTags(IZLandroid/content/Intent;)V

    .line 756
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v2}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(I)V
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 935
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onAnimationEnd(I)V

    .line 936
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setVisibility(Z)V

    .line 937
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public onBindAdapter()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onBindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onBindAdapter()V

    .line 226
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 227
    const/16 v0, 0x4f4f

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 228
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 698
    return-void
.end method

.method public onClickTagButton()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 363
    const-string v9, "SceneOnlinePhotoTagEditor"

    const-string v10, "[HTCAlbum][SceneOnlinePhotoTagEditor][onClickTagButton]: "

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v9, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 367
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_0

    .line 369
    const-string v9, "SceneOnlinePhotoTagEditor"

    const-string v10, "[LocalFilmstripViewTemplate][OnTagButtonOnClickListener]: images NG !"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v2, bundle:Landroid/os/Bundle;
    const-string v9, "clear_top5_frined_list"

    iget-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mbCleanTop5FrinedList:Z

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    const/4 v6, 0x0

    .line 379
    .local v6, szService:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v9, :cond_1

    .line 380
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneBundle:Landroid/os/Bundle;

    const-string v10, "service_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 381
    :cond_1
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 382
    .local v4, isFacebook:Z
    if-eqz v4, :cond_2

    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v9, v12

    .line 383
    .local v5, strServiceName:Ljava/lang/String;
    :goto_1
    const-string v9, "service"

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v8, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    new-instance v7, Lcom/htc/album/TagUtils/TagPhotoInfo;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image/jpeg"

    invoke-direct {v7, v9, v10, v11}, Lcom/htc/album/TagUtils/TagPhotoInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .local v7, tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    const-string v9, "SceneOnlinePhotoTagEditor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> TagBtn - URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v9, "SceneOnlinePhotoTagEditor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> TagBtn - Path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v9, "SceneOnlinePhotoTagEditor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KA>>> TagBtn - MType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/album/addons/UploadEditorViewManager;->getTags(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/album/TagUtils/TagPhotoInfo;->setTags(Ljava/util/ArrayList;)V

    .line 398
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v9, "photoList"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 403
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 404
    .local v1, activity:Landroid/app/Activity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "upload_mode"

    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-class v9, Lcom/htc/album/addons/ActivityTagView;

    invoke-virtual {v3, v1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 408
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 411
    iput-boolean v12, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mbCleanTop5FrinedList:Z

    .line 413
    const v9, 0x88b9

    invoke-virtual {v1, v3, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 382
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #strServiceName:Ljava/lang/String;
    .end local v7           #tagPhotoInfo:Lcom/htc/album/TagUtils/TagPhotoInfo;
    .end local v8           #tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    :cond_2
    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v9, v13

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 418
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->adjustMainViewOffset()V

    .line 419
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout()V

    .line 420
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->updateTitleBar(Landroid/content/res/Configuration;)V

    .line 421
    return-void
.end method

.method public onConfirm()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 666
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    if-nez v3, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    if-ltz v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 678
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 679
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 680
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 683
    const/16 v3, 0x272c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 687
    :cond_3
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z

    .line 689
    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 690
    .local v2, isFacebook:Z
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v4}, Lcom/htc/album/addons/UploadEditorViewManager;->getBundleArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->runEditUpdate(ZLjava/util/ArrayList;)V

    .line 692
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 710
    :goto_0
    return-void

    .line 704
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onConfirm()V

    goto :goto_0

    .line 707
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onCancel()V

    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 902
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onCreateAnimation(I)Landroid/os/Bundle;

    .line 903
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 906
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 781
    :goto_0
    return-object v0

    .line 769
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    .line 770
    goto :goto_0

    .line 772
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->showDialogServerNoRespone()Landroid/app/Dialog;

    move-result-object v0

    .line 773
    goto :goto_0

    .line 775
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->showDialogConnectionError()Landroid/app/Dialog;

    move-result-object v0

    .line 776
    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x272c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 652
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 653
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 654
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 655
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 657
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 592
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 593
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 594
    .local v1, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v1

    .line 596
    return-object v1
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 10

    .prologue
    const v9, 0x7f080035

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 104
    const-string v5, "SceneOnlinePhotoTagEditor"

    const-string v6, "Activity is null"

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v2, 0x0

    .line 133
    :goto_0
    return-object v2

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    .line 110
    .local v2, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v5, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v5, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 111
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v3, inValue:Landroid/os/Bundle;
    const-string v5, "TEXTURE_MAX_COUNT"

    const/16 v6, 0x14

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v5, "ENABLE_QUALITY_OPTIONS"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v1, v3}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 116
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 117
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 118
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$ViewScrollStateChangedListener;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 119
    new-instance v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;

    invoke-direct {v5, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 120
    invoke-virtual {v2, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsOnlineTagEditor(Z)V

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 125
    .local v4, paddingTop:I
    int-to-float v5, v4

    invoke-virtual {v2, v7, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0

    .line 129
    .end local v4           #paddingTop:I
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 130
    .restart local v4       #paddingTop:I
    int-to-float v5, v4

    invoke-virtual {v2, v7, v5, v7}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPosition(FFF)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunny2/view/SView;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 138
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->createControlBars(II)V

    .line 139
    return-void
.end method

.method public onFilmstripItemSelected(I)V
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 495
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    if-ne v0, p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 497
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    .line 499
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onRemoveMessage(I)V

    .line 500
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 501
    const/16 v0, 0x1f4

    invoke-virtual {p0, v2, v3, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 503
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->invalidateControlBars()V

    goto :goto_0
.end method

.method public onHideEditor()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onHideEditor]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->hide()V

    .line 344
    :cond_0
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 319
    :goto_0
    return v3

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, activity:Landroid/app/Activity;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 299
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onShowEditor()V

    goto :goto_0

    .line 293
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onScrollStateChange(I)V

    goto :goto_0

    .line 296
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onHideEditor()V

    goto :goto_0

    .line 302
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPhotoDetailReady()V

    goto :goto_0

    .line 306
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 307
    const/16 v2, 0x272d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 313
    :sswitch_5
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 314
    const/16 v2, 0x272e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
        0x4e94 -> :sswitch_3
        0x4ee9 -> :sswitch_4
        0x4eea -> :sswitch_5
        0x4eeb -> :sswitch_5
        0x4f4f -> :sswitch_1
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 145
    const-string v1, "service_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, szService:Ljava/lang/String;
    const-string v1, "SceneOnlinePhotoTagEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoTagEditor][onNewAdapter]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 148
    new-instance v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 149
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v1, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 153
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->setDataRequest(Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onCreate()V

    .line 155
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-instance v4, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;

    invoke-direct {v4, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 158
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    const-string v2, "index_id"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->setPhotoPosition(I)V

    .line 159
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onResume()V

    .line 160
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->enableEntryProgressload()V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 162
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 3

    .prologue
    .line 70
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoTagEditor][onNotifyUpdateComplete]:  "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v1, p0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, bundle:Landroid/os/Bundle;
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 76
    const-string v0, "SceneOnlinePhotoTagEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoTagEditor][onNotifyUpdating]:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAllDataRdy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz p1, :cond_1

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPause()V

    .line 241
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onPause]:"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 247
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onPause]: Data not Ready, BackToPresiousView."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    goto :goto_0
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 912
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 914
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAnimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->hideControlBars()V

    .line 917
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 918
    .local v0, controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 919
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 920
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 921
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 922
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 924
    .end local v0           #controller:Lcom/htc/sunny2/view/animation/SAnimationController;
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v0, 0x0

    .line 889
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAnimState:I

    .line 890
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPrepareAnimation(I)Z

    .line 891
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAnimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 892
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 893
    const/4 v0, 0x1

    .line 896
    :cond_0
    return v0
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 3
    .parameter "header"

    .prologue
    .line 607
    move-object v0, p1

    check-cast v0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;

    .line 608
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 610
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->setServiceIconResource(I)V

    .line 627
    :goto_0
    return-void

    .line 614
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->setServiceIconResource(I)V

    goto :goto_0

    .line 620
    :cond_1
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "KA>>> [SceneOnlinePhotoTagEditor]:  szService is not support !!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_2
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "KA>>> [SceneOnlinePhotoTagEditor]:  szService is NULL !!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_0

    .line 492
    :cond_0
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onSendToBackground]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->detach()V

    .line 210
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->onDestroy()V

    .line 213
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsUploading:Z

    .line 214
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 217
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onEnableProgressLoading(Z)V

    .line 219
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 165
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoTagEditor][onSendToForeground]:  "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 167
    new-instance v1, Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    .line 168
    new-instance v2, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-direct {v2, v3, v1, p0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;-><init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditUpdateManager:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, nSource:I
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneBundle:Landroid/os/Bundle;

    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 176
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x1

    .line 194
    :goto_0
    const-string v1, "SceneOnlinePhotoTagEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoTagEditor][onSendToForeground]: mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->initialize(Landroid/app/Activity;I)V

    .line 197
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->attachTo(Landroid/view/ViewGroup;)V

    .line 198
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    new-instance v2, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;

    invoke-direct {v2, p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$onTagButtonClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    const/16 v2, 0x4e35

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 202
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->updateTitleBar(Landroid/content/res/Configuration;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->invalidateControlBars()V

    .line 204
    return-void

    .line 180
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const/4 v0, 0x2

    goto :goto_0

    .line 186
    :cond_2
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "KA>>> [SceneOnlinePhotoTagEditor]:  szService is not support !!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    const-string v1, "SceneOnlinePhotoTagEditor"

    const-string v2, "KA>>> [SceneOnlinePhotoTagEditor]:  szService is NULL !!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShowEditor()V
    .locals 3

    .prologue
    .line 347
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mIsAllDataRdy:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 352
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mPreviousIndex:I

    if-ltz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mPreviousIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->savePreviousEditorView(I)V

    .line 355
    :cond_0
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mPreviousIndex:I

    .line 357
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mCurrentIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->prepareEditorView(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    .line 358
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mUploadEditorViewManager:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v1}, Lcom/htc/album/addons/UploadEditorViewManager;->show()V

    .line 360
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoTagEditor][onUnbindAdapter]:  "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-super {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onUnbindAdapter()V

    .line 233
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 234
    return-void
.end method

.method public onUpdateCancel()V
    .locals 2

    .prologue
    .line 869
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "KA>>> [SceneOnlinePhotoTagEditor]:  onUpdateCancel !!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public onUpdateError(I)V
    .locals 2
    .parameter "nErrorCode"

    .prologue
    .line 862
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "KA>>> [SceneOnlinePhotoTagEditor]:  onUpdateError !!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->onPostMessage(ILjava/lang/Object;I)V

    .line 865
    return-void
.end method

.method public onUpdateSuccess()V
    .locals 2

    .prologue
    .line 874
    const-string v0, "SceneOnlinePhotoTagEditor"

    const-string v1, "KA>>> [SceneOnlinePhotoTagEditor]:  onUpdateSuccess !!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 876
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "SceneOnlinePhotoTagEditor"

    return-object v0
.end method

.method protected showDialogConnectionError()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 805
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 807
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0128

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0129

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 812
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x20c0009

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$2;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 819
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 824
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 826
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c0162

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c0156

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 831
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x20c0200

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$3;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 838
    const v2, 0x20c01d6

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$4;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$4;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 845
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected showDialogServerNoRespone()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 786
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 788
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0126

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0127

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 793
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x20c01d6

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;

    invoke-direct {v3, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 800
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method
