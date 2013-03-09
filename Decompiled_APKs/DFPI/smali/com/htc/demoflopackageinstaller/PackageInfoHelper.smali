.class public Lcom/htc/demoflopackageinstaller/PackageInfoHelper;
.super Ljava/lang/Object;
.source "PackageInfoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .parameter "uriPackage"

    .prologue
    const/4 v5, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 44
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 49
    const/4 v2, 0x0

    .line 56
    .end local v0           #archiveFilePath:Ljava/lang/String;
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #packageParser:Landroid/content/pm/PackageParser;
    .end local v4           #sourceFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v3

    .line 53
    .restart local v0       #archiveFilePath:Ljava/lang/String;
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #packageParser:Landroid/content/pm/PackageParser;
    .restart local v4       #sourceFile:Ljava/io/File;
    :cond_1
    const-string v5, "PIReceiver"

    const-string v6, "pkg is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getUID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strPath"
    .parameter "strFileName"

    .prologue
    .line 14
    const/4 v2, 0x0

    .line 15
    .local v2, strUID:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .local v0, fileTarget:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/demoflopackageinstaller/PackageInfoHelper;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 22
    .local v1, myPackageInfo:Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    .line 24
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 26
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 31
    .end local v0           #fileTarget:Ljava/io/File;
    .end local v1           #myPackageInfo:Landroid/content/pm/PackageParser$Package;
    :cond_0
    return-object v2
.end method
