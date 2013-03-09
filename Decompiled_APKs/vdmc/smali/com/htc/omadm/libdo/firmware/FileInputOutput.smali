.class public Lcom/htc/omadm/libdo/firmware/FileInputOutput;
.super Ljava/lang/Object;
.source "FileInputOutput.java"


# static fields
.field public static final FUMO_CACHE_PREFERRED:I = 0x0

.field private static final FUMO_FILENAME:Ljava/lang/String; = "OTAPKG.zip"

.field private static final FUMO_FOLDER:Ljava/lang/String; = "fumo"

.field public static final FUMO_SDCARD_ONLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FileInputOutput"

.field public static directory:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mSelfInstance:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

.field public static path:Ljava/lang/String;


# instance fields
.field private FUMO_STORAGE_USAGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->directory:Ljava/lang/String;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->FUMO_STORAGE_USAGE:I

    .line 34
    sput-object p1, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/firmware/FileInputOutput;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->mSelfInstance:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/firmware/FileInputOutput;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->mSelfInstance:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    .line 39
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->mSelfInstance:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    return-object v0
.end method


# virtual methods
.method public HTC_FumoGetMaxPkgSize(Ljava/lang/String;)J
    .locals 12
    .parameter "path"

    .prologue
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .local v3, nMaxPkgSize:J
    move-object v6, p1

    .line 51
    .local v6, strFolder:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, strParent:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 55
    move-object v6, v7

    .line 57
    :cond_0
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get directory() parent path name = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 59
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5, v6}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 61
    .local v1, blockSize:I
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 62
    .local v0, availableBlocks:I
    int-to-long v8, v1

    int-to-long v10, v0

    mul-long v3, v8, v10

    .line 63
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "block size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; getAvailableBlocks() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; return maxSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0           #availableBlocks:I
    .end local v1           #blockSize:I
    .end local v2           #f:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    .end local v7           #strParent:Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 67
    :cond_1
    const-string v8, "FileInputOutput"

    const-string v9, "_Get_MaxPkgSize() : Since _Get_ImageFileDirectory() failed, no max package size returned!"

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public HTC_Open_File(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "filepath"

    .prologue
    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, tmpFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 119
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v3, "FileInputOutput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/high16 v3, 0x3800

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    if-eqz v1, :cond_0

    .line 128
    const-string v3, "FileInputOutput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "FileInputOutput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open ParcelFileDescriptor failed! e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createPackageFolder(Ljava/lang/String;)Z
    .locals 12
    .parameter "strPath"

    .prologue
    const/4 v8, 0x0

    .line 77
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v7, tmpFolder:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_TMP_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v6, tmpFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 80
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 82
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CreateImgFolder(\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\") Successed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v5, "com.redbend.vdmc"

    .line 91
    .local v5, strPkgname:Ljava/lang/String;
    sget-object v8, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 94
    .local v0, appinfo:Landroid/content/pm/ApplicationInfo;
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set permission: app="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v2, 0x1f9

    .line 96
    .local v2, filePermissions:I
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    .line 99
    .local v4, ret:I
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileUtils.setPermissions(777) return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v4

    .line 103
    const-string v8, "FileInputOutput"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileUtils.setPermissions(uid) return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #filePermissions:I
    .end local v4           #ret:I
    :goto_1
    const/4 v8, 0x1

    .line 112
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #strPkgname:Ljava/lang/String;
    :goto_2
    return v8

    .line 104
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #strPkgname:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "FileInputOutput"

    const-string v9, "package name is not found!"

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v8, "FileInputOutput"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #strPkgname:Ljava/lang/String;
    :cond_1
    const-string v9, "FileInputOutput"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CreateImgFolder(\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\") Failed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public setFUMOStorageUsage(I)V
    .locals 0
    .parameter "option"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->FUMO_STORAGE_USAGE:I

    .line 44
    return-void
.end method
