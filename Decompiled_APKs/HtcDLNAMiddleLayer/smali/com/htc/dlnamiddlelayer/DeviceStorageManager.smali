.class public Lcom/htc/dlnamiddlelayer/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field public static final FOLDER_CAMERA:Ljava/lang/String; = "/dcim"

.field public static final FOLDER_THUMBNAIL:Ljava/lang/String; = "/.pushthumbnails"

.field private static MIN_SPACE_DIV_BLOCK_SIZE:D = 0.0

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field private static m_szExternalCameraPath:Ljava/lang/String;

.field private static final m_szExternalStoragePath:Ljava/lang/String;

.field private static m_szExternalStorageState:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneCameraPath:Ljava/lang/String;

.field private static final m_szPhoneStoragePath:Ljava/lang/String;

.field private static m_szPhoneStorageState:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static stat:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    .line 10
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    .line 15
    sput-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 16
    sput-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 137
    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    .line 138
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->stat:Landroid/os/StatFs;

    return-void

    .line 10
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    .line 36
    :cond_0
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 107
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 109
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 111
    :cond_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 113
    return-object v0
.end method

.method public static getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.pushthumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 28
    :cond_0
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dcim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    .line 57
    :cond_0
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneCameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageState(Z)Ljava/lang/String;
    .locals 1
    .parameter "bRefresh"

    .prologue
    .line 89
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    .line 92
    :cond_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneStorageState:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.pushthumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 49
    :cond_0
    sget-object v0, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageReady(ZZ)Z
    .locals 3
    .parameter "bRefresh"
    .parameter "requireWriteAccess"

    .prologue
    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_1

    .line 120
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    if-eqz p0, :cond_2

    .line 124
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    .line 127
    :cond_2
    sget-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneStorageReady(Z)Z
    .locals 2
    .parameter "requireWriteAccess"

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getPhoneStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isStorageMediaMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 97
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStorageReady(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "state"
    .parameter "requireWriteAccess"
    .parameter "path"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 83
    .end local v1           #directory:Ljava/io/File;
    :cond_0
    :goto_0
    return v0

    .line 80
    .restart local v1       #directory:Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStorageSpaceAvailable()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, available:Z
    :try_start_0
    sget-object v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->stat:Landroid/os/StatFs;

    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 147
    sget-object v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->stat:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    .line 148
    .local v2, nAvailableBlock:I
    sget-object v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->stat:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    .line 150
    .local v3, nBlockSize:I
    sget-wide v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    .line 152
    if-lez v3, :cond_3

    .line 155
    const-wide/32 v4, 0x100000

    int-to-long v6, v3

    div-long/2addr v4, v6

    long-to-double v4, v4

    sput-wide v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    .line 161
    :cond_0
    :goto_0
    sget-wide v4, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    cmpl-double v4, v4, v8

    if-ltz v4, :cond_1

    .line 162
    int-to-double v4, v2

    sget-wide v6, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->MIN_SPACE_DIV_BLOCK_SIZE:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    const/4 v0, 0x1

    .line 170
    .end local v2           #nAvailableBlock:I
    .end local v3           #nBlockSize:I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 171
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "[isStorageSpaceAvailable] Storage space is less than 1M"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    return v0

    .line 158
    .restart local v2       #nAvailableBlock:I
    .restart local v3       #nBlockSize:I
    :cond_3
    :try_start_1
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isStorageSpaceAvailable] Storage blockSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    .end local v2           #nAvailableBlock:I
    .end local v3           #nBlockSize:I
    :catch_0
    move-exception v1

    .line 166
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[externalStorageChecker] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #nAvailableBlock:I
    .restart local v3       #nBlockSize:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
