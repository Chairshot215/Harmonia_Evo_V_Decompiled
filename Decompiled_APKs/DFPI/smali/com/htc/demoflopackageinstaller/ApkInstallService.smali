.class public Lcom/htc/demoflopackageinstaller/ApkInstallService;
.super Landroid/app/IntentService;
.source "ApkInstallService.java"


# static fields
.field private static final FOLDER_DEMO:Ljava/lang/String; = "/demo"

.field private static final FOLDER_DOWNLOAD:Ljava/lang/String; = "/download"

.field private static final FOLDER_M10:Ljava/lang/String; = "/m10"

.field private static final FOLDER_PIC:Ljava/lang/String; = "/pic"

.field private static final SD_M10_PATH:Ljava/lang/String; = null

.field private static final SD_M10_PATH_EXT:Ljava/lang/String; = null

.field private static final SD_PATH_EXT:Ljava/lang/String; = null

.field private static final SD_PIC_PATH:Ljava/lang/String; = null

.field private static final SD_PIC_PATH_EXT:Ljava/lang/String; = null

.field private static final SERVICE_NAME:Ljava/lang/String; = "ApkInstallService"

.field private static final TAG:Ljava/lang/String; = "DFPI.ApkInstallService"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PATH_EXT:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PIC_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PATH_EXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PIC_PATH_EXT:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_M10_PATH:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PATH_EXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_M10_PATH_EXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "ApkInstallService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private checkAndInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "apkName"
    .parameter "uid"

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, folder:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/demo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, tempFolder:Ljava/lang/String;
    invoke-direct {p0, v1, p3}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->checkFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    move-object v0, v1

    .line 182
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 183
    const-string v2, "DFPI.ApkInstallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in sd card or phone storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 176
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PATH_EXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/demo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-direct {p0, v1, p3}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->checkFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    move-object v0, v1

    goto :goto_0

    .line 187
    :cond_3
    invoke-static {p2, p1}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->checkFileInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    if-eqz p4, :cond_4

    invoke-static {p3, p4, v0}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->checkUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->installApk(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "folder"
    .parameter "packageFileName"

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method private clearDirectory(Ljava/lang/String;)V
    .locals 10
    .parameter "path"

    .prologue
    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, directory:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 115
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 116
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 117
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->clearDirectory(Ljava/lang/String;)V

    .line 120
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v2

    .line 125
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DFPI.ApkInstallService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear directory ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 143
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 149
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 150
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 151
    .local v1, fileName:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v5}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #fileName:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 138
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 139
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->setFilePermissions(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private copyFilesForLockScreen(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "force"

    .prologue
    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/pic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, LOCKSCREEN_PATH_PIC:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/m10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, LOCKSCREEN_PATH_M10:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 72
    invoke-direct {p0, v1}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->clearDirectory(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->clearDirectory(Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, picDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->setFilePermissions(Ljava/lang/String;)V

    .line 78
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PIC_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v3, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PIC_PATH:Ljava/lang/String;

    .line 79
    .local v3, PIC_PATH:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v5}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 81
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, m10Dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->setFilePermissions(Ljava/lang/String;)V

    .line 83
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_M10_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v2, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_M10_PATH:Ljava/lang/String;

    .line 84
    .local v2, M10_PATH:Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v4}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 86
    return-void

    .line 78
    .end local v2           #M10_PATH:Ljava/lang/String;
    .end local v3           #PIC_PATH:Ljava/lang/String;
    .end local v4           #m10Dir:Ljava/io/File;
    :cond_1
    sget-object v3, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_PIC_PATH_EXT:Ljava/lang/String;

    goto :goto_0

    .line 83
    .restart local v3       #PIC_PATH:Ljava/lang/String;
    .restart local v4       #m10Dir:Ljava/io/File;
    :cond_2
    sget-object v2, Lcom/htc/demoflopackageinstaller/ApkInstallService;->SD_M10_PATH_EXT:Ljava/lang/String;

    goto :goto_1
.end method

.method private setFilePermissions(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    const/4 v1, -0x1

    .line 95
    const/16 v0, 0x1ff

    invoke-static {p1, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 98
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 42
    const-string v0, "DFPI.ApkInstallService"

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->copyFilesForLockScreen(Landroid/content/Context;Z)V

    .line 46
    const-string v0, "com.htc.DemoFLORecovery"

    const-string v1, "DemoRecovery.apk"

    const-string v2, "com.htc.rosie.uid.shared"

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->checkAndInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "com.htc.demoflo"

    const-string v1, "Demo.apk"

    const-string v2, "com.htc.bg.uid.shared"

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->checkAndInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "com.htc.idlescreen.demo"

    const-string v1, "idlescreen_demo.apk"

    const/4 v2, 0x0

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/htc/demoflopackageinstaller/ApkInstallService;->checkAndInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
