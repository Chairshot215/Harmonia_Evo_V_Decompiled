.class Lcom/htc/launcher/AllAppsView;
.super Landroid/widget/RelativeLayout;
.source "AllAppsView.java"

# interfaces
.implements Lcom/htc/launcher/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/AllAppsView$Content;
    }
.end annotation


# static fields
.field public static final CLEAN_ALLAPPS_TABS:Ljava/lang/String; = "CLEAN_ALLAPPS_TABS"

.field public static final DRAWER_MODE_ADD_TO_HOME:I = 0x1

.field public static final DRAWER_MODE_ALL_APPS:I = 0x0

.field public static final TAB_ALLAPPS:Ljava/lang/String; = "tab_allapps"

.field public static final TAB_DOWNLOADED:Ljava/lang/String; = "tab_downloaded"

.field public static final TAB_FREQUENT:Ljava/lang/String; = "tab_frequent"

.field protected static final TAG:Ljava/lang/String; = "AllAppsView"


# instance fields
.field public final PREF_LAST_ALLAPPS_SORT:Ljava/lang/String;

.field public final SORT_ALPHABET:I

.field public final SORT_DEFAULT:I

.field public final SORT_NEWEST:I

.field public final SORT_NONE:I

.field public final SORT_OLDEST:I

.field currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

.field private currentContentView:I

.field private defaultTabTag:Ljava/lang/String;

.field inited:Z

.field lastComparator4AllAppsTab:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Lcom/htc/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTab:Ljava/lang/String;

.field private mDrag:Landroid/widget/TextView;

.field private mDragger:Lcom/htc/launcher/DragController;

.field private mDrawerContentId:I

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mMotionX:I

.field private mMotionY:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mTabContent:Landroid/view/View;

.field private mTabHost:Lcom/htc/widget/CarouselHost;

.field private mTabSwitch:Lcom/htc/widget/CarouselWidget;

