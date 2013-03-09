.class public Lcom/htc/store/service/CheckContentInServerService;
.super Landroid/app/IntentService;
.source "CheckContentInServerService.java"


# static fields
.field public static final ACTION_CHECK_CONTENT_IN_SERVER:Ljava/lang/String; = "com.htc.store.action.CheckContentInServer"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.htc.store.chcek.content.in.server.service"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/store/service/CheckContentInServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "com.htc.store.chcek.content.in.server.service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private doQuery(Ljava/util/ArrayList;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, allContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 79
    .local v8, packageName:Ljava/lang/String;
    sget-object v12, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checking "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " on server or not...."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v12, v8}, Lcom/htc/store/module/rest/RestHelper;->getDetailItem(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v10

    .line 81
    .local v10, result:Lcom/htc/store/module/rest/RestResult;
    iget v12, v10, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_6

    .line 82
    iget-object v11, v10, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    .line 83
    .local v11, temp:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 84
    .local v6, item:Lcom/htc/store/module/vo/ItemItem;
    instance-of v12, v11, Lcom/htc/store/module/vo/ItemItem;

    if-eqz v12, :cond_4

    move-object v6, v11

    .line 85
    check-cast v6, Lcom/htc/store/module/vo/ItemItem;

    .line 90
    :cond_1
    :goto_1
    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {v6}, Lcom/htc/store/module/vo/ItemItem;->toMyActivityItem()Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v7

    .line 93
    .local v7, maItem:Lcom/htc/store/module/vo/MyActivityItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 94
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/store/util/ImageUtils;->bitmap2byteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIcon([B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 101
    .local v9, pi:Landroid/content/pm/PackageInfo;
    iget-wide v12, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v7, v12, v13}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 102
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v9           #pi:Landroid/content/pm/PackageInfo;
    :goto_3
    const/4 v12, 0x4

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 109
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineIsPurchased(I)V

    .line 110
    invoke-virtual {v7, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setItemPackageName(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v3

    .line 113
    .local v3, i:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v3, :cond_5

    .line 115
    invoke-virtual {v3}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v12

    const/16 v13, 0xc

    if-ne v12, v13, :cond_2

    .line 116
    const/16 v12, 0xc

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 118
    :cond_2
    invoke-virtual {v3}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineIsPurchased()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 119
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineIsPurchased(I)V

    .line 121
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v3}, Lcom/htc/store/module/vo/MyActivityItem;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v7, v13, v14}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItemById(Lcom/htc/store/module/vo/MyActivityItem;J)I

    goto/16 :goto_0

    .line 86
    .end local v3           #i:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v7           #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_4
    instance-of v12, v11, Lcom/htc/store/module/vo/SoundsetItem;

    if-eqz v12, :cond_1

    goto :goto_1

    .line 96
    .restart local v7       #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v12, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 104
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v12, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const-wide/16 v12, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 106
    const-string v12, "0.0"

    invoke-virtual {v7, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    goto :goto_3

    .line 124
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #i:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/CheckContentInServerService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v12, v7}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItem(Lcom/htc/store/module/vo/MyActivityItem;)J

    goto/16 :goto_0

    .line 128
    .end local v3           #i:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v6           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v7           #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v11           #temp:Ljava/lang/Object;
    :cond_6
    sget-object v12, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not on server."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    .end local v8           #packageName:Ljava/lang/String;
    .end local v10           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_7
    return-void
.end method

.method private queryAllApplication()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/store/service/CheckContentInServerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, allPackage:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 137
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v3
.end method

.method private queryAppThatShowInAllAppList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v5, p0, Lcom/htc/store/service/CheckContentInServerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, allResovler:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v3
.end method

.method private startChecking()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Lcom/htc/store/service/CheckContentInServerService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v2, :cond_0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, allContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/htc/store/service/CheckContentInServerService;->queryAppThatShowInAllAppList()Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, allApplications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-direct {p0, v1}, Lcom/htc/store/service/CheckContentInServerService;->doQuery(Ljava/util/ArrayList;)V

    .line 75
    .end local v0           #allApplications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #allContent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/store/service/CheckContentInServerService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/store/service/CheckContentInServerService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 60
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/htc/store/service/CheckContentInServerService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckContentInServer Service : action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-string v1, "com.htc.store.action.CheckContentInServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/service/CheckContentInServerService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 47
    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/service/CheckContentInServerService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 48
    invoke-virtual {p0}, Lcom/htc/store/service/CheckContentInServerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/service/CheckContentInServerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 50
    invoke-direct {p0}, Lcom/htc/store/service/CheckContentInServerService;->startChecking()V

    .line 52
    :cond_0
    return-void
.end method
