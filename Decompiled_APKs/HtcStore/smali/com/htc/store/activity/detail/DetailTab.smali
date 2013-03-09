.class public Lcom/htc/store/activity/detail/DetailTab;
.super Lcom/htc/widget/CarouselInternalActivity;
.source "DetailTab.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mIsFromInside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/store/activity/detail/DetailTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/detail/DetailTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "com.htc.store.provider.CarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselInternalActivity;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private getCarouselIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "onlineID"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, result:Landroid/content/Intent;
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .restart local v0       #result:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/detail/DetailComments;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0

    .line 102
    :cond_2
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/detail/DetailSimilar;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public enterEditTab()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailTab;->enterEditMode()V

    .line 110
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    const-string v1, "common_app_bkg"

    const v2, 0x20806b7

    invoke-static {p0, v1, v2}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/store/activity/detail/DetailTab;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-static/range {p0 .. p0}, Lcom/htc/store/module/TabResourcesDetail;->getInstance(Landroid/content/Context;)Lcom/htc/store/module/TabResourcesDetail;

    move-result-object v18

    .line 37
    .local v18, tabRes:Lcom/htc/store/module/TabResourcesDetail;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailTab;->setResources(Landroid/content/res/Resources;)V

    .line 38
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/detail/DetailTab;->setGId(I)V

    .line 39
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/CarouselInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v4, "common_app_bkg"

    const v5, 0x20806b7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 41
    .local v11, bkgId:I
    if-eqz v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailTab;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    :cond_0
    const v4, 0x209002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/detail/DetailTab;->setContentView(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailTab;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "store_inside"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/store/activity/detail/DetailTab;->mIsFromInside:Z

    .line 45
    new-instance v4, Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/store/activity/detail/DetailTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailTab;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    .line 47
    .local v2, panelHost:Lcom/htc/widget/CarouselHost;
    new-instance v4, Lcom/htc/store/module/PreferenceManager;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->getUseDefaultImages()Ljava/lang/String;

    move-result-object v19

    .line 48
    .local v19, useDafult:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/store/activity/detail/DetailTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v4}, Lcom/htc/store/provider/AccessHelper;->getItemDetailCarouselItems()Ljava/util/ArrayList;

    move-result-object v16

    .line 50
    .local v16, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/store/module/vo/CarouselItem;

    .line 51
    .local v15, item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual {v15}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, onlineID:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/store/activity/detail/DetailTab;->getCarouselIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 53
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v15}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/htc/store/module/TabResourcesDetail;->getDetailTabResourceID(Ljava/lang/String;Z)[I

    move-result-object v17

    .line 54
    .local v17, resourceIds:[I
    const-string v4, "tab_title_resource"

    const/4 v5, 0x0

    aget v5, v17, v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/htc/store/module/TabResourcesDetail;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v4, 0x0

    aget v5, v17, v4

    const/4 v4, 0x1

    aget v6, v17, v4

    const/4 v4, 0x2

    aget v7, v17, v4

    const/4 v4, 0x3

    aget v8, v17, v4

    const/16 v10, 0x65

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 57
    invoke-virtual {v15}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    .end local v3           #onlineID:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v15           #item:Lcom/htc/store/module/vo/CarouselItem;
    .end local v17           #resourceIds:[I
    :cond_1
    const/4 v14, 0x0

    .line 62
    .local v14, isFindTab:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/detail/DetailTab;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "default_tab_detail"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, curTab:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    sget-object v4, Lcom/htc/store/activity/detail/DetailTab;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "request tab tag = "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/store/module/vo/CarouselItem;

    .line 66
    .restart local v15       #item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual {v15}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v2, v12}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 68
    const/4 v14, 0x1

    .line 74
    .end local v15           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_3
    if-nez v14, :cond_4

    .line 76
    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_SECONDARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 78
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailTab;->mIsFromInside:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearAllCache()V

    .line 85
    :cond_0
    invoke-static {}, Lcom/htc/store/module/TabResourcesDetail;->releaseInstance()V

    .line 86
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onDestroy()V

    .line 87
    return-void
.end method
