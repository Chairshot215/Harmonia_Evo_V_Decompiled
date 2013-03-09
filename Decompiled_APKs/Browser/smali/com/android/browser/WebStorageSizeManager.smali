.class public Lcom/android/browser/WebStorageSizeManager;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;,
        Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;,
        Lcom/android/browser/WebStorageSizeManager$DiskInfo;
    }
.end annotation


# static fields
.field public static final APPCACHE_MAXSIZE_PADDING:J = 0x80000L

.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final LOGV_ENABLED:Z = false

.field private static final NOTIFICATION_INTERVAL:J = 0x493e0L

.field public static final ORIGIN_DEFAULT_QUOTA:J = 0x300000L

.field private static final OUT_OF_SPACE_ID:I = 0x1

.field public static final QUOTA_INCREASE_STEP:J = 0x100000L

.field private static final RESET_NOTIFICATION_INTERVAL:J = 0xbb8L

.field private static mLastOutOfSpaceNotificationTime:J


# instance fields
.field private mAppCacheMaxSize:J

.field private final mContext:Landroid/content/Context;

.field private mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

.field private final mGlobalLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "diskInfo"
    .parameter "appCacheInfo"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    .line 194
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->getGlobalLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    .line 197
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-interface {p3}, Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;->getAppCacheSizeBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 199
    return-void
.end method

.method static calculateGlobalLimit(JJ)J
    .locals 12
    .parameter "fileSystemSizeBytes"
    .parameter "freeSpaceBytes"

    .prologue
    const-wide/16 v6, 0x0

    .line 366
    cmp-long v8, p0, v6

    if-lez v8, :cond_0

    cmp-long v8, p2, v6

    if-lez v8, :cond_0

    cmp-long v8, p2, p0

    if-lez v8, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-wide v6

    .line 372
    :cond_1
    const/4 v8, 0x2

    const-wide/32 v9, 0x100000

    div-long v9, p0, v9

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    shl-int/2addr v8, v9

    int-to-long v0, v8

    .line 375
    .local v0, fileSystemSizeRatio:J
    div-long v8, p0, v0

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    const-wide/16 v10, 0x2

    div-long v10, p2, v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-long v2, v8

    .line 380
    .local v2, maxSizeBytes:J
    const-wide/32 v4, 0x100000

    .line 381
    .local v4, maxSizeStepBytes:J
    cmp-long v8, v2, v4

    if-ltz v8, :cond_0

    .line 384
    rem-long v8, v2, v4

    cmp-long v8, v8, v6

    if-nez v8, :cond_2

    .line 385
    .local v6, roundingExtra:J
    :goto_1
    div-long v8, v2, v4

    add-long/2addr v8, v6

    mul-long v6, v4, v8

    goto :goto_0

    .line 384
    .end local v6           #roundingExtra:J
    :cond_2
    const-wide/16 v6, 0x1

    goto :goto_1
.end method

.method private getGlobalLimit()J
    .locals 6

    .prologue
    .line 359
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getFreeSpaceSizeBytes()J

    move-result-wide v2

    .line 360
    .local v2, freeSpace:J
    iget-object v4, p0, Lcom/android/browser/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/WebStorageSizeManager$DiskInfo;->getTotalSizeBytes()J

    move-result-wide v0

    .line 361
    .local v0, fileSystemSize:J
    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/WebStorageSizeManager;->calculateGlobalLimit(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static resetLastOutOfSpaceNotificationTime()V
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 354
    return-void
.end method

.method private scheduleOutOfSpaceNotification()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 395
    sget-wide v10, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x493e0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 398
    :cond_0
    const v1, 0x108008a

    .line 399
    .local v1, icon:I
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0135

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, title:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0136

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, text:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 404
    .local v8, when:J
    new-instance v2, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v2, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v2, intent:Landroid/content/Intent;
    const-string v10, ":android:show_fragment"

    const-class v11, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v14, v2, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 409
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v1, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 410
    .local v4, notification:Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10, v7, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 411
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 413
    const-string v5, "notification"

    .line 414
    .local v5, ns:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/browser/WebStorageSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 416
    .local v3, mgr:Landroid/app/NotificationManager;
    if-eqz v3, :cond_1

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/android/browser/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 418
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 421
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #icon:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mgr:Landroid/app/NotificationManager;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #ns:Ljava/lang/String;
    .end local v6           #text:Ljava/lang/CharSequence;
    .end local v7           #title:Ljava/lang/CharSequence;
    .end local v8           #when:J
    :cond_1
    return-void
.end method


# virtual methods
.method public getAppCacheMaxSize()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    return-wide v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 236
    iget-wide v7, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long v7, v7, p7

    iget-wide v9, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v5, v7, v9

    .line 238
    .local v5, totalUnusedQuota:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_1

    .line 241
    const-wide/16 v7, 0x0

    cmp-long v7, p7, v7

    if-lez v7, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 250
    :cond_0
    move-object/from16 v0, p9

    invoke-interface {v0, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 300
    :goto_0
    return-void

    .line 258
    :cond_1
    move-wide v1, p3

    .line 259
    .local v1, newOriginQuota:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-nez v7, :cond_4

    .line 264
    cmp-long v7, v5, p5

    if-ltz v7, :cond_3

    .line 265
    move-wide/from16 v1, p5

    .line 294
    :cond_2
    :goto_1
    move-object/from16 v0, p9

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 274
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 283
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, p5, v7

    if-nez v7, :cond_5

    const-wide/32 v7, 0x100000

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 286
    .local v3, quotaIncrease:J
    :goto_2
    add-long/2addr v1, v3

    .line 288
    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 290
    move-wide v1, p3

    goto :goto_1

    .end local v3           #quotaIncrease:J
    :cond_5
    move-wide/from16 v3, p5

    .line 283
    goto :goto_2
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    const-wide/32 v8, 0x80000

    const-wide/16 v6, 0x0

    .line 318
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mGlobalLimit:J

    sub-long/2addr v2, p3

    iget-wide v4, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v0, v2, v4

    .line 320
    .local v0, totalUnusedQuota:J
    add-long v2, p1, v8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 323
    cmp-long v2, p3, v6

    if-lez v2, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/browser/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 332
    :cond_0
    invoke-interface {p5, v6, v7}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    add-long v4, p1, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 340
    iget-wide v2, p0, Lcom/android/browser/WebStorageSizeManager;->mAppCacheMaxSize:J

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method
