.class public Lcom/htc/store/util/InstallationUtils;
.super Ljava/lang/Object;
.source "InstallationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/util/InstallationUtils$ApkUnInstallObserver;,
        Lcom/htc/store/util/InstallationUtils$ApkInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALLATION_BUFFER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static mInstallationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/store/util/InstallationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/htc/store/util/InstallationUtils;->mInstallationCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getInstalledNotificationToDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 8
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    .line 376
    const v1, 0x2080683

    .line 378
    .local v1, iconId:I
    invoke-static {p0, p2, p3}, Lcom/htc/store/util/ActivityUtils;->getIntentToStoreDetail(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 379
    .local v7, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/store/util/InstallationUtils;->getSafeInstallationCount()I

    move-result v0

    const/high16 v5, 0x800

    invoke-static {p0, v0, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 380
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object v2, p1

    .line 381
    .local v2, contentTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a0021

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, contentText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->getNotificaion(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static getInstalledNotificationToSDMDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 9
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 365
    const v1, 0x2080683

    .line 367
    .local v1, iconId:I
    invoke-static {p2, p3}, Lcom/htc/store/util/ActivityUtils;->getIntentToAudioDetail(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 368
    .local v7, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/store/util/InstallationUtils;->getSafeInstallationCount()I

    move-result v0

    const/high16 v8, 0x800

    invoke-static {p0, v0, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 369
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object v2, p1

    .line 370
    .local v2, contentTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0a0021

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p1, v8, v6

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, contentText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->getNotificaion(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static getInstallingNotificationToDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 8
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    const/4 v5, 0x1

    .line 354
    const v1, 0x1080081

    .line 356
    .local v1, iconId:I
    invoke-static {p0, p2, p3}, Lcom/htc/store/util/ActivityUtils;->getIntentToStoreDetail(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 357
    .local v7, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/store/util/InstallationUtils;->getSafeInstallationCount()I

    move-result v0

    const/high16 v6, 0x800

    invoke-static {p0, v0, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 358
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object v2, p1

    .line 359
    .local v2, contentTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0a0020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, contentText:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->getNotificaion(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static getSafeInstallationCount()I
    .locals 2

    .prologue
    .line 484
    sget v0, Lcom/htc/store/util/InstallationUtils;->mInstallationCount:I

    const v1, 0x7fffff9b

    if-le v0, v1, :cond_0

    .line 485
    const/4 v0, 0x0

    sput v0, Lcom/htc/store/util/InstallationUtils;->mInstallationCount:I

    .line 487
    :cond_0
    sget v0, Lcom/htc/store/util/InstallationUtils;->mInstallationCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/htc/store/util/InstallationUtils;->mInstallationCount:I

    return v0
.end method

.method public static installApk(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .parameter "context"
    .parameter "item"
    .parameter "fileContentUri"
    .parameter "filePath"
    .parameter "isForUpdate"

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/store/util/InstallationUtils;->sendInstallingNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V

    .line 35
    if-eqz p4, :cond_2

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstallingForUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, packageName:Ljava/lang/String;
    sget-object v1, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "installApk "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/4 v11, 0x0

    .line 46
    .local v11, installFlags:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 50
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/16 v1, 0x2000

    :try_start_0
    invoke-virtual {v14, v12, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 51
    .local v13, pi:Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_0

    .line 52
    or-int/lit8 v11, v11, 0x2

    .line 59
    .end local v13           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "replacing package "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    new-instance v1, Lcom/htc/store/util/InstallationUtils$ApkInstallObserver;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v8

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/htc/store/util/InstallationUtils$ApkInstallObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    const-string v2, "HTCInstaller"

    invoke-virtual {v14, v15, v1, v11, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 64
    return-void

    .line 38
    .end local v11           #installFlags:I
    .end local v12           #packageName:Ljava/lang/String;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsInstalling(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    .restart local v11       #installFlags:I
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v10

    .line 55
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "pm.getPackageInfo failed "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "id"

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 388
    return-void
.end method

.method public static sendInstallFailedNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "id"
    .parameter "msg"

    .prologue
    .line 391
    sget-object v0, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v10, "sendInstallFailedNotification primary label is "

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v10, ", id is "

    aput-object v10, v5, v6

    const/4 v6, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v0, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 395
    .local v9, res:Landroid/content/res/Resources;
    const v1, 0x1080078

    .line 396
    .local v1, iconId:I
    invoke-static {}, Lcom/htc/store/util/InstallationUtils;->getSafeInstallationCount()I

    move-result v0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x800

    invoke-static {p0, v0, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 397
    .local v4, contentIntent:Landroid/app/PendingIntent;
    move-object v2, p1

    .line 398
    .local v2, contentTitle:Ljava/lang/String;
    move-object v3, p4

    .line 399
    .local v3, contentText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const v0, 0x7f0a0022

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->getNotificaion(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)Landroid/app/Notification;

    move-result-object v8

    .line 404
    .local v8, notification:Landroid/app/Notification;
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 405
    .local v7, nm:Landroid/app/NotificationManager;
    long-to-int v0, p2

    invoke-virtual {v7, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 406
    return-void
.end method

.method public static sendInstalledNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "id"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    .line 331
    sget-object v2, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "sendInstalledNotification primary label is "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, ", id is "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ", onlineId is "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, notification:Landroid/app/Notification;
    packed-switch p5, :pswitch_data_0

    .line 349
    :goto_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 350
    .local v0, nm:Landroid/app/NotificationManager;
    long-to-int v2, p2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 351
    return-void

    .line 340
    .end local v0           #nm:Landroid/app/NotificationManager;
    :pswitch_0
    invoke-static {p0, p1, p4, p5}, Lcom/htc/store/util/InstallationUtils;->getInstalledNotificationToSDMDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    .line 341
    goto :goto_0

    .line 345
    :pswitch_1
    invoke-static {p0, p1, p4, p5}, Lcom/htc/store/util/InstallationUtils;->getInstalledNotificationToDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static sendInstallingNotification(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "primaryLabel"
    .parameter "id"
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 308
    sget-object v2, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sendInstallingNotification primary label is "

    aput-object v4, v3, v6

    aput-object p1, v3, v7

    const/4 v4, 0x2

    const-string v5, ", id is "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ", onlineId is "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const/4 v1, 0x0

    .line 312
    .local v1, notification:Landroid/app/Notification;
    packed-switch p5, :pswitch_data_0

    .line 326
    :goto_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 327
    .local v0, nm:Landroid/app/NotificationManager;
    long-to-int v2, p2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 328
    return-void

    .line 317
    .end local v0           #nm:Landroid/app/NotificationManager;
    :pswitch_0
    sget-object v2, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "un expected content type"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-static {p0, p1, p4, p5}, Lcom/htc/store/util/InstallationUtils;->getInstallingNotificationToDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"
    .parameter "downloadStatus"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    if-eqz p1, :cond_0

    .line 463
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v3, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v3, "online_item_ids"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 468
    const-string v3, "online_item_content_type"

    invoke-static {p3}, Lcom/htc/store/module/json/JSONUtils;->getLocalItemTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v3, "download_status"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v3, "requester"

    const-string v4, "com.htc.store_store"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v2, optionalBundle:Landroid/os/Bundle;
    const-string v3, "online_item_optional_version"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v3, "online_item_optional_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    sget-object v3, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "send out broadcast to update "

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    const/4 v5, 0x2

    const-string v6, " status to "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #optionalBundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 479
    :cond_0
    sget-object v3, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "online id is null"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static unInstallApk(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 10
    .parameter "context"
    .parameter "item"

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsUnInstalling(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, packageName:Ljava/lang/String;
    sget-object v0, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "unInstallApk "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 73
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 87
    .local v7, deleteFlags:I
    new-instance v0, Lcom/htc/store/util/InstallationUtils$ApkUnInstallObserver;

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v4

    invoke-virtual {p1}, Lcom/htc/store/module/vo/ItemItem;->getId()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/store/util/InstallationUtils$ApkUnInstallObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v9, v8, v0, v7}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 88
    return-void
.end method

.method public static uninstallAudioItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3}, Lcom/htc/store/util/InstallationUtils;->updateItemStatusAsUnInstalling(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    invoke-static {p3}, Lcom/htc/store/util/MediaUtils;->getAudioOrSoundsetTypeStringForSDM(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.store.action.NOTIFY_SDM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "online_item_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v2, "online_item_content_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "online_item_action"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v2, Lcom/htc/store/util/InstallationUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "content type error "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static updateItemStatusAsDownloading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 414
    return-void
.end method

.method public static updateItemStatusAsDownloadingForUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 417
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 418
    return-void
.end method

.method public static updateItemStatusAsInstallFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 452
    return-void
.end method

.method public static updateItemStatusAsInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 434
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 435
    return-void
.end method

.method public static updateItemStatusAsInstalling(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 421
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 422
    return-void
.end method

.method public static updateItemStatusAsInstallingForUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 425
    const/4 v0, 0x6

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 426
    return-void
.end method

.method public static updateItemStatusAsNotDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 410
    return-void
.end method

.method public static updateItemStatusAsUnInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 448
    return-void
.end method

.method public static updateItemStatusAsUnInstalling(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "onlineId"
    .parameter "version"
    .parameter "contentType"

    .prologue
    .line 438
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/store/util/InstallationUtils;->sendUpdateInstallStatusIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 439
    return-void
.end method
