.class public abstract Lcom/htc/sunny2/scene/GalleryBaseScene;
.super Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.source "GalleryBaseScene.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene",
        "<TVIEW;TADAPTER;>;",
        "Lcom/htc/album/modules/ui/IControlBarHost;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneLoadingControl;"
    }
.end annotation


# static fields
.field protected static final FOOTER_BAR:I = 0x2

.field protected static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field protected mIsBound:Z

.field private mIsEntryProgressLoad:Z

.field protected mLayoutPageView:Landroid/widget/RelativeLayout;

.field private mOldOrientation:I

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/htc/sunny2/scene/GalleryBaseScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 62
    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsEntryProgressLoad:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 65
    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 67
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 682
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private configLayoutMainView(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 497
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onConfigMainViewLayout(Landroid/content/res/Configuration;)V

    .line 501
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mOldOrientation:I

    .line 503
    :cond_0
    return-void
.end method

.method private onEnableProgressLoading(ZZ)V
    .locals 1
    .parameter "bEnable"
    .parameter "bEnableEntryProgressLoad"

    .prologue
    .line 694
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    if-nez p1, :cond_0

    .line 698
    :goto_0
    return-void

    .line 697
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0
.end method

.method private onHandleErrorReport()V
    .locals 4

    .prologue
    .line 589
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-boolean v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    if-nez v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 595
    sget-object v1, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getCount()I

    move-result v0

    .line 600
    :cond_2
    sget-object v1, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onHandleErrorReport]: count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyErrorResult(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    .line 315
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 316
    return-void
.end method

.method protected final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 320
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBars(II)V

    .line 321
    return-void
.end method

.method protected final createFooterBar(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 310
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 311
    return-void
.end method

.method protected final createHeaderBar(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 305
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createHeaderBar(IZ)V

    .line 306
    return-void
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 440
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public enableEntryProgressload()V
    .locals 1

    .prologue
    .line 690
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsEntryProgressLoad:Z

    .line 691
    return-void
.end method

.method public final enableHeaderTransparentBackground(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 373
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->enableHeaderTransparentBackground(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 744
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 686
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1

    .prologue
    .line 405
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 410
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 363
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 2

    .prologue
    .line 339
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 341
    .local v0, hostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    move-result-object v0

    .line 344
    :cond_0
    return-object v0
.end method

.method public getPageLoadingPadding()I
    .locals 2

    .prologue
    .line 809
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 810
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    const/4 v1, 0x0

    .line 813
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final hideControlBars()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 421
    :cond_0
    return-void
.end method

.method protected final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 425
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 426
    :cond_0
    return-void
.end method

.method protected final invalidateControlBars()V
    .locals 1

    .prologue
    .line 415
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 416
    :cond_0
    return-void
.end method

.method protected final isControlBarShowing()Z
    .locals 1

    .prologue
    .line 435
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    goto :goto_0
.end method

.method protected isDisableTransitionAnimation()Z
    .locals 6

    .prologue
    .line 826
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 827
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_0

    move v1, v0

    .line 834
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 830
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 831
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "disable_animation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 833
    sget-object v3, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][GalleryBaseScene][isDisableTransitionAnimation]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 834
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public notifyDataChangedAt(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 530
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/view/ISViewDataChangeHandler;->notifyMediaDataChange(I)V

    .line 532
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 514
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/view/ISViewDataChangeHandler;

    invoke-interface {v0}, Lcom/htc/sunny2/view/ISViewDataChangeHandler;->notifyMediaDataChange()V

    .line 517
    sget-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][notifyDataSetChanged]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 521
    return-void
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 181
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onBindAdapter()V

    .line 186
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v2, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 191
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 192
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0           #config:Landroid/content/res/Configuration;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 200
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get correct Configuration in onResume to config main view layout. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBroadcastMediaConnected()Z
    .locals 1

    .prologue
    .line 565
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected()Z
    .locals 1

    .prologue
    .line 575
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive()Z
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBubbleDismissed()V
    .locals 2

    .prologue
    .line 469
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    sget-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onBubbleDismissed]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 459
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    sget-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onBubblePopped]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected onConfigMainViewLayout(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 505
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 492
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 493
    invoke-direct {p0, p1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)V

    .line 494
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
    .line 450
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 282
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemSync()V

    .line 289
    :cond_1
    return-object v0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 395
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/htc/album/modules/ui/widget/GalleryHeaderBar",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyAdapter()V
    .locals 4

    .prologue
    .line 126
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    .line 127
    .local v1, leaveView:Lcom/htc/sunny2/view/SView;
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 128
    .local v0, leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/sunny2/scene/GalleryBaseScene$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene$1;-><init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 145
    return-void
.end method

.method public onDestroyScene()V
    .locals 0

    .prologue
    .line 248
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onDisableTransitionAnimation(Z)V
    .locals 4
    .parameter "bDisable"

    .prologue
    .line 817
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 823
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 821
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "disable_animation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 822
    sget-object v1, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onDisableTransitionAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEnablePageLoading(Z)V
    .locals 12
    .parameter "bEnable"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 748
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enablePageLoading()Z

    move-result v7

    if-nez v7, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    iget-object v10, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v10}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v10

    if-eq v7, v10, :cond_0

    .line 754
    const/16 v7, 0x4e46

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 756
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 757
    .local v0, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v6

    .line 759
    .local v6, viewRoot:Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-nez v7, :cond_2

    .line 761
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 762
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03002f

    invoke-virtual {v1, v7, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    .line 763
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v10, 0x7f0a0011

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 766
    .local v5, textView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v10, 0x7f0a0070

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 771
    .local v3, progressBar:Landroid/widget/ProgressBar;
    iget-object v10, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-nez p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 773
    if-ne v8, p1, :cond_8

    .line 777
    const/4 v4, 0x0

    .line 778
    .local v4, szMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 779
    :cond_3
    const v7, 0x7f0b003f

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 781
    :cond_4
    if-eqz v5, :cond_5

    .line 782
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :cond_5
    if-eqz v3, :cond_6

    .line 784
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 786
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 787
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getPageLoadingPadding()I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 789
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 790
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #szMessage:Ljava/lang/String;
    :cond_7
    move v7, v9

    .line 771
    goto :goto_1

    .line 794
    :cond_8
    if-eqz v5, :cond_9

    .line 795
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_9
    if-eqz v3, :cond_a

    .line 797
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 799
    :cond_a
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 800
    iget-object v7, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onEnableProgressLoading(Z)V
    .locals 7
    .parameter "bEnable"

    .prologue
    .line 701
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->enableProgressLoading()Z

    move-result v4

    if-nez v4, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 707
    const/16 v4, 0x4e46

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 710
    iget-object v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 711
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 715
    const/4 v4, 0x1

    if-ne v4, p1, :cond_4

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, szMessage:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getProgressLoadingText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 719
    :cond_2
    const v4, 0x7f0b003f

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 721
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 722
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "loading_text"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/16 v4, 0x2724

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #szMessage:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 734
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][GalleryBaseScene][onEnableProgressLoading]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const/16 v4, 0x2724

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/app/Activity;->dismissDialog(I)V

    .line 729
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsEntryProgressLoad:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onEnterFullscreenMode()V
    .locals 3

    .prologue
    .line 671
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 672
    .local v0, header:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 675
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 678
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 80
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 81
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 82
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 87
    :cond_0
    new-instance v2, Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 92
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    .line 93
    .local v1, root:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 97
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isHostScene()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->getSourceSwitchView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->attachHostBar(Landroid/view/ViewGroup;)V

    .line 100
    :cond_1
    return-void
.end method

.method protected onLastViewItemReset()V
    .locals 3

    .prologue
    .line 838
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 844
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 842
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "last_viewed_photo_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onLastViewItemSync()V
    .locals 7

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v6, -0x1

    .line 863
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v5, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 867
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "last_viewed_photo_index"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 868
    .local v2, nPosition:I
    if-eq v6, v2, :cond_0

    .line 871
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v5, v5, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v5, :cond_3

    .line 873
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    .line 874
    .local v0, gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 875
    .local v3, nVisibleBegin:I
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v4

    .line 876
    .local v4, nVisibleEnd:I
    if-gt v3, v2, :cond_2

    if-ge v4, v2, :cond_0

    .line 877
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    goto :goto_0

    .line 879
    .end local v0           #gridView:Lcom/htc/sunny2/widget/gridview/GridView;
    .end local v3           #nVisibleBegin:I
    .end local v4           #nVisibleEnd:I
    :cond_3
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v5, v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v5, :cond_0

    .line 881
    iget-object v5, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v5, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    goto :goto_0
.end method

.method protected onLastViewItemUpdate()V
    .locals 3

    .prologue
    .line 847
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 860
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 851
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    .line 852
    .local v1, nPosition:I
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v2, :cond_2

    .line 853
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v1

    .line 857
    :cond_1
    :goto_1
    const-string v2, "last_viewed_photo_index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 854
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    instance-of v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 240
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 241
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onLeaveScene()V

    .line 242
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 634
    :cond_0
    :goto_0
    return v3

    .line 614
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 632
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 617
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onHandleErrorReport()V

    goto :goto_0

    .line 620
    :sswitch_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 623
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 626
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 629
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    goto :goto_0

    .line 614
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x2728 -> :sswitch_2
        0x2730 -> :sswitch_3
        0x2731 -> :sswitch_4
        0x4e44 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 109
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 110
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 114
    :cond_0
    return-void
.end method

.method public onNotifyUpdateComplete()V
    .locals 2

    .prologue
    .line 555
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v0, p0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    .line 556
    :cond_0
    return-void
.end method

.method public onNotifyUpdating(Z)V
    .locals 1
    .parameter "bIsLoading"

    .prologue
    .line 541
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 542
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->showProgressBar(Z)V

    .line 545
    :cond_0
    if-nez p1, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onTriggerErrorReport()V

    .line 547
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 487
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPause()V

    .line 488
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 3
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 293
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    sget-object v0, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][GalleryBaseScene][onPlayAnimation]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 296
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 4
    .parameter "nAnimState"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 255
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isDisableTransitionAnimation()Z

    move-result v1

    if-ne v3, v1, :cond_1

    .line 257
    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 266
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_2
    :goto_0
    sget-object v1, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][GalleryBaseScene][onPrepareAnimation]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return v0

    .line 270
    :pswitch_0
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareEnterFullscreenMode()V
    .locals 3

    .prologue
    .line 645
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mStatusBarHeight:I

    if-nez v2, :cond_2

    .line 649
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mStatusBarHeight:I

    .line 651
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 652
    .local v0, header:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 655
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mStatusBarHeight:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public final onPrepareLeaveFullscreenMode()V
    .locals 3

    .prologue
    .line 661
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->getHeaderContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 662
    .local v0, header:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 665
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 668
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 401
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 359
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 475
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onResume()V

    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 479
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->configLayoutMainView(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v0           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, e:Ljava/lang/NullPointerException;
    sget-object v2, Lcom/htc/sunny2/scene/GalleryBaseScene;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get correct Configuration in onResume to config main view layout. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 217
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->enableBroadcastNotify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 220
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnablePageLoading(Z)V

    .line 224
    iget-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsEntryProgressLoad:Z

    invoke-direct {p0, v1, v0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onEnableProgressLoading(ZZ)V

    .line 226
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    .line 228
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onLastViewItemReset()V

    .line 229
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onDisableTransitionAnimation(Z)V

    .line 230
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v5, 0x1

    .line 154
    invoke-super {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 155
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 156
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 158
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneBundle:Landroid/os/Bundle;

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityRoot()Landroid/view/ViewGroup;

    move-result-object v2

    .line 165
    .local v2, viewRoot:Landroid/view/ViewGroup;
    const v3, 0x7f03002f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 166
    .local v1, viewPageLoad:Landroid/view/ViewGroup;
    if-nez v1, :cond_3

    .line 167
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->defaultControlBarOn()Z

    move-result v0

    .line 172
    .local v0, isShowDefault:Z
    if-ne v5, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->isControlBarShowing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->showControlBars()V

    .line 178
    :cond_2
    :goto_1
    return-void

    .line 169
    .end local v0           #isShowDefault:Z
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mMainView:Lcom/htc/sunny2/view/SView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/view/SView;->setVisibility(Z)V

    goto :goto_0

    .line 175
    .restart local v0       #isShowDefault:Z
    :cond_4
    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;->hideControlBars()V

    goto :goto_1
.end method

.method public onTriggerErrorReport()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/16 v2, 0x4e44

    .line 640
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onRemoveMessage(I)V

    .line 641
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 642
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 1

    .prologue
    .line 203
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUnbindAdapter()V

    .line 204
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->removeSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mIsBound:Z

    .line 207
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 390
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 348
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final setEnableControlBarAnimation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 300
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableAnimation(Z)V

    .line 301
    return-void
.end method

.method protected final setEnableInvalidateWhenShow(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 335
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setEnableInvalidateWhenShow(Z)V

    .line 336
    :cond_0
    return-void
.end method

.method protected final showControlBars()V
    .locals 1

    .prologue
    .line 325
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars()V

    .line 326
    :cond_0
    return-void
.end method

.method protected final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 330
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected final toggleControlBarsVisibility()V
    .locals 1

    .prologue
    .line 430
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene;,"Lcom/htc/sunny2/scene/GalleryBaseScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->toggleControlBarsVisibility()V

    .line 431
    :cond_0
    return-void
.end method
