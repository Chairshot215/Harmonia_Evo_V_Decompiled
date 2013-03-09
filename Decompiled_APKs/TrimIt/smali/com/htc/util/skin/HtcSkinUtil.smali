.class public Lcom/htc/util/skin/HtcSkinUtil;
.super Ljava/lang/Object;
.source "HtcSkinUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_SKIN_NAME:Ljava/lang/String; = "HTC"

.field private static final PREVIEW_FILE_NAME:Ljava/lang/String; = "image/preview.png"

.field private static final PREVIEW_FILE_NAME_LAND:Ljava/lang/String; = "image/preview_land.png"

.field public static final PREVIEW_LAND:I = 0x1

.field public static final PREVIEW_PORT:I = 0x0

.field private static final SKIN_ICON_NAME:Ljava/lang/String; = "image/skin_icon.png"

.field private static final TAG:Ljava/lang/String; = "HtcSkinUtil"

.field private static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "image/wallpaper.jpg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    return-void
.end method

.method public static applySkinFromPackageName(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 156
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 158
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 182
    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 183
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static applySkinWithWallpaperFromPackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 194
    invoke-static {p0, p1}, Lcom/htc/util/skin/HtcSkinUtil;->setWallpaperForSkin(Landroid/content/Context;Ljava/lang/String;)Z

    .line 195
    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->applySkinFromPackageName(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private static checkSdCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    const/4 v1, 0x1

    .line 790
    :cond_0
    :goto_0
    return v1

    .line 787
    :cond_1
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static checkSdSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v2, 0x0

    .line 1485
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1487
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1492
    if-nez v0, :cond_1

    .line 1493
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageInfo is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 1495
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1497
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 1498
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1499
    const/4 v2, 0x1

    goto :goto_0

    .line 1501
    :cond_2
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The versionCode of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not for this device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1454
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1456
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 1473
    :goto_0
    return v3

    .line 1458
    :cond_0
    const-string v5, "default"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    .line 1459
    goto :goto_0

    .line 1463
    :cond_2
    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1469
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v6

    if-ne v5, v6, :cond_3

    move v3, v4

    .line 1470
    goto :goto_0

    .line 1464
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1465
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1472
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The versionCode of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for this device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static compareFile(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 2
    .parameter "sdTime"
    .parameter "sdSize"
    .parameter "providerTime"
    .parameter "providerSize"

    .prologue
    const/4 v0, 0x0

    .line 1236
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v0

    .line 1238
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteProviderSdApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1042
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, where_clause:Ljava/lang/String;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method public static deleteProviderSystemAndInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 921
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packagename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, where_clause:Ljava/lang/String;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method public static deleteWrongVersionData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1519
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 1520
    .local v1, systemVersion:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1521
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skinversion!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packagetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, where_clause:Ljava/lang/String;
    sget-object v3, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1524
    return-void
.end method

.method public static downloadSdApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "sdFileName"

    .prologue
    .line 1203
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1210
    new-instance v3, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 1211
    .local v3, sdTime:Ljava/lang/Long;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 1213
    .local v2, sdSize:Ljava/lang/Long;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1214
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filename=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "packagetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1216
    .local v4, where_clause:Ljava/lang/String;
    sget-object v5, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1218
    invoke-static {p0, p1, v3, v2}, Lcom/htc/util/skin/HtcSkinUtil;->insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static getAppliedSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 265
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 266
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 267
    :catch_0
    move-exception v2

    .line 268
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 270
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 91
    const-string v0, "color"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCurrentTheme(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const v4, 0x2030058

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 135
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 137
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v5, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v4

    .line 140
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, packageName:Ljava/lang/String;
    const-string v5, "Skin"

    const-string v6, "style"

    invoke-virtual {v2, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, styleId:I
    if-lez v3, :cond_2

    .end local v3           #styleId:I
    :goto_1
    move v4, v3

    goto :goto_0

    .restart local v3       #styleId:I
    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 78
    const-string v0, "drawable"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 104
    const-string v0, "integer"

    invoke-static {p0, p1, p2, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPreviewList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 554
    .local v5, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 555
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v2, piList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 559
    .local v3, pkgName:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 560
    .local v4, preview:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;

    invoke-direct {v1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 561
    .local v1, pi:Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    .end local v1           #pi:Lcom/htc/util/skin/HtcSkinUtil$SkinPackageInfo;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #preview:Landroid/graphics/Bitmap;
    :cond_0
    return-object v2
.end method

.method public static getProviderSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1384
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1385
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1386
    .local v7, buf:[B
    const/4 v8, 0x0

    .line 1387
    .local v8, imageCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1388
    .local v6, bmpPreview:Landroid/graphics/Bitmap;
    if-ne p2, v2, :cond_0

    .line 1389
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "previewland"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1398
    :goto_0
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1399
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1400
    if-nez v7, :cond_1

    .line 1401
    const-string v1, "HtcSkinUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviderSkinPreviewImage(): PreviewImage buf is null fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_1
    return-object v4

    .line 1393
    :cond_0
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "preview"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1404
    :cond_1
    array-length v1, v7

    invoke-static {v7, v9, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1405
    const/4 v7, 0x0

    .line 1406
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1407
    const/4 v8, 0x0

    :cond_2
    move-object v4, v6

    .line 1410
    goto :goto_1
.end method

.method public static getSdSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 609
    const-string v2, "HtcSkinUtil"

    const-string v3, "package name should not be null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string p1, "default"

    .line 612
    :cond_0
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    const-string p1, "HTC"

    .line 626
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 616
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 619
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 621
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 625
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 626
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getSdSkinPackageCursorInfoList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/SkinPackageCursorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1423
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 1424
    .local v8, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=1"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1430
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v9, skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    if-nez v8, :cond_1

    .line 1443
    :goto_0
    return-object v9

    .line 1436
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1437
    new-instance v1, Lcom/htc/util/skin/SkinPackageCursorInfo;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/skin/SkinPackageCursorInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1440
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1441
    const/4 v8, 0x0

    .line 1443
    goto :goto_0
.end method

.method public static getSdSkinPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 702
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 704
    .local v0, SdSkinkPackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 705
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 707
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 708
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 709
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 713
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v0
.end method

.method public static getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 644
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 645
    const-string p1, "default"

    .line 649
    :cond_0
    :try_start_0
    const-string v7, "default"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 650
    const-string v7, "com.htc"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 667
    .local v6, res:Landroid/content/res/Resources;
    :goto_0
    const-string v7, "default"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 668
    const v7, 0x2080b20

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 690
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v5

    .line 652
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 653
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v7, :cond_3

    .line 654
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 655
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 656
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .restart local v6       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 658
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_3
    const-string v7, "com.htc"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 660
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 661
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "HtcSkinUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No such skin package file matches the given name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 672
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_4
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 673
    .local v0, a:Landroid/content/res/AssetManager;
    if-eqz v6, :cond_1

    .line 676
    const/4 v7, 0x1

    if-ne p2, v7, :cond_5

    .line 677
    :try_start_2
    const-string v7, "image/preview_land.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 685
    .local v2, is:Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 686
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 687
    .local v5, preview:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 679
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #preview:Landroid/graphics/Bitmap;
    :cond_5
    :try_start_3
    const-string v7, "image/preview.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 680
    .end local v2           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 681
    .local v1, e:Ljava/io/IOException;
    const-string v7, "HtcSkinUtil"

    const-string v8, "IOException: image/preview.png"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const-string v3, "HtcSkinUtil"

    const-string v4, "package name should not be null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string p1, "default"

    .line 314
    :cond_0
    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    const-string p1, "HTC"

    .line 330
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 318
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 321
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 327
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 330
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 322
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such skin package matches the given name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSkinPackageCursorInfoList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/skin/SkinPackageCursorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1343
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 1344
    .local v8, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1345
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=3 OR packagetype=2 OR packagetype=1"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1357
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v9, skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    if-nez v8, :cond_1

    .line 1370
    :goto_1
    return-object v9

    .line 1351
    .end local v9           #skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    :cond_0
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "filename"

    aput-object v3, v2, v11

    const-string v3, "packagename"

    aput-object v3, v2, v12

    const-string v3, "skinname"

    aput-object v3, v2, v13

    const-string v3, "packagetype"

    aput-object v3, v2, v14

    const-string v3, "packagetype=3 OR packagetype=2"

    const/4 v4, 0x0

    const-string v5, "packagetype DESC, packagename ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 1363
    .restart local v9       #skinPackageCursorInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/skin/SkinPackageCursorInfo;>;"
    :cond_1
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1364
    new-instance v1, Lcom/htc/util/skin/SkinPackageCursorInfo;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/skin/SkinPackageCursorInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1367
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1368
    const/4 v8, 0x0

    .line 1370
    goto :goto_1
.end method

.method public static getSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 283
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getInstalledSkinPackages()Ljava/util/List;

    move-result-object v2

    .line 284
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v4, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 290
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->checkSkinVersionCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v4
.end method

.method public static getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 409
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 410
    const-string p1, "default"

    .line 413
    :cond_0
    :try_start_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 414
    const-string v6, "com.htc"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 423
    .local v5, res:Landroid/content/res/Resources;
    :goto_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    const v6, 0x2080b20

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 443
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v4

    .line 416
    :cond_2
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 417
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcSkinUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such skin package matches the given name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 428
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 429
    .local v0, a:Landroid/content/res/AssetManager;
    if-eqz v5, :cond_1

    .line 432
    :try_start_2
    const-string v6, "image/preview.png"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 438
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 439
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 440
    .local v4, preview:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 433
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #preview:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v1

    .line 434
    .local v1, e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "IOException: image/preview.png"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "orientation"

    .prologue
    const/4 v4, 0x0

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 458
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 459
    const-string p1, "default"

    .line 462
    :cond_0
    :try_start_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 463
    const-string v6, "com.htc"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 472
    .local v5, res:Landroid/content/res/Resources;
    :goto_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 473
    const v6, 0x2080b20

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 495
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-object v4

    .line 465
    :cond_2
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5       #res:Landroid/content/res/Resources;
    goto :goto_0

    .line 466
    .end local v5           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 467
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcSkinUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such skin package matches the given name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 477
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 478
    .local v0, a:Landroid/content/res/AssetManager;
    if-eqz v5, :cond_1

    .line 481
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 482
    :try_start_2
    const-string v6, "image/preview_land.png"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 490
    .local v2, is:Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 491
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 492
    .local v4, preview:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 484
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #preview:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_3
    const-string v6, "image/preview.png"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 485
    .end local v2           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 486
    .local v1, e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "IOException: image/preview.png"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getSkinResId(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"
    .parameter "type"

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    .end local v1           #packageName:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 113
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, id:I
    if-nez v0, :cond_2

    .line 115
    const-string v2, "HtcSkinUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such resource was found with given name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move p2, v0

    .line 119
    goto :goto_0
.end method

.method public static getSkinVersionCode()I
    .locals 1

    .prologue
    .line 361
    const/high16 v0, 0x1100

    return v0
.end method

.method public static getSkinVersionCode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    const/high16 v0, 0x1100

    return v0
.end method

.method public static getSkinVersionCodeFromFileName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v2, -0x1

    .line 1566
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1568
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1570
    const/4 v0, 0x0

    .line 1571
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 1584
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 1575
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1577
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v3, :cond_0

    .line 1578
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static getSkinVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, -0x1

    .line 1535
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1537
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return v3

    .line 1539
    :cond_1
    const-string v4, "default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.htc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1540
    :cond_2
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    .line 1544
    :cond_3
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1551
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 1555
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    .line 1545
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1546
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserInstallSkinPackageName(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1596
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getInstalledSkinPackages()Ljava/util/List;

    move-result-object v2

    .line 1597
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1598
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v4, skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1601
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1603
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1604
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1608
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method

.method public static insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 17
    .parameter "context"
    .parameter "apkFileName"
    .parameter "sdTime"
    .parameter "sdSize"

    .prologue
    .line 938
    invoke-static/range {p0 .. p1}, Lcom/htc/util/skin/HtcSkinUtil;->deleteProviderSdApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 940
    const/16 v1, 0x64

    .line 945
    .local v1, compressRate:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 946
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 948
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 949
    .local v9, previewStream:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 950
    .local v11, previewlandStream:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 951
    .local v8, preview:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 952
    .local v10, previewland:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 954
    .local v3, date:Ljava/util/Date;
    move-object/from16 v5, p1

    .line 955
    .local v5, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->isSkinApk(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 957
    .local v6, isSkinApk:I
    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    .line 958
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, packagename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 960
    .local v12, skinname:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 961
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSdSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 962
    if-eqz v8, :cond_0

    .line 963
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v14, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 964
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 967
    :cond_0
    if-eqz v10, :cond_1

    .line 968
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10, v14, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 969
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 973
    :cond_1
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 979
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v14, "skinname"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    .line 985
    const-string v14, "preview"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 986
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 987
    const-string v14, "previewland"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 989
    :cond_3
    const-string v14, "packagetype"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 991
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 992
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 993
    const-string v14, "skinversion"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCodeFromFileName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    .end local v7           #packagename:Ljava/lang/String;
    .end local v12           #skinname:Ljava/lang/String;
    :cond_4
    :goto_1
    sget-object v14, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1026
    const/4 v9, 0x0

    .line 1027
    const/4 v11, 0x0

    .line 1028
    return-void

    .line 975
    .restart local v7       #packagename:Ljava/lang/String;
    .restart local v12       #skinname:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 976
    .local v4, ex:Ljava/io/IOException;
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " got exception ex "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 995
    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #packagename:Ljava/lang/String;
    .end local v12           #skinname:Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    .line 996
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a skin pacakge should not put in directory "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".data/HtcSkins"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 998
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v14, "packagetype"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1005
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string v14, "skinversion"

    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1008
    :cond_6
    const/4 v14, -0x1

    if-ne v6, v14, :cond_4

    .line 1009
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a valid apk file or valid file name should not put in directory "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".data/HtcSkins"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1011
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v14, "packagetype"

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1018
    const-string v14, "datemodified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1019
    const-string v14, "filesize"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    const-string v14, "skinversion"

    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1
.end method

.method public static insertProviderSystemAndInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 840
    invoke-static/range {p0 .. p1}, Lcom/htc/util/skin/HtcSkinUtil;->isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 842
    .local v6, isSystemApk:Z
    if-nez v6, :cond_0

    .line 843
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " should be insert into database when install"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    const/16 v1, 0x64

    .line 851
    .local v1, compressRate:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 854
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 855
    .local v9, previewStream:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 856
    .local v11, previewlandStream:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 857
    .local v8, preview:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 858
    .local v10, previewland:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 860
    .local v3, date:Ljava/util/Date;
    move-object/from16 v5, p1

    .line 861
    .local v5, filename:Ljava/lang/String;
    move-object/from16 v7, p1

    .line 862
    .local v7, packagename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, skinname:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 864
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v14}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinPreviewImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 865
    if-eqz v8, :cond_1

    .line 866
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v14, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 867
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 870
    :cond_1
    if-eqz v10, :cond_2

    .line 871
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v10, v14, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 872
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 876
    :cond_2
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 877
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 883
    const-string v14, "filename"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v14, "packagename"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v14, "skinname"

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    if-eqz v6, :cond_3

    .line 890
    const-string v14, "packagetype"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    :goto_1
    const-string v14, "dateadded"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 901
    const-string v14, "datemodified"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    const-string v14, "filesize"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    const-string v14, "skinversion"

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    sget-object v14, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 907
    const/4 v9, 0x0

    .line 908
    const/4 v11, 0x0

    .line 909
    return-void

    .line 878
    :catch_0
    move-exception v4

    .line 879
    .local v4, ex:Ljava/io/IOException;
    const-string v14, "HtcSkinUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got exception ex "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    .end local v4           #ex:Ljava/io/IOException;
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 893
    const-string v14, "preview"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 894
    :cond_4
    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    .line 895
    const-string v14, "previewland"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 897
    :cond_5
    const-string v14, "packagetype"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private static isSkinApk(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "apkFileName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 807
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 812
    if-nez v0, :cond_1

    .line 813
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " packageInfo is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 815
    .restart local v0       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 817
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->isSkinApk:Z

    if-eqz v4, :cond_3

    .line 818
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 819
    const/4 v2, 0x1

    goto :goto_0

    .line 821
    :cond_2
    const-string v3, "HtcSkinUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The versionCode of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not for this device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    .line 825
    goto :goto_0
.end method

.method public static isSystemApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 375
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    const-string v4, "default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    :cond_0
    const-string p1, "com.htc"

    .line 378
    :cond_1
    const/16 v4, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_3

    .line 394
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return v3

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcSkinUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such skin package matches the given name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 392
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSystemSkinPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method private static setWallpaperForSkin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 216
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 218
    .local v4, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 227
    :cond_0
    if-eqz v4, :cond_2

    .line 228
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 231
    .local v0, a:Landroid/content/res/AssetManager;
    :try_start_1
    const-string v6, "image/wallpaper.jpg"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 237
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 238
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 240
    .local v5, wm:Landroid/app/WallpaperManager;
    :try_start_2
    invoke-virtual {v5, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    .end local v0           #a:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :cond_1
    :goto_0
    return v9

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "HtcSkinUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such skin package matches the given name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #a:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v1

    .line 233
    .local v1, e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "IOException: image/wallpaper.jpg"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :catch_2
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "failed to apply skin wallpaper"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0           #a:Landroid/content/res/AssetManager;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #wm:Landroid/app/WallpaperManager;
    :cond_2
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .line 248
    .restart local v5       #wm:Landroid/app/WallpaperManager;
    :try_start_3
    invoke-virtual {v5}, Landroid/app/WallpaperManager;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 249
    :catch_3
    move-exception v1

    .line 250
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "HtcSkinUtil"

    const-string v7, "An error occurs reverting to the default wallpape"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static syncBoth(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1247
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->syncSystem(Landroid/content/Context;)V

    .line 1248
    invoke-static {p0}, Lcom/htc/util/skin/HtcSkinUtil;->syncSd(Landroid/content/Context;)V

    .line 1249
    return-void
.end method

.method public static syncLocale(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1259
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1260
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1262
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "Locale"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1264
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1265
    return-void
.end method

.method public static syncPackageAdd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1307
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1308
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1310
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "PackageAdd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v2, "packagename"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1313
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1314
    return-void
.end method

.method public static syncPackageRemove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1324
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1325
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1326
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1327
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "PackageRemove"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const-string v2, "packagename"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1330
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1331
    return-void
.end method

.method public static syncSd(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1276
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1278
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "Sd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1280
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1281
    return-void
.end method

.method public static syncSystem(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1291
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1292
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.skinscanner"

    const-string v4, "com.htc.skinscanner.SkinScannerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1294
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "filepath"

    const-string v3, "System"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1296
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1297
    return-void
.end method

.method public static updateToInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "fileName"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1065
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1066
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1068
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagetype=2 AND filename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1070
    .local v3, where_clause:Ljava/lang/String;
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packagetype=2 AND packagename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1074
    const/4 v6, 0x0

    .line 1075
    .local v6, c:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v5, "filename"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1077
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1086
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1087
    const/4 v6, 0x0

    .line 1089
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1090
    const-string v1, "packagetype"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packagetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1082
    :cond_1
    const-string v1, "packagetype"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    sget-object v1, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateToUninstalled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1115
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v17, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1118
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 1119
    .local v11, providerFileName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1120
    .local v13, providerTime:Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1121
    .local v12, providerSize:Ljava/lang/Long;
    const/4 v9, -0x1

    .line 1123
    .local v9, dataVersion:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packagename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1126
    .local v16, self_where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1128
    .local v8, conflict_where:Ljava/lang/String;
    move-object/from16 v4, v16

    .line 1129
    .local v4, where_clause:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1130
    .local v7, c:Landroid/database/Cursor;
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "filename"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "datemodified"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "filesize"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "skinversion"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1132
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1134
    new-instance v13, Ljava/lang/Long;

    .end local v13           #providerTime:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v13, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1135
    .restart local v13       #providerTime:Ljava/lang/Long;
    new-instance v12, Ljava/lang/Long;

    .end local v12           #providerSize:Ljava/lang/Long;
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v12, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1136
    .restart local v12       #providerSize:Ljava/lang/Long;
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packagetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1140
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1141
    const/4 v7, 0x0

    .line 1143
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->checkSdCard()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1144
    if-eqz v8, :cond_1

    .line 1145
    move-object v4, v8

    .line 1146
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "filename"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1148
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1149
    move-object/from16 v4, v16

    .line 1150
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1152
    const/4 v7, 0x0

    .line 1192
    :cond_1
    :goto_0
    return-void

    .line 1154
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1155
    move-object/from16 v4, v16

    .line 1156
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1158
    :cond_3
    move-object/from16 v4, v16

    .line 1159
    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v2

    if-ne v9, v2, :cond_4

    .line 1160
    const-string v2, "packagetype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1161
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1163
    :cond_4
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1170
    :cond_5
    move-object/from16 v4, v16

    .line 1171
    if-eqz v11, :cond_1

    .line 1172
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1174
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :cond_6
    new-instance v15, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v15, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1177
    .local v15, sdTime:Ljava/lang/Long;
    new-instance v14, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v14, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 1178
    .local v14, sdSize:Ljava/lang/Long;
    invoke-static {v15, v14, v13, v12}, Lcom/htc/util/skin/HtcSkinUtil;->compareFile(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1179
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1181
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v2

    if-ne v9, v2, :cond_8

    .line 1182
    const-string v2, "packagetype"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1185
    :cond_8
    sget-object v2, Lcom/htc/provider/SkinProviderContact$SKIN;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1186
    move-object/from16 v0, p0

    invoke-static {v0, v11, v15, v14}, Lcom/htc/util/skin/HtcSkinUtil;->insertProviderSdApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method
