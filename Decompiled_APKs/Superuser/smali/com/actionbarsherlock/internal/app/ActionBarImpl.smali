.class public Lcom/actionbarsherlock/internal/app/ActionBarImpl;
.super Lcom/actionbarsherlock/app/ActionBar;


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

.field private mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

.field private mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

.field private mCurrentModeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

.field private mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

.field mDeferredDestroyActionMode:Lcom/actionbarsherlock/view/ActionMode;

.field mDeferredModeDestroyCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field final mHideListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

.field private mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabs:Ljava/util/ArrayList;

.field private mThemedContext:Landroid/content/Context;

.field mWasHiddenBeforeMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHideListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$1;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHideListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$2;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)I
    .locals 1

    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    return-void
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ActionBarView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private cleanupTabs()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V
    .locals 3

    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/actionbarsherlock/app/ActionBar$TabListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action Bar Tab must have a Callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, p2, 0x1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private ensureTabsExist()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    :goto_1
    iput-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTabContainer(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private init(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/actionbarsherlock/R$id;->abs__action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    sget v0, Lcom/actionbarsherlock/R$id;->abs__action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    sget v0, Lcom/actionbarsherlock/R$id;->abs__action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    sget v0, Lcom/actionbarsherlock/R$id;->abs__split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setContextView(Lcom/actionbarsherlock/internal/widget/ActionBarContextView;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextDisplayMode:I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/actionbarsherlock/R$bool;->abs__action_bar_embed_tabs:I

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTabContainer(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    :goto_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-boolean v4, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTabContainer(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->configureTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->configureTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->show(Z)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentModeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentModeAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->animateToVisibility(I)V

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    iput-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Lcom/actionbarsherlock/view/ActionMode;

    iput-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/actionbarsherlock/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 10

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v8, v3, v7

    invoke-static {v1, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v8, v4, v7

    iget-object v5, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget-object v5, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v9}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHideListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHideListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto/16 :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1

    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/actionbarsherlock/R$bool;->abs__action_bar_embed_tabs:I

    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->getResources_getBoolean(Landroid/content/Context;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 1

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .locals 4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, p1

    :goto_2
    if-lt v2, v3, :cond_4

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-ne v1, p1, :cond_3

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/actionbarsherlock/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    :cond_4
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/actionbarsherlock/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :cond_5
    check-cast p1, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;->getCallback()Lcom/actionbarsherlock/app/ActionBar$TabListener;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSelectedTab:Lcom/actionbarsherlock/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2

    const/16 v1, 0x10

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setCallback(Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setNavigationMode(I)V

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->ensureTabsExist()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabScrollView:Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iput v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionView:Lcom/actionbarsherlock/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->show(Z)V

    return-void
.end method

.method show(Z)V
    .locals 10

    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iput-boolean v6, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setAlpha(F)V

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v2, "alpha"

    new-array v3, v8, [F

    aput v9, v3, v6

    invoke-static {v1, v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->play(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContentView:Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v7, v4, v8

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v3, "translationY"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v2, v8, :cond_4

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v6}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v2, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    const-string v3, "alpha"

    new-array v4, v8, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;->with(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet$Builder;

    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mCurrentShowAnim:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContainerView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mShowListener:Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    goto/16 :goto_0
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    :goto_0
    iget-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->killMode()V

    new-instance v3, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v3, p0, p1}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/actionbarsherlock/internal/app/ActionBarImpl;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mWasHiddenBeforeMode:Z

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->initForMode(Lcom/actionbarsherlock/view/ActionMode;)V

    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->animateToMode(Z)V

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mSplitView:Lcom/actionbarsherlock/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mContextView:Lcom/actionbarsherlock/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iput-object v3, p0, Lcom/actionbarsherlock/internal/app/ActionBarImpl;->mActionMode:Lcom/actionbarsherlock/internal/app/ActionBarImpl$ActionModeImpl;

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
