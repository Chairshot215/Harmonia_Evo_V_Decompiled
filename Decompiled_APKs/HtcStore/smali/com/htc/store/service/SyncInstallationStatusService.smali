.class public Lcom/htc/store/service/SyncInstallationStatusService;
.super Landroid/app/IntentService;
.source "SyncInstallationStatusService.java"


# static fields
.field public static final ACTION_SYNC_INSTALLATION_STATUS:Ljava/lang/String; = "com.htc.store.action.SYNC_STATUS"

.field public static final EXTRA_ACTION_DISPATCH:Ljava/lang/String; = "extra_action_to_dispatch_from_install_service"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "extra_package_name"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.htc.store.sync.installation.status.service"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field private mFailAmount:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/store/service/SyncInstallationStatusService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.htc.store.sync.installation.status.service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    .line 46
    return-void
.end method

.method private addApp(Ljava/lang/String;)I
    .locals 17
    .parameter "pkgName"

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, failAmount:I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v6

    .line 301
    .local v6, item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v6, :cond_4

    .line 302
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 304
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_0

    .line 306
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v11, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 308
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/store/service/SyncInstallationStatusService;->deleteMarkedItem(Ljava/util/ArrayList;)I

    move-result v3

    .line 314
    .end local v11           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineContentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Skin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 315
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "skin content, do not check the version in package manager"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 317
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 335
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItemByPackageName(Landroid/content/ContentValues;)I

    .line 452
    .end local v6           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_1
    :goto_1
    return v3

    .line 320
    .restart local v6       #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 321
    .local v10, pi:Landroid/content/pm/PackageInfo;
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installed version = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  online version = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/store/util/CommonUtils;->isVersion2LargerThanVersion1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 323
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "need update"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 325
    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 331
    .local v2, e:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_0

    .line 327
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 328
    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 341
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :cond_4
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "not check on server due to privacy concern"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "but need to check locally"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/store/provider/AccessHelper;->getItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v7

    .line 400
    .local v7, itemitem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v7, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v9

    .line 402
    .local v9, my_temp_item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineIsPurchased()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 404
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 406
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->toMyActivityItem()Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v8

    .line 407
    .local v8, maItem:Lcom/htc/store/module/vo/MyActivityItem;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 408
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/htc/store/util/ImageUtils;->drawable2bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 409
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/store/util/ImageUtils;->bitmap2byteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIcon([B)V

    .line 410
    invoke-static {v1}, Lcom/htc/store/util/ImageUtils;->safelyRecycle(Landroid/graphics/Bitmap;)V

    .line 411
    iget-wide v12, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v8, v12, v13}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 413
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_6

    .line 415
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "skin content, do not check the version in package manager"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 417
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 429
    :goto_2
    invoke-virtual {v8}, Lcom/htc/store/module/vo/MyActivityItem;->getItemLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 430
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 431
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ap name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_5
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemPackageName(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v4

    .line 436
    .local v4, i:Lcom/htc/store/module/vo/MyActivityItem;
    if-nez v4, :cond_1

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v12, v8}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItem(Lcom/htc/store/module/vo/MyActivityItem;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 443
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #i:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 444
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_3
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installed version = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  online version = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/store/util/CommonUtils;->isVersion2LargerThanVersion1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 421
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "need update"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 423
    const/16 v12, 0xc

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto/16 :goto_2

    .line 425
    :cond_7
    invoke-virtual {v7}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 426
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 448
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #maItem:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v9           #my_temp_item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :cond_8
    sget-object v12, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "itemitem is null"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private deleteApp(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1, p1}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByPackageName(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v0

    .line 459
    .local v0, item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v0}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    sget-object v1, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "delete, no productId, delete directly"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1, p1}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityItemByPackageName(Ljava/lang/String;)I

    .line 480
    .end local v0           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_0
    :goto_0
    return-void

    .line 465
    .restart local v0       #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_1
    sget-object v1, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "delete, has productId, update the status"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-virtual {v0}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineIsPurchased()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 467
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 468
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/vo/MyActivityItem;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItemByPackageName(Landroid/content/ContentValues;)I

    goto :goto_0

    .line 471
    :cond_2
    sget-object v1, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "not buy before and remove from DB directly"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1, p1}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityItemByPackageName(Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_3
    sget-object v1, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "delete, no this item"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private deleteMarkedItem(Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 506
    .local v0, failAmount:I
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v1, p1}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemsByOnlilneMarkedIds(Ljava/util/ArrayList;)I

    .line 507
    return v0
.end method

.method public static downloadStatusToMyActivityItemStatus(I)I
    .locals 1
    .parameter "downloadStatus"

    .prologue
    .line 152
    const/4 v0, -0x1

    .line 153
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 183
    :goto_0
    return v0

    .line 155
    :pswitch_0
    const/4 v0, -0x1

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const/4 v0, 0x4

    .line 162
    goto :goto_0

    .line 167
    :pswitch_3
    const/16 v0, 0xb

    .line 168
    goto :goto_0

    .line 170
    :pswitch_4
    const/4 v0, 0x3

    .line 171
    goto :goto_0

    .line 173
    :pswitch_5
    const/4 v0, 0x5

    .line 174
    goto :goto_0

    .line 176
    :pswitch_6
    const/4 v0, 0x6

    .line 177
    goto :goto_0

    .line 179
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private startSync(Landroid/content/Intent;)V
    .locals 21
    .parameter "intent"

    .prologue
    .line 77
    const-string v2, "extra_action_to_dispatch_from_install_service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const-string v2, "extra_package_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/store/service/SyncInstallationStatusService;->addApp(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    .line 129
    .end local v15           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v14, ""

    .line 130
    .local v14, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 131
    const v2, 0x7f0a0012

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/store/service/SyncInstallationStatusService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 139
    :cond_1
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_2
    return-void

    .line 81
    .end local v14           #message:Ljava/lang/String;
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    const-string v2, "extra_package_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 83
    .restart local v15       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/store/service/SyncInstallationStatusService;->deleteApp(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v15           #pkgName:Ljava/lang/String;
    :cond_4
    const-string v2, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "online_item_ids"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 86
    .local v3, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "setAllItemsToDownloadAvailableByContentType"

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    const-string v2, "online_item_content_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, contentType:Ljava/lang/String;
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set all items to download availabe : contentType is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-static {v4}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemType(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityInOrderedHistoryItemsWhichInstalledToSpecificStatusByContentType(I)I

    goto/16 :goto_0

    .line 94
    .end local v4           #contentType:Ljava/lang/String;
    :cond_5
    const-string v2, "online_item_content_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .restart local v4       #contentType:Ljava/lang/String;
    const-string v2, "download_status"

    const/16 v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 98
    .local v12, downloadStatusFromIntent:I
    invoke-static {v12}, Lcom/htc/store/service/SyncInstallationStatusService;->downloadStatusToMyActivityItemStatus(I)I

    move-result v5

    .line 99
    .local v5, downloadStatus:I
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "download status from intent: "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "download status for my activity: "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v2, "online_item_optional_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 102
    .local v10, bundle:Landroid/os/Bundle;
    const-string v6, ""

    .line 103
    .local v6, label:Ljava/lang/String;
    const-string v8, ""

    .line 104
    .local v8, version:Ljava/lang/String;
    const/4 v7, 0x0

    .line 105
    .local v7, icon:[B
    if-eqz v10, :cond_6

    .line 106
    const-string v2, "online_item_optional_icon"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 107
    const-string v2, "online_item_optional_label"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    const-string v2, "online_item_optional_version"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    :cond_6
    const-string v2, "requester"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, requester:Ljava/lang/String;
    const-string v2, "download_message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, downloadMessage:Ljava/lang/String;
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    const/16 v18, 0x1

    const-string v19, " request to update download status with message: "

    aput-object v19, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget-object v17, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "online_id = "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, ", content type = "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sget-object v2, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "label="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", version="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v2, -0x1

    if-eq v5, v2, :cond_7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 120
    :cond_7
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.SHOW.INSTALL.STATUS"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v13, ii:Landroid/content/Intent;
    const-string v2, "install_status"

    invoke-virtual {v13, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/store/service/SyncInstallationStatusService;->sendBroadcast(Landroid/content/Intent;)V

    .end local v13           #ii:Landroid/content/Intent;
    :cond_8
    move-object/from16 v2, p0

    .line 124
    invoke-direct/range {v2 .. v8}, Lcom/htc/store/service/SyncInstallationStatusService;->updateMyActivityItem(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    goto/16 :goto_0

    .line 134
    .end local v3           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #contentType:Ljava/lang/String;
    .end local v5           #downloadStatus:I
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #icon:[B
    .end local v8           #version:Ljava/lang/String;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v11           #downloadMessage:Ljava/lang/String;
    .end local v12           #downloadStatusFromIntent:I
    .end local v16           #requester:Ljava/lang/String;
    .restart local v14       #message:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v2, v0, :cond_1

    .line 135
    const v2, 0x7f0a0011

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/service/SyncInstallationStatusService;->mFailAmount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/htc/store/service/SyncInstallationStatusService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1
.end method

.method private updateMyActivityItem(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)I
    .locals 14
    .parameter
    .parameter "contentType"
    .parameter "downloadStatus"
    .parameter "label"
    .parameter "icon"
    .parameter "version"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 190
    .local v2, failAmount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, deleteIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 192
    .local v7, onlineId:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 196
    iget-object v9, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v9, v7}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v5

    .line 199
    .local v5, item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v5, :cond_f

    .line 202
    iget-object v9, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/16 v10, 0xa

    invoke-virtual {v9, v7, v10}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemByOnlineItemId(Ljava/lang/String;I)Lcom/htc/store/module/vo/MyActivityItem;

    move-result-object v6

    .line 204
    .local v6, item_for_check_marked_item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_1

    .line 206
    sget-object v9, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "product id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", marked id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", product name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getItemLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 209
    invoke-virtual {v6}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_2

    .line 213
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getItemVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 216
    :cond_2
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v8

    .line 217
    .local v8, originalStatus:I
    const/4 v9, -0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_9

    .line 218
    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 219
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 246
    :goto_1
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getItemLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 247
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 249
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineIsPurchased(I)V

    .line 250
    iget-object v9, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v9, v5}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItemById(Lcom/htc/store/module/vo/MyActivityItem;)I

    goto/16 :goto_0

    .line 220
    :cond_4
    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 222
    :cond_5
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 223
    :cond_6
    const/4 v9, 0x6

    if-eq v8, v9, :cond_7

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    .line 225
    :cond_7
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 227
    :cond_8
    invoke-virtual {v5, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 229
    :cond_9
    const/16 v9, 0xb

    move/from16 v0, p3

    if-ne v0, v9, :cond_d

    .line 230
    const/4 v9, 0x6

    if-eq v8, v9, :cond_a

    const/4 v9, 0x7

    if-ne v8, v9, :cond_b

    .line 232
    :cond_a
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 233
    :cond_b
    const/16 v9, 0xc

    if-ne v8, v9, :cond_c

    .line 234
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 236
    :cond_c
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 239
    :cond_d
    const/16 v9, 0xc

    if-ne v8, v9, :cond_e

    .line 240
    invoke-virtual {v5, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 242
    :cond_e
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_1

    .line 253
    .end local v6           #item_for_check_marked_item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v8           #originalStatus:I
    :cond_f
    new-instance v5, Lcom/htc/store/module/vo/MyActivityItem;

    .end local v5           #item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-direct {v5}, Lcom/htc/store/module/vo/MyActivityItem;-><init>()V

    .line 256
    .restart local v5       #item:Lcom/htc/store/module/vo/MyActivityItem;
    iget-object v9, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v9, v7}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    .line 257
    .local v3, i:Lcom/htc/store/module/vo/ItemItem;
    invoke-virtual {v5, v7}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineItemId(Ljava/lang/String;)V

    .line 258
    if-eqz v3, :cond_12

    .line 259
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 260
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 264
    :goto_2
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemPackageName(Ljava/lang/String;)V

    .line 265
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_10

    .line 268
    invoke-virtual {v3}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 283
    :cond_10
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineContentType(Ljava/lang/String;)V

    .line 284
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 285
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineIsPurchased(I)V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 287
    iget-object v9, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v9, v5}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItem(Lcom/htc/store/module/vo/MyActivityItem;)J

    goto/16 :goto_0

    .line 262
    :cond_11
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_12
    if-eqz p5, :cond_13

    .line 272
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemIcon([B)V

    .line 274
    :cond_13
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 275
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemLabel(Ljava/lang/String;)V

    .line 277
    :cond_14
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 278
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_10

    .line 279
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    goto :goto_3

    .line 291
    .end local v3           #i:Lcom/htc/store/module/vo/ItemItem;
    .end local v5           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v7           #onlineId:Ljava/lang/String;
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    .line 292
    invoke-direct {p0, v1}, Lcom/htc/store/service/SyncInstallationStatusService;->deleteMarkedItem(Ljava/util/ArrayList;)I

    move-result v2

    .line 294
    :cond_16
    return v2
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v0}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 54
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/htc/store/service/SyncInstallationStatusService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start service - action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string v1, "com.htc.store.action.SYNC_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v1, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 64
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v1}, Lcom/htc/store/module/PreferenceManager;->isFirstLaunch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Lcom/htc/store/provider/AccessHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 66
    invoke-virtual {p0}, Lcom/htc/store/service/SyncInstallationStatusService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    iget-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/htc/store/module/rest/RestHelper;

    invoke-direct {v1, p0}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/service/SyncInstallationStatusService;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/store/service/SyncInstallationStatusService;->startSync(Landroid/content/Intent;)V

    .line 74
    :cond_1
    return-void
.end method
