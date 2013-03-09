.class public abstract Lcom/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lcom/android/browser/UI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BaseUi$FullscreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams; = null

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams; = null

.field public static final HIDE_TITLEBAR_DELAY:I = 0x5dc

.field private static final LOGTAG:Ljava/lang/String; = "BaseUi"

.field private static final MSG_HIDE_TITLEBAR:I = 0x1


# instance fields
.field protected mActiveTab:Lcom/android/browser/Tab;

.field mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field protected mFullscreenContainer:Landroid/widget/FrameLayout;

.field protected mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field protected mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLockIconMixed:Landroid/graphics/drawable/Drawable;

.field private mLockIconSecure:Landroid/graphics/drawable/Drawable;

.field private mNavigationBar:Lcom/android/browser/NavigationBarBase;

.field private mOriginalOrientation:I

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lcom/android/browser/TabControl;

.field protected mTitleBar:Lcom/android/browser/TitleBar;

.field mUiController:Lcom/android/browser/UiController;

.field private mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

.field protected mUseQuickControls:Z

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 6
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 818
    new-instance v2, Lcom/android/browser/BaseUi$2;

    invoke-direct {v2, p0}, Lcom/android/browser/BaseUi$2;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 117
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    .line 118
    invoke-interface {p2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    .line 119
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 120
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 123
    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 126
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 128
    const v2, 0x7f0d003f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 130
    const v2, 0x7f0d003c

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 132
    const v2, 0x7f0d003e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 134
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 135
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 137
    new-instance v2, Lcom/android/browser/TitleBar;

    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/android/browser/TitleBar;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;Landroid/widget/FrameLayout;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 139
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 140
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    .line 141
    new-instance v2, Lcom/android/browser/UrlBarAutoShowManager;

    invoke-direct {v2, p0}, Lcom/android/browser/UrlBarAutoShowManager;-><init>(Lcom/android/browser/BaseUi;)V

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    .line 142
    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 149
    :cond_0
    return-void
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 338
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 339
    .local v2, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, container:Landroid/view/View;
    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 347
    const v4, 0x7f0d006b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 349
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 350
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 351
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->endActionMode()V

    .line 352
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 353
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 354
    .local v1, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_0

    .line 355
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V
    .locals 2
    .parameter "securityState"

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconSecure:Landroid/graphics/drawable/Drawable;

    .line 604
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 605
    return-void

    .line 598
    :cond_1
    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lcom/android/browser/Tab$SecurityState;

    if-ne p1, v1, :cond_0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mLockIconMixed:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 235
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    return-void
.end method

.method public attachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 296
    return-void
.end method

.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, container:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 306
    .local v1, mainView:Landroid/webkit/WebView;
    const v4, 0x7f0d006b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 308
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 309
    .local v2, parent:Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_4

    .line 310
    if-eqz v2, :cond_2

    .line 311
    const-string v4, "BaseUi"

    const-string v5, "mMainView already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 320
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 321
    .restart local v2       #parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5

    .line 322
    if-eqz v2, :cond_3

    .line 323
    const-string v4, "BaseUi"

    const-string v5, "mContainer already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :goto_2
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->attachSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 317
    :cond_4
    const-string v4, "BaseUi"

    const-string v5, "mMainView is already attached to wrapper in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    :cond_5
    const-string v4, "BaseUi"

    const-string v5, "mContainer is already attached to content in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 214
    .local v0, isBookmark:Z
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 216
    .end local v0           #isBookmark:Z
    :cond_0
    return-void
.end method

.method canShowTitleBar()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "tab"
    .parameter "subView"

    .prologue
    const/4 v7, -0x1

    .line 386
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 388
    .local v3, subViewContainer:Landroid/view/View;
    const v4, 0x7f0d003a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 390
    .local v2, inner:Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 394
    .local v0, cancel:Landroid/widget/ImageButton;
    move-object v1, p2

    .line 395
    .local v1, cancelSubView:Landroid/webkit/WebView;
    new-instance v4, Lcom/android/browser/BaseUi$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/BaseUi$1;-><init>(Lcom/android/browser/BaseUi;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {p1, p2}, Lcom/android/browser/Tab;->setSubWebView(Landroid/webkit/WebView;)V

    .line 401
    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setSubViewContainer(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method public detachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 291
    return-void
.end method

.method protected dismissIME()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 556
    :cond_0
    return-void
.end method

.method public editUrl(Z)V
    .locals 1
    .parameter "clearInput"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 437
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->startEditingUrl(Z)V

    .line 440
    :cond_1
    return-void
.end method

.method getActiveTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 777
    const/4 v2, 0x3

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 778
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    const/high16 v4, -0x100

    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    aput-object v3, v6, v2

    .line 779
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v2, -0x1

    invoke-direct {v7, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 780
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    aput-object v7, v6, v1

    .line 781
    if-nez p1, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v8

    .line 786
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 787
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    move v5, v8

    .line 788
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 789
    return-object v0

    .line 784
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v2, v6, v8

    goto :goto_0
.end method

.method protected getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 749
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 750
    .local v0, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100002

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 751
    return-object v0
.end method

.method public getTitleBar()Lcom/android/browser/TitleBar;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 726
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 729
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 829
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 571
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->hide()V

    .line 461
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTitleBarShowing()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isWebShowing()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

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
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 629
    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 176
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 680
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 676
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 672
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 536
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 537
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 538
    .local v0, decor:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 539
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 540
    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 541
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 543
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onMenuKey()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 668
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method public onPageStopped(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 221
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0023

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 224
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 159
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 165
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 166
    .local v0, ct:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "tab"
    .parameter "webView"

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002e

    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 371
    const v2, 0x7f0d006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 373
    .local v1, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 375
    .end local v1           #wrapper:Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 205
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 206
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 208
    return-void
.end method

.method protected refreshWebView()V
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 427
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 430
    :cond_0
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 498
    return-void
.end method

.method public removeActiveTabsPage()V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .locals 1
    .parameter "subviewContainer"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 410
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 411
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-ne v0, p1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 286
    :cond_0
    return-void
.end method

.method public revertVoiceTitleBar(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 491
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-direct {p0, v1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 242
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 243
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    .end local v0           #web:Landroid/webkit/WebView;
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 248
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 249
    .restart local v0       #web:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->updateUrlBarAutoShowManagerTarget()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 251
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 254
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/NavigationBarBase;->setIncognitoMode(Z)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 256
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v2}, Lcom/android/browser/TitleBar;->getEmbeddedHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v1, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 261
    :cond_1
    return-void
.end method

.method protected setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 621
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 623
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v1, v0}, Lcom/android/browser/NavigationBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 625
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 755
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 756
    .local v1, win:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 757
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 758
    .local v0, bits:I
    if-eqz p1, :cond_1

    .line 759
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 760
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 761
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 773
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 774
    return-void

    .line 763
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 766
    :cond_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 767
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 768
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 770
    :cond_2
    iget-object v3, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
    .locals 5
    .parameter "tab"
    .parameter "flag"

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 707
    :goto_0
    return-void

    .line 687
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 688
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_3

    .line 691
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2

    .line 692
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 696
    :goto_1
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 694
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setTitleGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 477
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTitleBarGravity(I)V

    .line 480
    :cond_0
    return-void
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 608
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    move-object v0, v1

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 614
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v2, v1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showActiveTabsPage()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 566
    return-void
.end method

.method public showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .locals 4
    .parameter "startingView"
    .parameter "extras"

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/browser/ComboViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "initial_view"

    invoke-virtual {p1}, Lcom/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v2, "combo_args"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 506
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 507
    const-string v2, "url"

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 510
    return-void
.end method

.method public showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 517
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 530
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/browser/BaseUi;->mOriginalOrientation:I

    .line 522
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 523
    .local v0, decor:Landroid/widget/FrameLayout;
    new-instance v1, Lcom/android/browser/BaseUi$FullscreenHolder;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/BaseUi$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 524
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 527
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BaseUi;->setFullscreen(Z)V

    .line 528
    iput-object p3, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 529
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public showMaxTabsWarning()V
    .locals 4

    .prologue
    .line 734
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0167

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 737
    .local v0, warning:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 738
    return-void
.end method

.method protected showTitleBar()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->show()V

    .line 455
    :cond_0
    return-void
.end method

.method protected final showTitleBarForDuration()V
    .locals 2

    .prologue
    .line 809
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BaseUi;->showTitleBarForDuration(J)V

    .line 810
    return-void
.end method

.method protected final showTitleBarForDuration(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 814
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 815
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 816
    return-void
.end method

.method public showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 485
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public showWeb(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    .line 834
    return-void
.end method

.method public suggestHideTitleBar()V
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->wantsToBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mNavigationBar:Lcom/android/browser/NavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 806
    :cond_0
    return-void
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TitleBar;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 580
    return-void
.end method

.method protected updateLockIconToLatest(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->updateLockIconImage(Lcom/android/browser/Tab$SecurityState;)V

    .line 589
    :cond_0
    return-void
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 0
    .parameter "tab"
    .parameter "menu"

    .prologue
    .line 651
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 576
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    return-void
.end method

.method protected updateUrlBarAutoShowManagerTarget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 265
    .local v0, web:Landroid/webkit/WebView;
    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/BaseUi;->mUseQuickControls:Z

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/android/browser/BrowserWebView;

    if-eqz v2, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .end local v0           #web:Landroid/webkit/WebView;
    invoke-virtual {v1, v0}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    .line 270
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 264
    goto :goto_0

    .line 268
    .restart local v0       #web:Landroid/webkit/WebView;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mUrlBarAutoShowManager:Lcom/android/browser/UrlBarAutoShowManager;

    invoke-virtual {v2, v1}, Lcom/android/browser/UrlBarAutoShowManager;->setTarget(Lcom/android/browser/BrowserWebView;)V

    goto :goto_1
.end method
