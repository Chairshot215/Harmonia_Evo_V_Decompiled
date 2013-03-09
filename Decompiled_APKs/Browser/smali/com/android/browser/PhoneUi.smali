.class public Lcom/android/browser/PhoneUi;
.super Lcom/android/browser/BaseUi;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PhoneUi$AnimScreen;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PhoneUi"

.field private static final MSG_INIT_NAVSCREEN:I = 0x64


# instance fields
.field private mActionBarHeight:I

.field private mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

.field mAnimating:Z

.field mExtendedMenuOpen:Z

.field private mNavScreen:Lcom/android/browser/NavScreen;

.field private mNavigationBar:Lcom/android/browser/NavigationBarPhone;

.field mOptionsMenuOpen:Z

.field private mPieControl:Lcom/android/browser/PieControlPhone;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 4
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 70
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setUseQuickControls(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v1

    check-cast v1, Lcom/android/browser/NavigationBarPhone;

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    .line 72
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v0, heightValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    .line 77
    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/PhoneUi;)Lcom/android/browser/PhoneUi$AnimScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/PhoneUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimationIn()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/PhoneUi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    return-void
.end method

.method private finishAnimateOut()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 480
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v2}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 483
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 484
    return-void
.end method

.method private finishAnimationIn()V
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->sendAccessibilityEvent(I)V

    .line 390
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V

    .line 392
    :cond_0
    return-void
.end method

.method private showingNavScreen()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    invoke-virtual {v0}, Lcom/android/browser/NavScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "code"
    .parameter "event"

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    .line 90
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->handleMessage(Landroid/os/Message;)V

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 143
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    sget-object v2, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/android/browser/PhoneUi$AnimScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 149
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 152
    :cond_1
    return-void
.end method

