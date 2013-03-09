.class public Lcom/android/browser/XLargeUi;
.super Lcom/android/browser/BaseUi;
.source "XLargeUi.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "XLargeUi"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mNavBar:Lcom/android/browser/NavigationBarTablet;

.field private mPieControl:Lcom/android/browser/PieControlXLarge;

.field private mTabBar:Lcom/android/browser/TabBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 3
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v0

    check-cast v0, Lcom/android/browser/NavigationBarTablet;

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mNavBar:Lcom/android/browser/NavigationBarTablet;

    .line 65
    new-instance v0, Lcom/android/browser/TabBar;

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/TabBar;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    .line 66
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    .line 67
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->setupActionBar()V

    .line 68
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/XLargeUi;->setUseQuickControls(Z)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/XLargeUi;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private checkTabCount()V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/XLargeUi$1;

    invoke-direct {v1, p0}, Lcom/android/browser/XLargeUi$1;-><init>(Lcom/android/browser/XLargeUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method private getFaviconBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/browser/XLargeUi;->mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 350
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 351
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

    const v2, 0x7f0b001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 356
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mFaviconBackground:Landroid/graphics/drawable/PaintDrawable;

    return-object v1
.end method

.method private isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 73
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 74
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 75
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->onNewTab(Lcom/android/browser/Tab;)V

    .line 164
    return-void
.end method

.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "code"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 314
    .local v1, web:Landroid/webkit/WebView;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 324
    :cond_0
    const/16 v4, 0x1000

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 325
    .local v0, ctrl:Z
    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/browser/XLargeUi;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v4

    if-nez v4, :cond_1

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    .line 327
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 331
    .end local v0           #ctrl:Z
    .end local v1           #web:Landroid/webkit/WebView;
    :goto_0
    return v2

    .line 319
    .restart local v1       #web:Landroid/webkit/WebView;
    :sswitch_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_0

    .line 320
    invoke-virtual {p0, v3}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    goto :goto_0

    .end local v1           #web:Landroid/webkit/WebView;
    :cond_1
    move v2, v3

    .line 331
    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public editUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    .line 234
    return-void
.end method

.method getContentWidth()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 361
    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 362
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->getFaviconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v6, v3

    .line 363
    if-nez p1, :cond_0

    .line 364
    iget-object v3, p0, Lcom/android/browser/XLargeUi;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v1

    .line 368
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 370
    return-object v0

    .line 366
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v6, v1

    goto :goto_0
.end method

.method getTabBar()Lcom/android/browser/TabBar;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    return-object v0
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->hide()V

    .line 252
    :cond_0
    return-void
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .parameter "inLoad"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 274
    if-eqz p1, :cond_1

    .line 277
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setShowProgressOnly(Z)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 282
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onAddTabCompleted(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 168
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 141
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 305
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 308
    :cond_0
    return-void
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 155
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v1, p1, v0}, Lcom/android/browser/TabBar;->onProgress(Lcom/android/browser/Tab;I)V

    .line 156
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onRemoveTabCompleted(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onResume()V

    .line 133
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstantSearch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mNavBar:Lcom/android/browser/NavigationBarTablet;

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarTablet;->clearCompletions()V

    .line 136
    :cond_0
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 212
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->removeTab(Lcom/android/browser/Tab;)V

    .line 213
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->onRemoveTab(Lcom/android/browser/Tab;)V

    .line 214
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 215
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    .line 172
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->cancelTitleBarAnimation(Z)V

    .line 173
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    .line 174
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 175
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 178
    .local v0, view:Lcom/android/browser/BrowserWebView;
    if-nez v0, :cond_0

    .line 179
    const-string v1, "XLargeUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControlXLarge;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControlXLarge;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 191
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabBar;->onSetActiveTab(Lcom/android/browser/Tab;)V

    .line 192
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/XLargeUi;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 197
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/browser/XLargeUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 198
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 199
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBar;->setSkipTitleBarAnimations(Z)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/browser/XLargeUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method public setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 299
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/TabBar;->onFavicon(Lcom/android/browser/Tab;Landroid/graphics/Bitmap;)V

    .line 300
    return-void
.end method

.method protected setTitleGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-nez v0, :cond_0

    .line 257
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 292
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/browser/TabBar;->onUrlAndTitle(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setUseQuickControls(Z)V
    .locals 7
    .parameter "useQuickControls"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    .line 87
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-boolean v5, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    invoke-virtual {v4, v5}, Lcom/android/browser/TitleBar;->setUseQuickControls(Z)V

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 90
    new-instance v4, Lcom/android/browser/PieControlXLarge;

    iget-object v5, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/browser/PieControlXLarge;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V

    iput-object v4, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControlXLarge;

    .line 91
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControlXLarge;

    iget-object v5, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/android/browser/PieControlXLarge;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 93
    .local v3, web:Landroid/webkit/WebView;
    if-eqz v3, :cond_0

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 112
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    iget-boolean v5, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    invoke-virtual {v4, v5}, Lcom/android/browser/TabBar;->setUseQuickControls(Z)V

    .line 114
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 115
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    goto :goto_1

    .line 98
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #t:Lcom/android/browser/Tab;
    .end local v3           #web:Landroid/webkit/WebView;
    :cond_1
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    .line 99
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControlXLarge;

    if-eqz v4, :cond_2

    .line 100
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControlXLarge;

    iget-object v5, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/android/browser/PieControlXLarge;->removeFromContainer(Landroid/widget/FrameLayout;)V

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 103
    .restart local v3       #web:Landroid/webkit/WebView;
    if-eqz v3, :cond_4

    .line 104
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 105
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v4}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 106
    .local v1, p:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    .end local v1           #p:Landroid/view/ViewGroup;
    :cond_3
    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 110
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    goto :goto_0

    .line 117
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->updateUrlBarAutoShowManagerTarget()V

    .line 118
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    return v0
.end method

.method public showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V
    .locals 1
    .parameter "startWith"
    .parameter "extras"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/browser/BaseUi;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 82
    :cond_0
    return-void
.end method

.method protected showTitleBar()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->show()V

    .line 245
    :cond_0
    return-void
.end method

.method stopEditingUrl()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getNavigationBar()Lcom/android/browser/NavigationBarBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/NavigationBarBase;->stopEditingUrl()V

    .line 238
    return-void
.end method

.method stopWebViewScrolling()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserWebView;

    .line 145
    .local v0, web:Lcom/android/browser/BrowserWebView;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/android/browser/BrowserWebView;->stopScroll()V

    .line 148
    :cond_0
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mNavBar:Lcom/android/browser/NavigationBarTablet;

    invoke-virtual {v0, p1}, Lcom/android/browser/NavigationBarTablet;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 287
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 1
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
    .line 204
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 205
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 206
    return-void
.end method
