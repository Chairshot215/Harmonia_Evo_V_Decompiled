.class public Lcom/htc/store/service/CheckUpdatesService;
.super Landroid/app/IntentService;
.source "CheckUpdatesService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/store/service/CheckUpdatesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/store/service/CheckUpdatesService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 40
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 45
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "onHandleIntent"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 48
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    if-nez v13, :cond_0

    .line 50
    new-instance v13, Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 52
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v13}, Lcom/htc/store/provider/AccessHelper;->getMyActivityInstalledItemsPackageNameOrId()Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, dbInstalledPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 54
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v13, :cond_1

    .line 55
    new-instance v13, Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 57
    :cond_1
    const/4 v10, 0x0

    .line 58
    .local v10, startIndex:I
    const/4 v12, 0x0

    .line 59
    .local v12, totalCount:I
    const/16 v6, 0x14

    .line 60
    .local v6, pageSize:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v8, purchaseditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const/16 v14, 0x14

    invoke-virtual {v13, v10, v14}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    .line 62
    .local v9, restResult:Lcom/htc/store/module/rest/RestResult;
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "mResultCode: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_8

    .line 64
    iget-object v13, v9, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 65
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "totalCount: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_2

    iget-object v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 68
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "startIndex: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v13, v9, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v10, v13

    .line 71
    if-lt v10, v12, :cond_5

    .line 77
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v11, toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/store/module/vo/MyActivityItem;

    .line 79
    .local v4, item:Lcom/htc/store/module/vo/MyActivityItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v13, v4}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 81
    invoke-virtual {v4, v5}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    .end local v1           #dbInstalledPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v5           #needUpdateAndOriginalVersion:Ljava/lang/String;
    .end local v6           #pageSize:I
    .end local v8           #purchaseditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v9           #restResult:Lcom/htc/store/module/rest/RestResult;
    .end local v10           #startIndex:I
    .end local v11           #toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v12           #totalCount:I
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/htc/store/util/NotificationUtils;->scheduleNextCheckingUpdates(Landroid/content/Context;)V

    .line 105
    :goto_3
    return-void

    .line 74
    .restart local v1       #dbInstalledPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #pageSize:I
    .restart local v8       #purchaseditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v9       #restResult:Lcom/htc/store/module/rest/RestResult;
    .restart local v10       #startIndex:I
    .restart local v12       #totalCount:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    const/16 v14, 0x14

    invoke-virtual {v13, v10, v14}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    goto :goto_0

    .line 85
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v11       #toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/store/service/CheckUpdatesService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v13, v11}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityOrderedHistoryItemsWhenInstalled(Ljava/util/ArrayList;)I

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/htc/store/util/NotificationUtils;->notifyUpdates(Landroid/content/Context;)V

    .line 89
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 92
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v11           #toUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_8
    new-instance v7, Lcom/htc/store/module/PreferenceManager;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v7, prefManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Lcom/htc/store/module/PreferenceManager;->setLastTimeMillisCheckUpdates(J)V

    goto :goto_2

    .line 96
    .end local v1           #dbInstalledPackageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pageSize:I
    .end local v7           #prefManager:Lcom/htc/store/module/PreferenceManager;
    .end local v8           #purchaseditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v9           #restResult:Lcom/htc/store/module/rest/RestResult;
    .end local v10           #startIndex:I
    .end local v12           #totalCount:I
    :cond_9
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Network not available."

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 103
    :cond_a
    sget-object v13, Lcom/htc/store/service/CheckUpdatesService;->TAG:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "No CS account."

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
