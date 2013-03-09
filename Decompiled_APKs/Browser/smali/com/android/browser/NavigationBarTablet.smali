.class public Lcom/android/browser/NavigationBarTablet;
.super Lcom/android/browser/NavigationBarBase;
.source "NavigationBarTablet.java"


# instance fields
.field private mAllButton:Landroid/view/View;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mClearButton:Landroid/view/View;

.field private mFaviconDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mGoButton:Landroid/view/View;

.field private mHideNavButtons:Z

.field private mNavButtons:Landroid/view/View;

.field private mRefreshDescription:Ljava/lang/String;

.field private mReloadDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchButton:Landroid/widget/ImageView;

.field private mStar:Landroid/widget/ImageView;

.field private mStopButton:Landroid/widget/ImageView;

.field private mStopDescription:Ljava/lang/String;

.field private mStopDrawable:Landroid/graphics/drawable/Drawable;

.field private mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mUrlContainer:Landroid/view/View;

.field private mUrlIcon:Landroid/widget/ImageView;

.field private mVoiceSearch:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/NavigationBarBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NavigationBarTablet;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    return-object v0
.end method

.method private clearOrClose()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->clearFocus()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private hideNavButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 303
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 304
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v9, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 305
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v9, [I

    iget-object v8, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    aput v8, v7, v10

    iget-object v8, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 307
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 308
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 309
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 310
    new-instance v5, Lcom/android/browser/NavigationBarTablet$1;

    invoke-direct {v5, p0}, Lcom/android/browser/NavigationBarTablet$1;-><init>(Lcom/android/browser/NavigationBarTablet;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 317
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 318
    return-void

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDescription:Ljava/lang/String;

    .line 82
    const v1, 0x7f0c0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mRefreshDescription:Ljava/lang/String;

    .line 83
    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    .line 88
    return-void
.end method

.method private showHideStar(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 334
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, starVisibility:I
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const/16 v0, 0x8

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    .end local v0           #starVisibility:I
    .end local v1           #url:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showNavButtons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 321
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 322
    .local v3, awidth:I
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v10, [F

    neg-int v8, v3

    int-to-float v8, v8

    aput v8, v7, v9

    const/4 v8, 0x0

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 323
    .local v0, anim1:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    const-string v6, "left"

    new-array v7, v10, [I

    aput v9, v7, v9

    aput v3, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 324
    .local v1, anim2:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 325
    .local v2, anim3:Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 326
    .local v4, combo:Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v11

    aput-object v2, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 327
    iget-object v5, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 328
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 329
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 330
    return-void

    .line 324
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private stopOrRefresh()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->isInLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->stopLoading()V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    if-ne v1, p1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->goBack()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    if-ne v1, p1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1, v2}, Lcom/android/browser/UiController;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 174
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    if-ne v1, p1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    sget-object v2, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-interface {v1, v2}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1, v2}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_0

    .line 181
    :cond_5
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_6

    .line 182
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->stopOrRefresh()V

    goto :goto_0

    .line 183
    :cond_6
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    if-ne v1, p1, :cond_7

    .line 184
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v1}, Lcom/android/browser/UrlInputView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "browser-type"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/browser/NavigationBarTablet;->onAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_7
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    if-ne v1, p1, :cond_8

    .line 189
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->clearOrClose()V

    goto :goto_0

    .line 190
    :cond_8
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_9

    .line 191
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->startVoiceSearch()V

    goto :goto_0

    .line 193
    :cond_9
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    .line 123
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v2}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 126
    .local v0, aw:I
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 128
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 135
    .end local v0           #aw:I
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 132
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/browser/NavigationBarBase;->onFinishInflate()V

    .line 93
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    .line 96
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mNavButtons:Landroid/view/View;

    .line 97
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    .line 98
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    .line 99
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    .line 104
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    .line 105
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mAllButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/browser/UrlInputView;->setContainer(Landroid/view/View;)V

    .line 117
    return-void
.end method

.method public onProgressStarted()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mStopDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method public onProgressStopped()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mReloadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStopButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mRefreshDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/android/browser/NavigationBarTablet;->showHideStar(Lcom/android/browser/Tab;)V

    .line 159
    return-void
.end method

.method public setCurrentUrlIsBookmark(Z)V
    .locals 1
    .parameter "isBookmark"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 164
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0, p1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    .line 211
    return-void
.end method

.method protected setFocusState(Z)V
    .locals 3
    .parameter "focus"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 230
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->setFocusState(Z)V

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->hideNavButtons()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/browser/NavigationBarTablet;->updateSearchMode(Z)V

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mUrlContainer:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFocusDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void

    .line 241
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarTablet;->mHideNavButtons:Z

    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/android/browser/NavigationBarTablet;->showNavButtons()V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/NavigationBarTablet;->showHideStar(Lcom/android/browser/Tab;)V

    .line 247
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->useQuickControls()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    :goto_2
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUnfocusDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setInVoiceMode(ZLjava/util/List;)V
    .locals 2
    .parameter "voicemode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, voiceResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lcom/android/browser/NavigationBarBase;->setInVoiceMode(ZLjava/util/List;)V

    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_0
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 5
    .parameter "voiceSearchEnabled"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 286
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, showvoicebutton:Z
    :goto_0
    iget-object v4, p0, Lcom/android/browser/NavigationBarTablet;->mVoiceSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/android/browser/NavigationBarTablet;->mGoButton:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    return-void

    .end local v0           #showvoicebutton:Z
    :cond_0
    move v0, v1

    .line 286
    goto :goto_0

    .restart local v0       #showvoicebutton:Z
    :cond_1
    move v2, v3

    .line 288
    goto :goto_1

    :cond_2
    move v3, v1

    .line 290
    goto :goto_2
.end method

.method public setTitleBar(Lcom/android/browser/TitleBar;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/browser/NavigationBarBase;->setTitleBar(Lcom/android/browser/TitleBar;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->setFocusState(Z)V

    .line 141
    return-void
.end method

.method updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02001b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 148
    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020028

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/NavigationBarTablet;->updateUrlIcon()V

    .line 153
    return-void

    .line 145
    :cond_1
    const v0, 0x7f020019

    goto :goto_0

    .line 148
    :cond_2
    const v0, 0x7f020027

    goto :goto_1
.end method

.method protected updateSearchMode(Z)V
    .locals 1
    .parameter "userEdited"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/NavigationBarTablet;->setSearchMode(Z)V

    .line 282
    return-void

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateUrlIcon()V
    .locals 2

    .prologue
    const v1, 0x7f020041

    .line 214
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlInput:Lcom/android/browser/UrlInputView;

    invoke-virtual {v0}, Lcom/android/browser/UrlInputView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/NavigationBarTablet;->mInVoiceMode:Z

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mBaseUi:Lcom/android/browser/BaseUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BaseUi;->getFaviconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/browser/NavigationBarTablet;->mUrlIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavigationBarTablet;->mFaviconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
