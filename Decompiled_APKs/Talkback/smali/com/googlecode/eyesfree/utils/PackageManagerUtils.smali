.class public Lcom/googlecode/eyesfree/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field public static final INVALID_VERSION_CODE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/content/pm/PackageInfo;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-object v2

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 90
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)I
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return v1

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 46
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 47
    const-class v2, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;

    const/4 v3, 0x6

    const-string v4, "Could not find package: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 48
    aput-object p1, v5, v6

    .line 47
    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_1
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :goto_0
    return-object v1

    .line 64
    :cond_0
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 66
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 67
    const-class v2, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;

    const/4 v3, 0x6

    const-string v4, "Could not find package: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 68
    aput-object p1, v5, v6

    .line 67
    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/googlecode/eyesfree/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
