.class public Lcom/android/browser/PieControlXLarge;
.super Lcom/android/browser/PieControlBase;
.source "PieControlXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PieControlXLarge$MenuAdapter;
    }
.end annotation


# instance fields
.field private mBack:Lcom/android/browser/view/PieItem;

.field private mBookmarks:Lcom/android/browser/view/PieItem;

.field private mClose:Lcom/android/browser/view/PieItem;

.field private mForward:Lcom/android/browser/view/PieItem;

.field private mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

.field private mNewTab:Lcom/android/browser/view/PieItem;

.field private mOptions:Lcom/android/browser/view/PieItem;

.field private mRefresh:Lcom/android/browser/view/PieItem;

.field private mShowTabs:Lcom/android/browser/view/PieItem;

.field private mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

.field private mUi:Lcom/android/browser/BaseUi;

.field private mUrl:Lcom/android/browser/view/PieItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/BaseUi;)V
    .locals 0
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/browser/PieControlBase;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 62
    iput-object p2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    .line 63
    iput-object p3, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PieControlXLarge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/PieControlXLarge;->buildTabs()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/PieControlXLarge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/browser/PieControlXLarge;->buildMenu()V

    return-void
.end method

.method private buildMenu()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v1}, Lcom/android/browser/BaseUi;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 131
    .local v0, menu:Landroid/view/Menu;
    const v1, 0x7f0d00a0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 132
    iget-object v1, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    invoke-virtual {v1, v0}, Lcom/android/browser/PieControlXLarge$MenuAdapter;->setMenu(Landroid/view/Menu;)V

    .line 133
    return-void
.end method

.method private buildTabs()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->capture()V

    .line 124
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/PieControlBase$TabAdapter;->setTabs(Ljava/util/List;)V

    .line 125
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/view/PieStackView;

    .line 126
    .local v0, sym:Lcom/android/browser/view/PieStackView;
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/browser/view/PieStackView;->setCurrent(I)V

    .line 127
    return-void
.end method


# virtual methods
.method protected attachToContainer(Landroid/widget/FrameLayout;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/browser/PieControlBase;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 69
    iget-object v0, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieMenu;->setUseBackground(Z)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 138
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 139
    .local v1, web:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 142
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 144
    invoke-virtual {v0}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 150
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_0

    .line 151
    :cond_5
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 152
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    sget-object v3, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-interface {v2, v3}, Lcom/android/browser/UiController;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_0

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 154
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 155
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v2, v3}, Lcom/android/browser/BaseUi;->editUrl(Z)V

    goto :goto_0

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v2}, Lcom/android/browser/UiController;->closeCurrentTab()V

    goto :goto_0
.end method

.method protected populateMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 73
    const v3, 0x7f02001b

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    .line 74
    const v3, 0x7f020049

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    .line 75
    const v3, 0x7f020020

    invoke-virtual {p0, v3, v7}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    .line 76
    const v3, 0x7f02003c

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    .line 77
    const v3, 0x7f020028

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    .line 78
    const v3, 0x7f020037

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    .line 79
    const v3, 0x7f020021

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/PieControlXLarge;->makeTabsView()Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, tabs:Landroid/view/View;
    new-instance v3, Lcom/android/browser/view/PieItem;

    invoke-direct {v3, v2, v6}, Lcom/android/browser/view/PieItem;-><init>(Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    .line 82
    const v3, 0x108032c

    invoke-virtual {p0, v3, v6}, Lcom/android/browser/PieControlXLarge;->makeItem(II)Lcom/android/browser/view/PieItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    .line 84
    new-instance v3, Lcom/android/browser/PieControlXLarge$MenuAdapter;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/PieControlXLarge$MenuAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    .line 85
    new-instance v3, Lcom/android/browser/PieControlBase$TabAdapter;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v3, v4, v5}, Lcom/android/browser/PieControlBase$TabAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    .line 86
    new-instance v1, Lcom/android/browser/view/PieStackView;

    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/android/browser/view/PieStackView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, stack:Lcom/android/browser/view/PieStackView;
    new-instance v3, Lcom/android/browser/PieControlXLarge$1;

    invoke-direct {v3, p0}, Lcom/android/browser/PieControlXLarge$1;-><init>(Lcom/android/browser/PieControlXLarge;)V

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 93
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V

    .line 94
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mTabAdapter:Lcom/android/browser/PieControlBase$TabAdapter;

    invoke-virtual {v1, v3}, Lcom/android/browser/view/PieStackView;->setAdapter(Landroid/widget/Adapter;)V

    .line 95
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v1}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 96
    new-instance v0, Lcom/android/browser/view/PieListView;

    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/browser/view/PieListView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, menuview:Lcom/android/browser/view/PieListView;
    new-instance v3, Lcom/android/browser/PieControlXLarge$2;

    invoke-direct {v3, p0}, Lcom/android/browser/PieControlXLarge$2;-><init>(Lcom/android/browser/PieControlXLarge;)V

    invoke-virtual {v0, v3}, Lcom/android/browser/view/PieListView;->setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V

    .line 104
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v0}, Lcom/android/browser/view/PieItem;->setPieView(Lcom/android/browser/view/PieMenu$PieView;)V

    .line 105
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mMenuAdapter:Lcom/android/browser/PieControlXLarge$MenuAdapter;

    invoke-virtual {v0, v3}, Lcom/android/browser/view/PieListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 106
    const/4 v3, 0x7

    new-array v3, v3, [Lcom/android/browser/view/PieItem;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    aput-object v5, v3, v4

    invoke-virtual {p0, p0, v3}, Lcom/android/browser/PieControlXLarge;->setClickListener(Landroid/view/View$OnClickListener;[Lcom/android/browser/view/PieItem;)V

    .line 109
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mBack:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 110
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mUrl:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 111
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mBookmarks:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 113
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mForward:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 114
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mRefresh:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 115
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mOptions:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 116
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mShowTabs:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 117
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mNewTab:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 118
    iget-object v3, p0, Lcom/android/browser/PieControlXLarge;->mPie:Lcom/android/browser/view/PieMenu;

    iget-object v4, p0, Lcom/android/browser/PieControlXLarge;->mClose:Lcom/android/browser/view/PieItem;

    invoke-virtual {v3, v4}, Lcom/android/browser/view/PieMenu;->addItem(Lcom/android/browser/view/PieItem;)V

    .line 119
    return-void
.end method
