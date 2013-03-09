.class public Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;
.super Lcom/actionbarsherlock/ActionBarSherlock;


# static fields
.field protected static final DEFAULT_FEATURES:I


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

.field private mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

.field private mActionMode:Lcom/actionbarsherlock/view/ActionMode;

.field private mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mContentParent:Landroid/view/ViewGroup;

.field private mDecor:Landroid/view/ViewGroup;

.field private mFeatures:I

.field private mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

.field private mIsTitleReady:Z

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field protected final mMenuBuilderCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

.field private final mMenuPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

.field protected final mNativeItemListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field protected mNativeItemMap:Ljava/util/HashMap;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mUiOptions:I

.field private final mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;-><init>(Landroid/app/Activity;I)V

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;

    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$2;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$2;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$3;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$3;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$4;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$4;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuBuilderCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->reopenMenu(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-void
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public static cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private generateLayout()Landroid/view/ViewGroup;
    .locals 7

    const/16 v6, 0x9

    const/16 v2, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ActionBarSherlock"

    const-string v1, "[generateLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must use Theme.Sherlock, Theme.Sherlock.Light, Theme.Sherlock.Light.DarkActionBar, or a derivative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_action_bar_overlay:I

    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t find content container view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->requestFeature(I)Z

    goto :goto_0

    :cond_5
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_action_bar:I

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_simple_overlay_action_mode:I

    goto :goto_1

    :cond_7
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__screen_simple:I

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setId(I)V

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    :cond_9
    return-object v0
.end method

.method private getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_circular:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mCircularProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    goto :goto_0
.end method

.method private getFeatures()I
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[getFeatures]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    return v0
.end method

.method private getHorizontalProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mHorizontalProgressBar:Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    goto :goto_0
.end method

.method public static getResources_getBoolean(Landroid/content/Context;I)Z
    .locals 6

    const/high16 v5, 0x43f0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v4, v0

    cmpg-float v4, v1, v0

    if-gez v4, :cond_1

    move v0, v1

    :cond_1
    sget v4, Lcom/actionbarsherlock/R$bool;->abs__action_bar_embed_tabs:I

    if-ne p1, v4, :cond_3

    cmpl-float v0, v1, v5

    if-ltz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    sget v4, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    if-ne p1, v4, :cond_5

    cmpl-float v0, v1, v5

    if-ltz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    sget v4, Lcom/actionbarsherlock/R$bool;->abs__action_bar_expanded_action_views_exclusive:I

    if-ne p1, v4, :cond_7

    const/high16 v1, 0x4416

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    sget v0, Lcom/actionbarsherlock/R$bool;->abs__config_allowActionMenuItemTextWithIcon:I

    if-ne p1, v0, :cond_9

    cmpl-float v0, v1, v5

    if-ltz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown boolean resource ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResources_getInteger(Landroid/content/Context;I)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    sget v1, Lcom/actionbarsherlock/R$integer;->abs__max_action_buttons:I

    if-ne p1, v1, :cond_4

    const/high16 v1, 0x4416

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43fa

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43b4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown integer resource ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 5

    const/4 v4, 0x4

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v4}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "ActionBarSherlock"

    const-string v2, "[installDecor]"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->generateLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v2, Lcom/actionbarsherlock/R$id;->abs__action_bar:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mWindowCallback:Lcom/actionbarsherlock/view/Window$Callback;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowCallback(Lcom/actionbarsherlock/view/Window$Callback;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initProgress()V

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->initIndeterminateProgress()V

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->loadUiOptionsFromManifest(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_4

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    :cond_4
    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/actionbarsherlock/R$bool;->abs__split_action_bar_is_narrow:I

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v1, Lcom/actionbarsherlock/R$id;->abs__split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitView(Lcom/actionbarsherlock/internal/widget/ActionBarContainer;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v4, Lcom/actionbarsherlock/R$id;->abs__action_context_bar:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitView(Lcom/actionbarsherlock/internal/widget/ActionBarContainer;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    new-instance v1, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;

    invoke-direct {v1, p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    move v3, v1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/actionbarsherlock/R$styleable;->SherlockTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_9
    if-eqz v2, :cond_5

    const-string v0, "ActionBarSherlock"

    const-string v1, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isReservingOverflow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->reserveOverflow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflowSet:Z

    :cond_0
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mReserveOverflow:Z

    return v0
.end method

.method private static loadUiOptionsFromManifest(Landroid/app/Activity;)I
    .locals 15

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parsing AndroidManifest.xml for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    move v0, v2

    :goto_0
    if-ne v1, v7, :cond_1

    :cond_0
    :goto_1
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    :try_start_1
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "ActionBarSherlock"

    const-string v3, "Got <application>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-gez v1, :cond_2

    move v1, v0

    :goto_3
    :try_start_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->nextToken()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v14, v0

    move v0, v1

    move v1, v14

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v3, "ActionBarSherlock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "uiOptions"

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v10, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    move v1, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    const-string v3, "activity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ActionBarSherlock"

    const-string v3, "Got <activity>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    move-object v4, v5

    move-object v6, v5

    :goto_4
    if-gez v1, :cond_7

    :cond_5
    if-nez v3, :cond_0

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    const-string v11, "ActionBarSherlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "uiOptions"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v6, 0x0

    invoke-interface {v10, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    const-string v12, "name"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-eqz v11, :cond_5

    move v3, v7

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v14, v0

    move v0, v1

    move-object v1, v14

    goto :goto_6
.end method

.method private onIntChanged(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateProgressBars(I)V

    :cond_1
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->showOverflowMenu()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0
.end method

.method private setFeatureInt(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method private showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateInt(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getFeatures()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 8

    const/16 v7, 0x8

    const/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v5}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getCircularProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v2

    invoke-direct {p0, v5}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getHorizontalProgressBar(Z)Lcom/actionbarsherlock/internal/widget/IcsProgressBar;

    move-result-object v3

    iget v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v0, v6, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_1
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_5

    invoke-virtual {v3, v7}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    :cond_5
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_2

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_7
    const/4 v0, -0x4

    if-ne p1, v0, :cond_8

    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    :cond_8
    if-ltz p1, :cond_a

    if-gt p1, v6, :cond_a

    add-int/lit8 v0, p1, 0x0

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setProgress(I)V

    if-ge p1, v6, :cond_9

    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hideProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1

    :cond_a
    const/16 v0, 0x4e20

    if-gt v0, p1, :cond_2

    const/16 v0, 0x7530

    if-gt p1, v0, :cond_2

    add-int/lit16 v0, p1, -0x4e20

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/IcsProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0, v3, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->showProgressBars(Lcom/actionbarsherlock/internal/widget/IcsProgressBar;Lcom/actionbarsherlock/internal/widget/IcsProgressBar;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[addContentView] view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void
.end method

.method public dispatchCloseOptionsMenu()Z
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchCloseOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dispatchConfigurationChanged] newConfig: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchInvalidateOptionsMenu()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchInvalidateOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_6

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v4, Lcom/actionbarsherlock/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuBuilderCallback:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->clear()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v5, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchInvalidateOptionsMenu] setting action bar menu to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v5, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_3

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchInvalidateOptionsMenu] setting action bar menu to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v5, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dispatchInvalidateOptionsMenu] setting action bar menu to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenuPresenterCallback:Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchKeyEvent] event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v3, :cond_1

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    :cond_0
    const-string v1, "ActionBarSherlock"

    const-string v2, "[dispatchKeyEvent] returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v2, v0, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->collapseActionView()V

    :cond_2
    const-string v1, "ActionBarSherlock"

    const-string v2, "[dispatchKeyEvent] returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v2, 0x52

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_6

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    :cond_4
    :goto_1
    const-string v1, "ActionBarSherlock"

    const-string v2, "[dispatchKeyEvent] returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->showOverflowMenu()Z

    goto :goto_1

    :cond_6
    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchKeyEvent] returning false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuOpened(ILandroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchMenuOpened] featureId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchOpenOptionsMenu()Z
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchOpenOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native callback invoked. Create a test case and report!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchPanelClosed(ILandroid/view/Menu;)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dispatchPanelClosed] featureId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", menu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hideOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public dispatchPostCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchOnPostCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    :cond_1
    return-void
.end method

.method public dispatchPostResume()V
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchPostResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchPrepareOptionsMenu] android.view.Menu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->isReservingOverflow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->bindNativeOverflow(Landroid/view/Menu;Landroid/view/MenuItem$OnMenuItemClickListener;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method public dispatchStop()V
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchStop]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dispatchTitleChanged] title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsTitleReady:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[getActionBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    return-object v0
.end method

.method protected getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public hasFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[hasFeature] featureId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initActionBar()V
    .locals 3

    const-string v0, "ActionBarSherlock"

    const-string v1, "[initActionBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    invoke-direct {v0, v1, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mIsDelegate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBarView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[requestFeature] featureId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "requestFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    shl-int v2, v0, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mFeatures:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setContentView] layoutResId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setContentView] view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->installDecor()V

    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x3

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setProgressBarVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSecondaryProgress(I)V
    .locals 3

    add-int/lit16 v0, p1, 0x4e20

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->updateInt(IIZ)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setTitle] title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->dispatchTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setUiOptions(I)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setUiOptions] uiOptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    return-void
.end method

.method public setUiOptions(II)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setUiOptions] uiOptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mUiOptions:I

    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    :cond_0
    new-instance v2, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$ActionModeCallbackWrapper;

    invoke-direct {v2, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$ActionModeCallbackWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->initActionBar()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarImpl;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;->onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mDecor:Landroid/view/ViewGroup;

    sget v3, Lcom/actionbarsherlock/R$id;->abs__action_mode_bar_stub:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/actionbarsherlock/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/internal/widget/ActionBarContextView;Lcom/actionbarsherlock/view/ActionMode$Callback;Z)V

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initForMode(Lcom/actionbarsherlock/view/ActionMode;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->setVisibility(I)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionModeView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mActionMode:Lcom/actionbarsherlock/view/ActionMode;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
