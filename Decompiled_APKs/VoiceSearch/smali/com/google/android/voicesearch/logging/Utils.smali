.class public Lcom/google/android/voicesearch/logging/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/voicesearch/logging/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/logging/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, pkgName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/google/android/voicesearch/logging/Utils;->TAG:Ljava/lang/String;

    const-string v3, "failed to retrieve package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const-string v2, "0.0.0"

    goto :goto_0
.end method

.method public static getDistributionChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "dc"

    return-object v0
.end method

.method public static getMasfClientString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "app_name"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/voicesearch/logging/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, app_version:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/voicesearch/logging/Utils;->getPlatformId()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, platform_id:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/voicesearch/logging/Utils;->getDistributionChannel()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, distribution_channel:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/voicesearch/logging/Utils;->getPlatformLocale()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, platform_locale:Ljava/lang/String;
    const-string v4, "%s,%s,%s,%s,%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPlatformId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    const-string v0, "android-%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