.field private mXy:[I

.field private title:Ljava/lang/String;

.field private title1:Lcom/htc/widget/HeaderBarText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const-string v0, "tab_allapps"

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->mCurrentTab:Ljava/lang/String;

    .line 88
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->mXy:[I

    .line 90
    iput-boolean v1, p0, Lcom/htc/launcher/AllAppsView;->inited:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->currentContentView:I

    .line 93
    iput v1, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    .line 95
    iput-object v3, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    .line 96
    sget-object v0, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    .line 99
    iput-object v3, p0, Lcom/htc/launcher/AllAppsView;->defaultTabTag:Ljava/lang/String;

    .line 101
    iput v1, p0, Lcom/htc/launcher/AllAppsView;->SORT_NONE:I

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->SORT_ALPHABET:I

    .line 103
    iput v2, p0, Lcom/htc/launcher/AllAppsView;->SORT_NEWEST:I

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->SORT_DEFAULT:I

    .line 105
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->SORT_OLDEST:I

    .line 106
    const-string v0, "PREF_LAST_ALLAPPS_SORT"

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->PREF_LAST_ALLAPPS_SORT:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private addOperatorTab(Lcom/htc/widget/CarouselHost;Lcom/htc/launcher/OperatorTab;)V
    .locals 10
    .parameter "carouselHost"
    .parameter "opTab"

    .prologue
    .line 280
    invoke-static {}, Lcom/htc/launcher/OperatorTabManager;->getInstance()Lcom/htc/launcher/OperatorTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/OperatorTabManager;->getResources()Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    move-result-object v9

    .line 281
    .local v9, opTabRes:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
    const-string v0, "AllAppsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOperatorTab: opTab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {p2}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v9, p2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getLabelResId(Lcom/htc/launcher/OperatorTab;)I

    move-result v3

    invoke-virtual {v9, p2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getRestIconResId(Lcom/htc/launcher/OperatorTab;)I

    move-result v4

    invoke-virtual {v9, p2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getOnIconResId(Lcom/htc/launcher/OperatorTab;)I

    move-result v5

    invoke-virtual {v9, p2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getOverlayIconResId(Lcom/htc/launcher/OperatorTab;)I

    move-result v6

    invoke-virtual {p2}, Lcom/htc/launcher/OperatorTab;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p2}, Lcom/htc/launcher/OperatorTab;->getInitPlace()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 306
    return-void
.end method


# virtual methods
.method changeDrawerContentById(I)V
    .locals 4
    .parameter "LayoutId"

    .prologue
    const/4 v3, 0x0

    .line 460
    const v2, 0x7f070005

    if-ne p1, v2, :cond_0

    .line 461
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    .line 462
    const v2, 0x7f0b0022

    invoke-virtual {p0, v2}, Lcom/htc/launcher/AllAppsView;->setTitleText(I)V

    .line 465
    const/4 v1, 0x0

    .line 482
    .local v1, showTabs:Z
    :goto_0
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 483
    invoke-virtual {p0, v3}, Lcom/htc/launcher/AllAppsView;->setTabsVisible(Z)V

    .line 486
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/launcher/AllAppsView;->setContentView(I)V

    .line 487
    invoke-virtual {p0, v3, v3}, Lcom/htc/launcher/AllAppsView;->scrollTo(II)V

    .line 488
    return-void

    .line 467
    .end local v1           #showTabs:Z
    :cond_0
    const/4 v1, 0x1

    .line 468
    .restart local v1       #showTabs:Z
    iput v3, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    .line 469
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getCurrentTab()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, currentTab:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->defaultTabTag:Ljava/lang/String;

    .line 479
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsView;->updateAllAppsStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    .end local v0           #currentTab:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsView;->setTabsVisible(Z)V

    goto :goto_1
.end method

.method getAllContents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/ViewGroup;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 347
    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    if-eq v1, v3, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 349
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #v:Landroid/view/View;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-object v2
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    return v0
.end method

.method getContentView()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->currentContentView:I

    return v0
.end method

.method public getCurrentTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDragger()Lcom/htc/launcher/DragController;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDragger:Lcom/htc/launcher/DragController;

    return-object v0
.end method

.method getLauncher()Lcom/htc/launcher/Launcher;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->title:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized initTabs()V
    .locals 17

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/launcher/AllAppsView;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    :try_start_1
    const-string v1, "AllAppsView"

    const-string v2, "initTabs:"

    invoke-static {v1, v2}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/launcher/AllAppsView;->inited:Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->loadLastAllAppsSortMethod()V

    .line 150
    invoke-static {}, Lcom/htc/launcher/OperatorTabManager;->getInstance()Lcom/htc/launcher/OperatorTabManager;

    move-result-object v12

    .line 151
    .local v12, opTabManager:Lcom/htc/launcher/OperatorTabManager;
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->reload()V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcher"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 154
    .local v15, pref:Landroid/content/SharedPreferences;
    const-string v1, "CLEAN_ALLAPPS_TABS"

    const/4 v2, 0x0

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 155
    .local v10, cleanAllAppsTabs:Z
    if-eqz v10, :cond_2

    .line 156
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CLEAN_ALLAPPS_TABS"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_allapps"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_frequent"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_downloaded"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "FREQUENT_TAB"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "OPERATOR_TAB"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v14

    .line 165
    .local v14, operatorTabCount:I
    const/4 v13, 0x0

    .line 166
    .local v13, operatorTab:Lcom/htc/launcher/OperatorTab;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 167
    invoke-virtual {v12, v11}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v13

    .line 168
    if-eqz v13, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v13}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 166
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 175
    .end local v11           #i:I
    .end local v13           #operatorTab:Lcom/htc/launcher/OperatorTab;
    .end local v14           #operatorTabCount:I
    :cond_2
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v1

    if-nez v1, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/AllAppsView;->addOperatorTab(Lcom/htc/widget/CarouselHost;Lcom/htc/launcher/OperatorTab;)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/launcher/AllAppsView;->defaultTabTag:Ljava/lang/String;

    .line 181
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.htc.launcher.CarouselDummyActivity"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "extra_tab"

    const-string v2, "tab_allapps"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_allapps"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    const v4, 0x7f0b0075

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "common_icon_my_apps_rest"

    const v7, 0x208034e

    invoke-static {v5, v6, v7}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "common_icon_my_apps_on"

    const v9, 0x208034d

    invoke-static {v6, v7, v9}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "common_icon_overlay_others"

    const v16, 0x20803b2

    move/from16 v0, v16

    invoke-static {v7, v9, v0}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x65

    invoke-virtual/range {v1 .. v9}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->defaultTabTag:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 190
    const-string v1, "tab_allapps"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/launcher/AllAppsView;->defaultTabTag:Ljava/lang/String;

    .line 193
    :cond_4
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/AllAppsView;->addOperatorTab(Lcom/htc/widget/CarouselHost;Lcom/htc/launcher/OperatorTab;)V

    .line 198
    :cond_5
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v1

    if-lez v1, :cond_8

    const-string v1, "FREQUENT_TAB"

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 212
    :goto_2
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/AllAppsView;->addOperatorTab(Lcom/htc/widget/CarouselHost;Lcom/htc/launcher/OperatorTab;)V

    .line 217
    :cond_6
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.CarouselDummyActivity"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "extra_tab"

    const-string v2, "tab_downloaded"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_downloaded"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    const v4, 0x7f0b0076

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "common_icon_rss_downloads_rest"

    const v7, 0x2080401

    invoke-static {v5, v6, v7}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "common_icon_rss_downloads_on"

    const v9, 0x2080400

    invoke-static {v6, v7, v9}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "common_icon_overlay_downloads"

    const v16, 0x2080386

    move/from16 v0, v16

    invoke-static {v7, v9, v0}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x65

    invoke-virtual/range {v1 .. v9}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 227
    invoke-virtual {v12}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTab;->getInitOrder()I

    move-result v2

    if-gt v1, v2, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/AllAppsView;->addOperatorTab(Lcom/htc/widget/CarouselHost;Lcom/htc/launcher/OperatorTab;)V

    .line 231
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabSwitch:Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 128
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #cleanAllAppsTabs:Z
    .end local v12           #opTabManager:Lcom/htc/launcher/OperatorTabManager;
    .end local v15           #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 201
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v10       #cleanAllAppsTabs:Z
    .restart local v12       #opTabManager:Lcom/htc/launcher/OperatorTabManager;
    .restart local v15       #pref:Landroid/content/SharedPreferences;
    :cond_8
    :try_start_2
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.CarouselDummyActivity"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "extra_tab"

    const-string v2, "tab_frequent"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_frequent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    const v4, 0x7f0b0077

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "common_icon_starred_rest"

    const v7, 0x208041c

    invoke-static {v5, v6, v7}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "common_icon_starred_on"

    const v9, 0x208041b

    invoke-static {v6, v7, v9}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "common_icon_overlay_starred"

    const v16, 0x20803c1

    move/from16 v0, v16

    invoke-static {v7, v9, v0}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/16 v9, 0x65

    invoke-virtual/range {v1 .. v9}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public isAddToHome()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 596
    iget v1, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllApps()Z
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->mDrawerContentId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadLastAllAppsSortMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/htc/launcher/Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "PREF_LAST_ALLAPPS_SORT"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 237
    .local v1, tmp:I
    if-nez v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v2}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    if-eqz v2, :cond_2

    .line 239
    const/4 v1, 0x3

    .line 245
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    .line 246
    packed-switch v1, :pswitch_data_0

    .line 259
    :cond_1
    :goto_1
    return-void

    .line 241
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    :pswitch_0
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    goto :goto_1

    .line 251
    :pswitch_1
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    goto :goto_1

    .line 254
    :pswitch_2
    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-static {v2}, Lcom/htc/launcher/ApplicationManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/ApplicationManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/launcher/ApplicationManager;->hasDefault:Z

    if-eqz v2, :cond_1

    .line 255
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->CUST_PRIORITY:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onDropCompleted(Lcom/htc/launcher/DropTarget;Z)V
    .locals 3
    .parameter "target"
    .parameter "success"

    .prologue
    .line 423
    const-string v0, "AllAppsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EDIT_DEBUG] AllAppsView.onDropComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getDesktopItemController()Lcom/htc/launcher/DesktopItemController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/DesktopItemController;->poofFxItem()Z

    .line 425
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->hideEditBar()V

    .line 431
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 116
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/launcher/AllAppsView$Content;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 118
    check-cast v0, Lcom/htc/launcher/AllAppsView$Content;

    .line 119
    .local v0, c:Lcom/htc/launcher/AllAppsView$Content;
    invoke-interface {v0, p0}, Lcom/htc/launcher/AllAppsView$Content;->setContainer(Lcom/htc/launcher/AllAppsView;)V

    .line 115
    .end local v0           #c:Lcom/htc/launcher/AllAppsView$Content;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const v3, 0x1020011

    invoke-virtual {p0, v3}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/launcher/AllAppsView;->mTabContent:Landroid/view/View;

    .line 125
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->mMotionX:I

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->mMotionY:I

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method prepareDragView(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 10
    .parameter "name"
    .parameter "icon"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    .line 368
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->mOffsetX:I

    if-nez v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/launcher/AllAppsView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 382
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->mOffsetX:I

    .line 383
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/launcher/AllAppsView;->mOffsetY:I

    .line 387
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mXy:[I

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsView;->getLocationInWindow([I)V

    .line 390
    :cond_1
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->mMotionX:I

    iget-object v1, p0, Lcom/htc/launcher/AllAppsView;->mXy:[I

    aget v1, v1, v2

    add-int v7, v0, v1

    .local v7, x:I
    iget v0, p0, Lcom/htc/launcher/AllAppsView;->mMotionY:I

    iget-object v1, p0, Lcom/htc/launcher/AllAppsView;->mXy:[I

    aget v1, v1, v9

    add-int v8, v0, v1

    .line 391
    .local v8, y:I
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/launcher/AllAppsView;->mOffsetX:I

    sub-int v1, v7, v1

    iget v2, p0, Lcom/htc/launcher/AllAppsView;->mOffsetY:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/launcher/AllAppsView;->mOffsetX:I

    add-int/2addr v3, v7

    iget v4, p0, Lcom/htc/launcher/AllAppsView;->mOffsetY:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 393
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mDrag:Landroid/widget/TextView;

    return-object v0
.end method

.method protected removeDragView()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public saveLastAllAppsSortMethed()V
    .locals 5

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, tmp:I
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    if-ne v3, v4, :cond_1

    .line 264
    const/4 v2, 0x1

    .line 273
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/launcher/Launcher;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 274
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "PREF_LAST_ALLAPPS_SORT"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void

    .line 265
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_1
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    if-ne v3, v4, :cond_2

    .line 266
    const/4 v2, 0x2

    goto :goto_0

    .line 267
    :cond_2
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->CUST_PRIORITY:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    if-ne v3, v4, :cond_3

    .line 268
    const/4 v2, 0x3

    goto :goto_0

    .line 269
    :cond_3
    sget-object v3, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_OLDEST_FIRST:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    if-ne v3, v4, :cond_0

    .line 270
    const/4 v2, 0x4

    goto :goto_0
.end method

.method setContentView(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 318
    iput p1, p0, Lcom/htc/launcher/AllAppsView;->currentContentView:I

    .line 320
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 321
    invoke-virtual {p0, v1}, Lcom/htc/launcher/AllAppsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, c:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    if-ne v2, v0, :cond_0

    .line 320
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 325
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 327
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 339
    .end local v0           #c:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselHost;->setVisibility(I)V

    .line 340
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->invalidate()V

    .line 341
    return-void
.end method

.method public setDragger(Lcom/htc/launcher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/htc/launcher/AllAppsView;->mDragger:Lcom/htc/launcher/DragController;

    .line 420
    return-void
.end method

.method setLauncher(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 407
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabSwitch:Lcom/htc/widget/CarouselWidget;

    .line 410
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    .line 412
    return-void
.end method

.method public setTabsVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 443
    iget-object v3, p0, Lcom/htc/launcher/AllAppsView;->mTabSwitch:Lcom/htc/widget/CarouselWidget;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 444
    iget-object v3, p0, Lcom/htc/launcher/AllAppsView;->mTabHost:Lcom/htc/widget/CarouselHost;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/htc/widget/CarouselHost;->setVisibility(I)V

    .line 445
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mTabContent:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 443
    goto :goto_0

    :cond_2
    move v0, v2

    .line 444
    goto :goto_1

    :cond_3
    move v0, v2

    .line 445
    goto :goto_2

    :cond_4
    move v1, v2

    .line 447
    goto :goto_3
.end method

.method public setTitleBar(Lcom/htc/widget/HeaderBarText;)V
    .locals 0
    .parameter "headerBarText"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/launcher/AllAppsView;->title1:Lcom/htc/widget/HeaderBarText;

    .line 632
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AllAppsView;->setTitleText(Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 608
    iput-object p1, p0, Lcom/htc/launcher/AllAppsView;->title:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->title1:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/launcher/AllAppsView;->title1:Lcom/htc/widget/HeaderBarText;

    iget-object v1, p0, Lcom/htc/launcher/AllAppsView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 615
    :cond_0
    return-void
.end method

.method updateAllAppsStatus(Ljava/lang/String;)V
    .locals 10
    .parameter "tabId"

    .prologue
    const v9, 0x7f070004

    .line 495
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 498
    .local v5, res:Landroid/content/res/Resources;
    const-string v7, "tab_allapps"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_5

    .line 499
    :cond_0
    const v6, 0x7f0b0075

    .line 500
    .local v6, stringResId:I
    sget-object v7, Lcom/htc/launcher/Launcher$AppTabType;->allApp:Lcom/htc/launcher/Launcher$AppTabType;

    iput-object v7, p0, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    .line 503
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v7, :cond_1

    .line 504
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/launcher/AllAppsView;->lastComparator4AllAppsTab:Ljava/util/Comparator;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sort(Ljava/util/Comparator;)V

    .line 505
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    sget-object v8, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ALL_APPS:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classify(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;)V

    .line 570
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->isAddToHome()Z

    move-result v2

    .line 571
    .local v2, onPersonalize:Z
    if-nez v2, :cond_2

    .line 572
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/launcher/AllAppsView;->setTitleText(Ljava/lang/String;)V

    .line 577
    :cond_2
    const v7, 0x7f070003

    invoke-virtual {p0, v7}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/AllAppsListView;

    .line 578
    .local v1, listView:Lcom/htc/launcher/AllAppsListView;
    invoke-virtual {v1}, Lcom/htc/launcher/AllAppsListView;->isFastScrollAllowed()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/htc/launcher/AllAppsListView;->setFastScrollEnabled(Z)V

    .line 581
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v7, :cond_3

    .line 586
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 589
    :cond_3
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mDrawer:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v7}, Lcom/htc/launcher/widget/SlidingDrawer;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/htc/launcher/AllAppsView;->getContentView()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 590
    invoke-virtual {p0, v9}, Lcom/htc/launcher/AllAppsView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/AllAppsGridView;

    .line 592
    .end local v1           #listView:Lcom/htc/launcher/AllAppsListView;
    .end local v2           #onPersonalize:Z
    .end local v6           #stringResId:I
    :cond_4
    :goto_1
    return-void

    .line 509
    :cond_5
    const-string v7, "tab_downloaded"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 510
    const v6, 0x7f0b0076

    .line 511
    .restart local v6       #stringResId:I
    sget-object v7, Lcom/htc/launcher/Launcher$AppTabType;->downloaded:Lcom/htc/launcher/Launcher$AppTabType;

    iput-object v7, p0, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    .line 514
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v7, :cond_1

    .line 515
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    sget-object v8, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_NEWEST_FIRST:Ljava/util/Comparator;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sort(Ljava/util/Comparator;)V

    .line 516
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    sget-object v8, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->DOWNLOADED:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classify(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;)V

    goto :goto_0

    .line 520
    .end local v6           #stringResId:I
    :cond_6
    const-string v7, "tab_frequent"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 521
    const v6, 0x7f0b0077

    .line 522
    .restart local v6       #stringResId:I
    sget-object v7, Lcom/htc/launcher/Launcher$AppTabType;->frequent:Lcom/htc/launcher/Launcher$AppTabType;

    iput-object v7, p0, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    .line 526
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v7, :cond_1

    .line 527
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    sget-object v8, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_FREQUENTLY_USED_FIRST:Ljava/util/Comparator;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sort(Ljava/util/Comparator;)V

    .line 528
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    sget-object v8, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->ONE_PAGE:Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classify(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;)V

    goto/16 :goto_0

    .line 532
    .end local v6           #stringResId:I
    :cond_7
    sget-object v7, Lcom/htc/launcher/Launcher$AppTabType;->unknown:Lcom/htc/launcher/Launcher$AppTabType;

    iput-object v7, p0, Lcom/htc/launcher/AllAppsView;->currentAppTab:Lcom/htc/launcher/Launcher$AppTabType;

    .line 533
    invoke-static {}, Lcom/htc/launcher/OperatorTabManager;->getInstance()Lcom/htc/launcher/OperatorTabManager;

    move-result-object v4

    .line 534
    .local v4, opTabManager:Lcom/htc/launcher/OperatorTabManager;
    const/4 v3, 0x0

    .line 535
    .local v3, opTab:Lcom/htc/launcher/OperatorTab;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabCount()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 536
    invoke-virtual {v4, v0}, Lcom/htc/launcher/OperatorTabManager;->getOperatorTabByIndex(I)Lcom/htc/launcher/OperatorTab;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Lcom/htc/launcher/OperatorTab;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 545
    :cond_8
    if-eqz v3, :cond_b

    .line 546
    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabManager;->getResources()Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getLabelResId(Lcom/htc/launcher/OperatorTab;)I

    move-result v6

    .line 549
    .restart local v6       #stringResId:I
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    if-eqz v7, :cond_9

    .line 550
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/launcher/OperatorTab;->getAppComparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->sort(Ljava/util/Comparator;)V

    .line 551
    iget-object v7, p0, Lcom/htc/launcher/AllAppsView;->mLauncher:Lcom/htc/launcher/Launcher;

    iget-object v7, v7, Lcom/htc/launcher/Launcher;->mApplicationsAdapter:Lcom/htc/launcher/ApplicationsAdapter;

    invoke-virtual {v7}, Lcom/htc/launcher/ApplicationsAdapter;->getList()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/launcher/OperatorTab;->getClassifier()Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->classify(Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;)V

    .line 555
    :cond_9
    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabManager;->getResources()Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    move-result-object v5

    goto/16 :goto_0

    .line 541
    .end local v6           #stringResId:I
    :cond_a
    const/4 v3, 0x0

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 563
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid tabId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
