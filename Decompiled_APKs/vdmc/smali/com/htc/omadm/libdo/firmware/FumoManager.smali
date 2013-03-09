.class public Lcom/htc/omadm/libdo/firmware/FumoManager;
.super Ljava/lang/Object;
.source "FumoManager.java"


# static fields
.field private static CACHE_FOLDER:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "FumoManager"

.field private static PACKAGE_FOLDER:Ljava/lang/String;

.field private static mInstance:Lcom/htc/omadm/libdo/firmware/FumoManager;


# instance fields
.field private fileInputOutput:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mContext:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->fileInputOutput:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    .line 40
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->CACHE_FOLDER:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static CheckUpdateResult()I
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->checkFUMOresult()I

    move-result v0

    return v0
.end method

.method public static DeletePackage()Z
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, pkg:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    const/4 v1, 0x1

    .line 96
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/firmware/FumoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mInstance:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 45
    return-void
.end method

.method public static VerifyPackage()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/htc/omadm/libdo/firmware/UpdateVerifier;->verifyPackage(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public static WriteData(I[BI)Z
    .locals 7
    .parameter "offset"
    .parameter "buff"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    .line 75
    move v2, p0

    .line 76
    .local v2, fileOffset:I
    const/4 v2, 0x0

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/16 v5, 0x4000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 79
    .local v0, buf:Ljava/io/BufferedOutputStream;
    invoke-virtual {v0, p1, v2, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 80
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v0, 0x0

    .line 86
    .end local v0           #buf:Ljava/io/BufferedOutputStream;
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "FumoManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mInstance:Lcom/htc/omadm/libdo/firmware/FumoManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/firmware/FumoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mInstance:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mInstance:Lcom/htc/omadm/libdo/firmware/FumoManager;

    return-object v0
.end method


# virtual methods
.method public CheckBatteryLevel()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/htc/omadm/libdo/status/StateTracker;->getSingleton()Lcom/htc/omadm/libdo/status/StateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/status/StateTracker;->getBatteryLevel()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CreateFumoFolder(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/omadm/libdo/firmware/FumoManager;->CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FumoManager;->PACKAGE_FOLDER:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->fileInputOutput:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    sget-object v1, Lcom/htc/omadm/libdo/firmware/FumoManager;->PACKAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->createPackageFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public DeleteDLfile()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.redbend.vdmc/files/dlresume.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, pkg:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "FumoManager"

    const-string v2, "/data/data/com.redbend.vdmc/files/dlresume.dat cant delete!"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v1, "FumoManager"

    const-string v2, "/data/data/com.redbend.vdmc/files/dlresume.dat delete!"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "FumoManager"

    const-string v2, "/data/data/com.redbend.vdmc/files/dlresume.dat not exist"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetMaxStorageSize()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->fileInputOutput:Lcom/htc/omadm/libdo/firmware/FileInputOutput;

    sget-object v1, Lcom/htc/omadm/libdo/firmware/FumoManager;->PACKAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/firmware/FileInputOutput;->HTC_FumoGetMaxPkgSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public StartFirmwareUpdate()V
    .locals 7

    .prologue
    .line 115
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/htc/omadm/libdo/firmware/FumoManager;->setFumoDone(I)V

    .line 116
    const-string v4, "FumoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update firmware:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/htc/omadm/prop/PropertyFumo;->FUMO_PACKAGE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/htc/omadm/prop/PropertyFumo;->ACTION_FOTA_INSTALL:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v1, install:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 120
    .local v2, mInstallIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #install:Landroid/content/Intent;
    .end local v2           #mInstallIntent:Landroid/app/PendingIntent;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFumoDone()I
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "omadm_has_fumo_done"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFumoDone(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/firmware/FumoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "omadm_has_fumo_done"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
