.class public Lcom/htc/store/activity/landing/LandingTab;
.super Lcom/htc/widget/CarouselInternalActivity;
.source "LandingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/LandingTab$1;,
        Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;,
        Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;,
        Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mGetMarkedItems:Lcom/htc/store/activity/landing/LandingTab$GetMarkedItems;

.field private mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/store/activity/landing/LandingTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/LandingTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "com.htc.store.provider.CarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselInternalActivity;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/PreferenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;)Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/store/activity/landing/LandingTab;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/landing/LandingTab;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/store/activity/landing/LandingTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingTab;->updateFirstSyncStatus()V

    return-void
.end method

.method private getCarouselIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "onlineID"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, result:Landroid/content/Intent;
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/landing/LandingHub;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "tab_id"

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/landing/LandingOperator;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .restart local v0       #result:Landroid/content/Intent;
    const-string v1, "tab_id"

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 154
    :cond_2
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    .end local v0           #result:Landroid/content/Intent;
    const-class v1, Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #result:Landroid/content/Intent;
    goto :goto_0
.end method

.method private updateFirstSyncStatus()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mGetOrderedHistoryCall:Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingTab$GetOrderedHistoryCall;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/store/module/PreferenceManager;->setFirstSyncMyActivity(Z)V

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public enterEditTab()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingTab;->enterEditMode()V

    .line 144
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselInternalActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    const-string v2, "common_app_bkg"

    const v3, 0x20806b7

    invoke-static {p0, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, bkgId:I
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingTab;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingTab;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/htc/store/activity/landing/LandingNavigation;

    if-eqz v2, :cond_1

    .line 138
    check-cast v0, Lcom/htc/store/activity/landing/LandingNavigation;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedInstanceState"

    .prologue
    .line 48
    sget-object v4, Lcom/htc/store/activity/landing/LandingTab;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "onCreate"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/htc/store/module/TabResourcesLanding;->getInstance(Landroid/content/Context;)Lcom/htc/store/module/TabResourcesLanding;

    move-result-object v29

    .line 50
    .local v29, tabRes:Lcom/htc/store/module/TabResourcesLanding;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingTab;->setResources(Landroid/content/res/Resources;)V

    .line 51
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/landing/LandingTab;->setGId(I)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 53
    .local v12, begin:J
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/CarouselInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 55
    .local v18, end:J
    sget-object v4, Lcom/htc/store/activity/landing/LandingTab;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "super.onCreate: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sub-long v7, v18, v12

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const-string v4, "common_app_bkg"

    const v5, 0x20806b7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 57
    .local v14, bkgId:I
    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingTab;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 58
    :cond_0
    const v4, 0x209002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/store/activity/landing/LandingTab;->setContentView(I)V

    .line 60
    new-instance v4, Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 61
    new-instance v4, Lcom/htc/store/module/PreferenceManager;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/store/activity/landing/LandingTab;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 65
    new-instance v4, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;-><init>(Lcom/htc/store/activity/landing/LandingTab;Lcom/htc/store/activity/landing/LandingTab$1;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/htc/store/activity/landing/LandingTab$CheckMyActivityTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingTab;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    .line 68
    .local v2, panelHost:Lcom/htc/widget/CarouselHost;
    new-instance v4, Lcom/htc/store/module/PreferenceManager;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->getUseDefaultImages()Ljava/lang/String;

    move-result-object v30

    .line 69
    .local v30, useDafult:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/store/activity/landing/LandingTab;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v4}, Lcom/htc/store/provider/AccessHelper;->getLandingCarouselItems()Ljava/util/ArrayList;

    move-result-object v24

    .line 71
    .local v24, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/CarouselItem;>;"
    sget-object v11, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    move/from16 v21, v20

    .end local v20           #i$:I
    .local v21, i$:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    aget-object v28, v11, v21

    .line 72
    .local v28, s:Ljava/lang/String;
    const/16 v26, 0x1

    .line 73
    .local v26, needDelete:Z
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v21           #i$:I
    .local v20, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/store/module/vo/CarouselItem;

    .line 74
    .local v23, item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    const/16 v26, 0x0

    .line 79
    .end local v23           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_2
    if-eqz v26, :cond_3

    .line 80
    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 71
    :cond_3
    add-int/lit8 v20, v21, 0x1

    .local v20, i$:I
    move/from16 v21, v20

    .end local v20           #i$:I
    .restart local v21       #i$:I
    goto :goto_0

    .line 84
    .end local v26           #needDelete:Z
    .end local v28           #s:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v21           #i$:I
    .local v20, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/store/module/vo/CarouselItem;

    .line 85
    .restart local v23       #item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, onlineID:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/store/activity/landing/LandingTab;->getCarouselIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 87
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Lcom/htc/store/module/TabResourcesLanding;->getLandingTabResourceID(Ljava/lang/String;Z)[I

    move-result-object v27

    .line 88
    .local v27, resourceIds:[I
    const-string v4, "tab_title_resource"

    const/4 v5, 0x0

    aget v5, v27, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/htc/store/module/TabResourcesLanding;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/4 v4, 0x0

    aget v5, v27, v4

    const/4 v4, 0x1

    aget v6, v27, v4

    const/4 v4, 0x2

    aget v7, v27, v4

    const/4 v4, 0x3

    aget v8, v27, v4

    const/16 v10, 0x65

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 90
    invoke-virtual/range {v23 .. v23}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 93
    .end local v3           #onlineID:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v23           #item:Lcom/htc/store/module/vo/CarouselItem;
    .end local v27           #resourceIds:[I
    :cond_5
    const/16 v22, 0x0

    .line 94
    .local v22, isFindTab:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/activity/landing/LandingTab;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 95
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v4, "default_tab"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, defaultTab:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 97
    sget-object v4, Lcom/htc/store/activity/landing/LandingTab;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "defaultTab: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/store/module/vo/CarouselItem;

    .line 99
    .restart local v23       #item:Lcom/htc/store/module/vo/CarouselItem;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/store/module/vo/CarouselItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    invoke-virtual {v2, v15}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 101
    const/16 v22, 0x1

    .line 107
    .end local v23           #item:Lcom/htc/store/module/vo/CarouselItem;
    :cond_7
    if-nez v22, :cond_8

    .line 109
    sget-object v4, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 112
    :cond_8
    const-string v4, "direct_to"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, directTo:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "direct_to_detail"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 114
    new-instance v16, Landroid/content/Intent;

    const-class v4, Lcom/htc/store/activity/detail/DetailTab;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v16, detail:Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingTab;->startActivity(Landroid/content/Intent;)V

    .line 118
    .end local v16           #detail:Landroid/content/Intent;
    :cond_9
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/htc/store/util/ImageUtils;->clearAllCache()V

    .line 123
    invoke-static {}, Lcom/htc/store/module/TabResourcesLanding;->releaseInstance()V

    .line 124
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingTab;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/CarouselInternalActivity;->onDestroy()V

    .line 128
    return-void
.end method
