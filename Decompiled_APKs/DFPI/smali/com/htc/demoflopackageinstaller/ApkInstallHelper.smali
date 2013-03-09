.class public Lcom/htc/demoflopackageinstaller/ApkInstallHelper;
.super Ljava/lang/Object;
.source "ApkInstallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/demoflopackageinstaller/ApkInstallHelper$1;,
        Lcom/htc/demoflopackageinstaller/ApkInstallHelper$DemoFloInstalledObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DFPI"

.field private static mContext:Landroid/content/Context;

.field private static mInstallFoldar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mContext:Landroid/content/Context;

    .line 21
    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mInstallFoldar:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mInstallFoldar:Ljava/lang/String;

    return-object v0
.end method

.method static checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    .local v3, myPackageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 87
    .local v2, myPackageInfo:Landroid/content/pm/PackageInfo;
    const-string v4, "DFPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is installed in the device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v0, 0x1

    .line 94
    .end local v2           #myPackageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v1

    .line 92
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DFPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not installed in the device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static checkUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"
    .parameter "packageUID"
    .parameter "strDemoFolder"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, bResult:Z
    new-instance v1, Lcom/htc/demoflopackageinstaller/PackageInfoHelper;

    invoke-direct {v1}, Lcom/htc/demoflopackageinstaller/PackageInfoHelper;-><init>()V

    .line 100
    .local v1, myPackageInfoHelper:Lcom/htc/demoflopackageinstaller/PackageInfoHelper;
    invoke-virtual {v1, p2, p0}, Lcom/htc/demoflopackageinstaller/PackageInfoHelper;->getUID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, strUID:Ljava/lang/String;
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s uid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is the same"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not the same"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static installApk(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageUri"
    .parameter "packageName"

    .prologue
    .line 58
    const-string v3, "DFPI"

    const-string v4, "installApk"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-nez p0, :cond_0

    .line 61
    const-string v3, "DFPI"

    const-string v4, "invalid context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, installFlags:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 68
    .local v2, pm:Landroid/content/pm/PackageManager;
    or-int/lit8 v1, v1, 0x2

    .line 71
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replacing package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Lcom/htc/demoflopackageinstaller/ApkInstallHelper$DemoFloInstalledObserver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper$DemoFloInstalledObserver;-><init>(Lcom/htc/demoflopackageinstaller/ApkInstallHelper$1;)V

    const-string v4, "HTCInstaller"

    invoke-virtual {v2, p1, v3, v1, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static silentInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "strApkFileName"
    .parameter "strApkPackage"
    .parameter "strInstallFoldar"

    .prologue
    .line 115
    sput-object p0, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mContext:Landroid/content/Context;

    .line 116
    sput-object p3, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->mInstallFoldar:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "DFPI"

    const-string v2, "silentInstall()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v1, "DFPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->installApk(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
