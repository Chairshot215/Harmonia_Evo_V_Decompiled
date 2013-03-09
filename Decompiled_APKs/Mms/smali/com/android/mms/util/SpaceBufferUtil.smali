.class public Lcom/android/mms/util/SpaceBufferUtil;
.super Ljava/lang/Object;
.source "SpaceBufferUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceBufferUtil"

.field private static final bufferFileNameForMms:Ljava/lang/String; = "/data/data/com.android.mms/bufferFileForMms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBufferFile()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xc8000

    .line 20
    const-string v4, "SpaceBufferUtil"

    const-string v5, "> createBufferFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    const-string v4, "SpaceBufferUtil"

    const-string v5, "bufferFile: /data/data/com.android.mms/bufferFileForMms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/data/com.android.mms/bufferFileForMms"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, fileTempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 28
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->deleteBufferFile()V

    .line 30
    :cond_1
    const-string v4, "SpaceBufferUtil"

    const-string v5, "buffer file not found, create new one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .local v3, fos:Ljava/io/FileOutputStream;
    const v4, 0xc8000

    new-array v0, v4, [B

    .line 33
    .local v0, byteData:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 35
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0           #byteData:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    const-string v4, "SpaceBufferUtil"

    const-string v5, "< createBufferFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SpaceBufferUtil"

    const-string v5, "createBufferFile() Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteBufferFile()V
    .locals 4

    .prologue
    .line 47
    const-string v2, "SpaceBufferUtil"

    const-string v3, "> deleteBufferFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.mms/bufferFileForMms"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 52
    const-string v2, "SpaceBufferUtil"

    const-string v3, "delete buffer file success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    const-string v2, "SpaceBufferUtil"

    const-string v3, "< deleteBufferFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 54
    :cond_0
    :try_start_1
    const-string v2, "SpaceBufferUtil"

    const-string v3, "delete buffer file failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SpaceBufferUtil"

    const-string v3, "deleteBufferFile() Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v2, "SpaceBufferUtil"

    const-string v3, "buffer file doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static existBufferFile()Z
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, exist:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.mms/bufferFileForMms"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isLowStorage(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 95
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 97
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 99
    .local v2, blockSize:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 100
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_mms_max_size"

    const-string v8, "3"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, msgSizeLimit:I
    const-wide/high16 v7, 0x4004

    int-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-int v6, v7

    .line 107
    .local v6, storageLimit:I
    int-to-long v7, v2

    mul-long/2addr v7, v0

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 108
    const/4 v7, 0x1

    .line 110
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static isNoStorage(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 81
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    .line 83
    .local v0, availableBlocks:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 85
    .local v2, blockSize:I
    int-to-long v4, v2

    mul-long/2addr v4, v0

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 86
    const/4 v4, 0x1

    .line 88
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