.method hideNavScreen(IZ)V
    .locals 33
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v28

    if-nez v28, :cond_0

    .line 477
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v20

    .line 397
    .local v20, tab:Lcom/android/browser/Tab;
    if-eqz v20, :cond_1

    if-nez p2, :cond_4

    .line 398
    :cond_1
    if-eqz v20, :cond_3

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 404
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto :goto_0

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 408
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->getTabView(I)Lcom/android/browser/NavTabView;

    move-result-object v21

    .line 409
    .local v21, tabview:Lcom/android/browser/NavTabView;
    if-nez v21, :cond_6

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v28

    if-lez v28, :cond_5

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 414
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->finishAnimateOut()V

    goto/16 :goto_0

    .line 418
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    if-nez v28, :cond_7

    .line 422
    new-instance v28, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 424
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Landroid/graphics/Bitmap;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v29, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v29 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v29

    sget-object v30, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v28 .. v30}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v32

    invoke-virtual/range {v28 .. v32}, Landroid/view/View;->layout(IIII)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/NavTabScroller;->finishScroller()V

    .line 429
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    .line 430
    .local v22, target:Landroid/widget/ImageView;
    const/16 v24, 0x0

    .line 431
    .local v24, toLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v26

    .line 432
    .local v26, toTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    .line 433
    .local v25, toRight:I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    .line 434
    .local v27, width:I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 435
    .local v11, height:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/NavTabView;->getLeft()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLeft()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/browser/NavTabScroller;->getScrollX()I

    move-result v29

    sub-int v8, v28, v29

    .line 436
    .local v8, fromLeft:I
    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/NavTabView;->getTop()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getTop()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/browser/NavScreen;->mScroller:Lcom/android/browser/NavTabScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/browser/NavTabScroller;->getScrollY()I

    move-result v29

    sub-int v10, v28, v29

    .line 437
    .local v10, fromTop:I
    add-int v9, v8, v27

    .line 438
    .local v9, fromRight:I
    add-int v7, v10, v11

    .line 439
    .local v7, fromBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v16, v28, v29

    .line 440
    .local v16, scaleFactor:F
    int-to-float v0, v11

    move/from16 v28, v0

    mul-float v28, v28, v16

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v23, v26, v28

    .line 441
    .local v23, toBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLeft(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTop(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setRight(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBottom(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f80

    #calls: Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v28 .. v29}, Lcom/android/browser/PhoneUi$AnimScreen;->access$200(Lcom/android/browser/PhoneUi$AnimScreen;F)V

    .line 446
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 447
    .local v17, set1:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v28

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_0

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 448
    .local v6, fade2:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_1

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 449
    .local v5, fade1:Landroid/animation/ObjectAnimator;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v5, v28, v29

    const/16 v29, 0x1

    aput-object v6, v28, v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 450
    const-wide/16 v28, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 451
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    .line 452
    .local v18, set2:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "left"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v8, v30, v31

    const/16 v31, 0x1

    aput v24, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 454
    .local v12, l:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "top"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v10, v30, v31

    const/16 v31, 0x1

    aput v26, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 456
    .local v19, t:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "right"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v9, v30, v31

    const/16 v31, 0x1

    aput v25, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 458
    .local v14, r:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v28 .. v28}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v28

    const-string v29, "bottom"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput v7, v30, v31

    const/16 v31, 0x1

    aput v23, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 460
    .local v3, b:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v28, v0

    const-string v29, "scaleFactor"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/high16 v32, 0x3f80

    aput v32, v30, v31

    const/16 v31, 0x1

    aput v16, v30, v31

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 462
    .local v15, scale:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const-string v29, "alpha"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v30, v0

    fill-array-data v30, :array_2

    invoke-static/range {v28 .. v30}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 463
    .local v13, otheralpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v28, 0x64

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 464
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v12, v28, v29

    const/16 v29, 0x1

    aput-object v19, v28, v29

    const/16 v29, 0x2

    aput-object v14, v28, v29

    const/16 v29, 0x3

    aput-object v3, v28, v29

    const/16 v29, 0x4

    aput-object v15, v28, v29

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 465
    const-wide/16 v28, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 466
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 467
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    const/16 v29, 0x1

    aput-object v18, v28, v29

    const/16 v29, 0x2

    aput-object v13, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 468
    new-instance v28, Lcom/android/browser/PhoneUi$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$2;-><init>(Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 447
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 448
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 462
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/browser/BaseUi;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsRestoreAllTabs()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .parameter "inLoad"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 257
    if-eqz p1, :cond_1

    .line 258
    iget-boolean v0, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 263
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/PhoneUi;->mActionBarHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public onBackKey()Z
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/NavScreen;->close(I)V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onBackKey()Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 241
    :cond_0
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 234
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 82
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00ae

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d00af

    if-eq v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 228
    :cond_0
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/16 v3, 0x64

    .line 112
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 114
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 115
    if-ne v0, v3, :cond_3

    .line 116
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-nez v1, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->suggestHideTitleBar()V

    .line 118
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 132
    .end local v0           #progress:I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    :cond_2
    return-void

    .line 123
    .restart local v0       #progress:I
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-eqz v1, :cond_1

    .line 124
    :cond_4
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 126
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    goto :goto_0
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 158
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 162
    .local v0, view:Lcom/android/browser/BrowserWebView;
    if-nez v0, :cond_0

    .line 163
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 175
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/PhoneUi;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 181
    :goto_2
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mNavigationBar:Lcom/android/browser/NavigationBarPhone;

    invoke-virtual {v1, v3}, Lcom/android/browser/NavigationBarPhone;->onStateChanged(I)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 183
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 184
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v3}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method protected setTitleGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 267
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public setUseQuickControls(Z)V
    .locals 4
    .parameter "useQuickControls"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    .line 280
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-boolean v2, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 281
    if-eqz p1, :cond_1

    .line 282
    new-instance v1, Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/browser/PieControlPhone;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    .line 283
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 285
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->updateUrlBarAutoShowManagerTarget()V

    .line 303
    return-void

    .line 289
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mPieControl:Lcom/android/browser/PieControlPhone;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlPhone;->removeFromContainer(Landroid/widget/FrameLayout;)V

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 293
    .restart local v0       #web:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 295
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 300
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method showNavScreen()V
    .locals 30

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Lcom/android/browser/UiController;->setBlockEvents(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 319
    new-instance v25, Lcom/android/browser/NavScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/NavScreen;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/Tab;->capture()V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 328
    new-instance v25, Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    .line 334
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/android/browser/PhoneUi$AnimScreen;->set(Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v26, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v26

    sget-object v27, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v25 .. v27}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/view/View;->layout(IIII)V

    .line 340
    const/4 v6, 0x0

    .line 341
    .local v6, fromLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v8

    .line 342
    .local v8, fromTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    .line 343
    .local v7, fromRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    .line 344
    .local v5, fromBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0030

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 345
    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0031

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 346
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0032

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 347
    .local v11, ntth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v25

    sub-int v25, v25, v24

    div-int/lit8 v18, v25, 0x2

    .line 348
    .local v18, toLeft:I
    add-int v25, v11, v9

    sub-int v25, v5, v25

    div-int/lit8 v25, v25, 0x2

    add-int v20, v25, v11

    .line 349
    .local v20, toTop:I
    add-int v19, v18, v24

    .line 350
    .local v19, toRight:I
    add-int v17, v20, v9

    .line 351
    .local v17, toBottom:I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v12, v25, v26

    .line 352
    .local v12, scaleFactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mActiveTab:Lcom/android/browser/Tab;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/browser/PhoneUi;->detachTab(Lcom/android/browser/Tab;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 355
    .local v13, set1:Landroid/animation/AnimatorSet;
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 356
    .local v10, inanim:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "left"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v6, v27, v28

    const/16 v28, 0x1

    aput v18, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 358
    .local v22, tx:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "top"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v8, v27, v28

    const/16 v28, 0x1

    aput v20, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 360
    .local v23, ty:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "right"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v7, v27, v28

    const/16 v28, 0x1

    aput v19, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 362
    .local v21, tr:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$300(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "bottom"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v5, v27, v28

    const/16 v28, 0x1

    aput v17, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 364
    .local v15, tb:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_0

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 366
    .local v16, title:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const-string v26, "scaleFactor"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f80

    aput v29, v27, v28

    const/16 v28, 0x1

    aput v12, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 368
    .local v14, sx:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const-string v26, "alpha"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 370
    .local v4, blend1:Landroid/animation/ObjectAnimator;
    const-wide/16 v25, 0x64

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 372
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    const/16 v26, 0x1

    aput-object v23, v25, v26

    const/16 v26, 0x2

    aput-object v21, v25, v26

    const/16 v26, 0x3

    aput-object v15, v25, v26

    const/16 v26, 0x4

    aput-object v14, v25, v26

    const/16 v26, 0x5

    aput-object v16, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 373
    const-wide/16 v25, 0xc8

    move-wide/from16 v0, v25

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 374
    new-instance v25, Lcom/android/browser/PhoneUi$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/PhoneUi$1;-><init>(Lcom/android/browser/PhoneUi;)V

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v10, v25, v26

    const/16 v26, 0x1

    aput-object v4, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 383
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 384
    return-void

    .line 322
    .end local v4           #blend1:Landroid/animation/ObjectAnimator;
    .end local v5           #fromBottom:I
    .end local v6           #fromLeft:I
    .end local v7           #fromRight:I
    .end local v8           #fromTop:I
    .end local v9           #height:I
    .end local v10           #inanim:Landroid/animation/AnimatorSet;
    .end local v11           #ntth:I
    .end local v12           #scaleFactor:F
    .end local v13           #set1:Landroid/animation/AnimatorSet;
    .end local v14           #sx:Landroid/animation/ObjectAnimator;
    .end local v15           #tb:Landroid/animation/ObjectAnimator;
    .end local v16           #title:Landroid/animation/ObjectAnimator;
    .end local v17           #toBottom:I
    .end local v18           #toLeft:I
    .end local v19           #toRight:I
    .end local v20           #toTop:I
    .end local v21           #tr:Landroid/animation/ObjectAnimator;
    .end local v22           #tx:Landroid/animation/ObjectAnimator;
    .end local v23           #ty:Landroid/animation/ObjectAnimator;
    .end local v24           #width:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/NavScreen;->setVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f80

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/NavScreen;->setAlpha(F)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mNavScreen:Lcom/android/browser/NavScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/NavScreen;->refreshAdapter()V

    goto/16 :goto_0

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;

    move-result-object v25

    const/high16 v26, 0x3f80

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    #getter for: Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;
    invoke-static/range {v25 .. v25}, Lcom/android/browser/PhoneUi$AnimScreen;->access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;

    move-result-object v25

    const/high16 v26, 0x3f80

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PhoneUi;->mAnimScreen:Lcom/android/browser/PhoneUi$AnimScreen;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f80

    #calls: Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V
    invoke-static/range {v25 .. v26}, Lcom/android/browser/PhoneUi$AnimScreen;->access$200(Lcom/android/browser/PhoneUi$AnimScreen;F)V

    goto/16 :goto_1

    .line 364
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 368
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public showWeb(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->showWeb(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    .line 314
    return-void
.end method

.method public toggleNavScreen()V
    .locals 2

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showNavScreen()V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/PhoneUi;->hideNavScreen(IZ)V

    goto :goto_0
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 7
    .parameter "tab"
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 197
    const v4, 0x7f0d00a5

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 198
    .local v0, abm:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 199
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    :cond_0
    const v4, 0x7f0d00b0

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 202
    .local v2, info:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 203
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    :cond_1
    const v4, 0x7f0d00a3

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 206
    .local v3, newtab:Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-nez v4, :cond_2

    .line 207
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :cond_2
    const v4, 0x7f0d00a4

    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 210
    .local v1, incognito:Landroid/view/MenuItem;
    if-eqz v1, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/browser/PhoneUi;->mUseQuickControls:Z

    if-eqz v4, :cond_7

    :cond_3
    move v4, v5

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/PhoneUi;->showingNavScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    const v4, 0x7f0d00a6

    invoke-interface {p2, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 215
    const v4, 0x7f0d00ab

    invoke-interface {p2, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 216
    const v4, 0x7f0d00a0

    invoke-interface {p2, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 217
    const v4, 0x7f0d00ad

    invoke-interface {p2, v4, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 219
    :cond_5
    return-void

    .end local v1           #incognito:Landroid/view/MenuItem;
    .end local v2           #info:Landroid/view/MenuItem;
    .end local v3           #newtab:Landroid/view/MenuItem;
    :cond_6
    move v4, v6

    .line 199
    goto :goto_0

    .restart local v1       #incognito:Landroid/view/MenuItem;
    .restart local v2       #info:Landroid/view/MenuItem;
    .restart local v3       #newtab:Landroid/view/MenuItem;
    :cond_7
    move v4, v6

    .line 211
    goto :goto_1
.end method
