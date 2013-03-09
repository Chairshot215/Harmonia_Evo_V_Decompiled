.class public Lcom/htc/store/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field private static final AUDIO_FILE_EXT:Ljava/lang/String; = ".mp3"

.field private static final EXTERNAL_STORAGE_SPACE_SAFETY_THRESHOLD:J = 0x1e8480L

.field private static final IMAGE_FILE_EXT:Ljava/lang/String; = ".png"

.field private static final IMAGE_FILE_LANDSCAPE_EXT:Ljava/lang/String; = "_l.png"

.field private static final IMAGE_FILE_PORTRAIT_EXT:Ljava/lang/String; = "_p.png"

.field private static final INTERNAL_STORAGE_SPACE_SAFETY_THRESHOLD:J = 0x500000L

.field private static final PACKAGE_FILE_EXT:Ljava/lang/String; = ".apk"

.field public static final STORAGE_DATA:I = 0x0

.field private static final STORAGE_DATA_CATEGORIES_DIR_NAME:Ljava/lang/String; = "categories"

.field private static final STORAGE_DATA_FEATURED_DIR_NAME:Ljava/lang/String; = "featureds"

.field private static final STORAGE_DATA_ICON_DIR_NAME:Ljava/lang/String; = "icons"

.field private static final STORAGE_DATA_IMAGE_DIR_NAME:Ljava/lang/String; = "images"

.field private static final STORAGE_DATA_ITEM_DIR_NAME:Ljava/lang/String; = "items"

.field private static final STORAGE_DATA_PREVIEW_DIR_NAME:Ljava/lang/String; = "previews"

.field public static final STORAGE_DATA_PROMO_DIR_NAME:Ljava/lang/String; = "promos"

.field private static final STORAGE_DATA_ROOT:Ljava/lang/String; = null

.field private static final STORAGE_DATA_SHARED_DIR_NAME:Ljava/lang/String; = "shared"

.field private static final STORAGE_DATA_SNAPSHOT_DIR_NAME:Ljava/lang/String; = "previews"

.field private static final STORAGE_DATA_TAB_DIR_NAME:Ljava/lang/String; = "tabs"

.field public static final STORAGE_EXTERNAL:I = 0x1

.field private static final STORAGE_SPACE_UNAVAILABLE:J = -0x1L

.field public static final STRING_INTERNAL_STORAGE_SPACE_SAFETY_THRESHOLD:Ljava/lang/String; = "5MB"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEMP_PREFIX:Ljava/lang/String; = "temp_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/htc/store/util/StorageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.htc.store"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v9

    .line 198
    :goto_0
    return v2

    .line 168
    :cond_1
    const/4 v1, 0x0

    .line 169
    .local v1, in:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 172
    .local v0, out:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 173
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 174
    .local v7, outf:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 175
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 176
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    if-eqz v1, :cond_2

    .line 183
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 187
    :goto_1
    const/4 v1, 0x0

    .line 189
    :cond_2
    if-eqz v0, :cond_3

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 195
    :goto_2
    const/4 v0, 0x0

    :cond_3
    move v2, v8

    .line 198
    goto :goto_0

    .line 177
    .end local v7           #outf:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 178
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    if-eqz v1, :cond_4

    .line 183
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 187
    .end local v6           #e:Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    .line 189
    :cond_4
    if-eqz v0, :cond_5

    .line 191
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 195
    :goto_4
    const/4 v0, 0x0

    :cond_5
    move v2, v9

    .line 179
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    .line 183
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 187
    :goto_5
    const/4 v1, 0x0

    .line 189
    :cond_6
    if-eqz v0, :cond_7

    .line 191
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 195
    :goto_6
    const/4 v0, 0x0

    .line 181
    :cond_7
    throw v2

    .line 184
    :catch_1
    move-exception v6

    .line 185
    .local v6, e:Ljava/io/IOException;
    sget-object v3, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 192
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 193
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v3, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 184
    .local v6, e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 185
    .local v6, e:Ljava/io/IOException;
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 192
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 193
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 184
    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #outf:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    .line 185
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 192
    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 193
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v6, v3, v8

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "src"
    .parameter "target"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 253
    :cond_0
    return v0
.end method

.method public static getAudioFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "onlineId"
    .parameter "contentType"

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/store/util/StorageUtils;->getAudioFolerPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioFolerPath(I)Ljava/lang/String;
    .locals 7
    .parameter "contentType"

    .prologue
    const/4 v6, 0x1

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, result:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/store/util/StorageUtils;->getStorageRootPath(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, storageRootPath:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 559
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "wrong type "

    aput-object v5, v3, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :goto_0
    return-object v0

    .line 550
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Alarms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    goto :goto_0

    .line 553
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Notifications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    goto :goto_0

    .line 556
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Ringtones"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCachedFileName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/htc/store/util/StorageUtils;->getCachedFileNamePrefix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedFileNamePrefix(J)Ljava/lang/String;
    .locals 2
    .parameter "category"

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedItemIconFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "onlineId"

    .prologue
    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getCategoryDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCategoryDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "categories"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :cond_0
    return-object v0
.end method

.method public static getCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getCategoryDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, dir:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 415
    :cond_0
    if-eqz v0, :cond_1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    :cond_1
    return-object v1
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getStorageRootPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeaturedDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getFeaturedDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFeaturedDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "featureds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :cond_0
    return-object v0
.end method

.method public static getFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 512
    const/4 v1, 0x0

    .line 513
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getFeaturedDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    :cond_0
    return-object v1
.end method

.method public static getFileSizeLong(Ljava/lang/String;)J
    .locals 14
    .parameter "strSize"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    sget-object v10, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v11, "getFileSizeLong - the string of size is null"

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-wide v8

    .line 111
    :cond_0
    const-wide/32 v3, 0x100000

    .line 112
    .local v3, m:J
    const-wide/16 v1, 0x400

    .line 113
    .local v1, k:J
    const/4 v7, 0x0

    .line 114
    .local v7, strUnit:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "kb"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, index:I
    if-eq v0, v12, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 116
    invoke-virtual {p0, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 117
    const-string v7, "kb"

    .line 120
    :cond_1
    if-nez v7, :cond_2

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mb"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-eq v0, v12, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 123
    invoke-virtual {p0, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 124
    const-string v7, "mb"

    .line 131
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 132
    .local v5, size:D
    const-string v8, "kb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    double-to-long v8, v5

    mul-long/2addr v8, v1

    goto :goto_0

    .line 126
    .end local v5           #size:D
    :cond_3
    sget-object v10, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const-string v11, "getFileSizeLong - can not get size"

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .restart local v5       #size:D
    :cond_4
    double-to-long v8, v5

    mul-long/2addr v8, v3

    goto :goto_0
.end method

.method public static getFileSizeString(D)Ljava/lang/String;
    .locals 10
    .parameter "size"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 140
    const-string v4, ""

    .line 141
    .local v4, result:Ljava/lang/String;
    const-wide/high16 v2, 0x4130

    .line 142
    .local v2, m:D
    const-wide/high16 v0, 0x4090

    .line 143
    .local v0, k:D
    cmpl-double v5, p0, v2

    if-lez v5, :cond_0

    .line 144
    const-string v5, "%.2f MB"

    new-array v6, v6, [Ljava/lang/Object;

    div-double v7, p0, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 150
    :goto_0
    return-object v4

    .line 145
    :cond_0
    cmpl-double v5, p0, v0

    if-lez v5, :cond_1

    .line 146
    const-string v5, "%.2f KB"

    new-array v6, v6, [Ljava/lang/Object;

    div-double v7, p0, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 148
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getFileSizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 154
    const-string v1, ""

    .line 155
    .local v1, result:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v2, v4

    .line 158
    .local v2, size:D
    invoke-static {v2, v3}, Lcom/htc/store/util/StorageUtils;->getFileSizeString(D)Ljava/lang/String;

    move-result-object v1

    .line 160
    .end local v2           #size:D
    :cond_0
    return-object v1
.end method

.method public static getItemIconDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getItemIconDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemIconDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icons"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :cond_0
    return-object v0
.end method

.method public static getItemIconFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "onlineId"

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getItemIconDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/store/util/StorageUtils;->getCachedItemIconFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    :cond_0
    return-object v1
.end method

.method public static getItemPreviewDirectoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "previews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :cond_0
    return-object v0
.end method

.method public static getItemPreviewLandscapeFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "onlineId"
    .parameter "index"

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getItemPreviewDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_l.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_0
    return-object v1
.end method

.method public static getItemPreviewPortraitFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "onlineId"
    .parameter "index"

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getItemPreviewDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_p.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_0
    return-object v1
.end method

.method public static getItemSnapshotDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getItemSnapshotDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemSnapshotDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "previews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :cond_0
    return-object v0
.end method

.method public static getItemSnapshotFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "onlineId"
    .parameter "index"

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getItemSnapshotDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_0
    return-object v1
.end method

.method public static getPromoDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getPromoDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPromoDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "promos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 370
    :cond_0
    return-object v0
.end method

.method public static getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getPromoDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_0
    return-object v1
.end method

.method public static getSharedImageDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->getSharedImageDirectoryPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedImageDirectoryPath(Z)Ljava/lang/String;
    .locals 3
    .parameter "createFolder"

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :cond_0
    return-object v0
.end method

.method private static getSharedImageFileName(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedImageFilePath(J)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getSharedImageDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getStorageFreeSpace(I)J
    .locals 14
    .parameter "storageType"

    .prologue
    .line 70
    const-class v10, Lcom/htc/store/util/StorageUtils;

    monitor-enter v10

    const-wide/16 v6, -0x1

    .line 71
    .local v6, result:J
    :try_start_0
    invoke-static {p0}, Lcom/htc/store/util/StorageUtils;->isStorageAvailable(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    invoke-static {p0}, Lcom/htc/store/util/StorageUtils;->getStorageRootPath(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, path:Ljava/lang/String;
    sget-object v9, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Storage available: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v9, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Storage path: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v9, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 77
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 78
    .local v2, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    int-to-long v0, v9

    .line 79
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 84
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #path:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v9, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Free space: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    monitor-exit v10

    return-wide v6

    .line 80
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 81
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v9, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 70
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #path:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private static getStorageRootPath(I)Ljava/lang/String;
    .locals 2
    .parameter "storageType"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, path:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 91
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTabImageDirectoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/store/util/StorageUtils;->STORAGE_DATA_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/store/util/StorageUtils;->makeDirectoryReady(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 362
    :cond_0
    return-object v0
.end method

.method public static getTabImageFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "status"
    .parameter "order"
    .parameter "onlineID"

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getTabImageDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resource_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    return-object v0
.end method

.method public static getTemporaryCategoryIconFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 533
    const/4 v1, 0x0

    .line 534
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getCategoryDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_0
    return-object v1
.end method

.method public static getTemporaryFeaturedIconFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getFeaturedDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    :cond_0
    return-object v1
.end method

.method public static getTemporaryPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "category"
    .parameter "onlineId"

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getPromoDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, p2}, Lcom/htc/store/util/StorageUtils;->getCachedFileName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    :cond_0
    return-object v1
.end method

.method public static getTemporarySharedImageFilePath(J)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->getSharedImageDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, dir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/htc/store/util/StorageUtils;->getSharedImageFileName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_0
    return-object v1
.end method

.method public static isExisted(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 673
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 677
    :goto_0
    return v1

    .line 676
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 57
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStorageAvailable(I)Z
    .locals 2
    .parameter "storageType"

    .prologue
    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, result:Z
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 51
    invoke-static {}, Lcom/htc/store/util/StorageUtils;->isExternalStorageAvailable()Z

    move-result v0

    .line 53
    :cond_0
    return v0
.end method

.method public static declared-synchronized isStorageFreeSpaceEnough(IJ)Z
    .locals 8
    .parameter "storageType"
    .parameter "fileSize"

    .prologue
    .line 61
    const-class v3, Lcom/htc/store/util/StorageUtils;

    monitor-enter v3

    const-wide/16 v0, 0x0

    .line 62
    .local v0, threshold:J
    if-nez p0, :cond_0

    .line 63
    const-wide/32 v0, 0x500000

    .line 66
    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/htc/store/util/StorageUtils;->getStorageFreeSpace(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v3

    return v2

    .line 65
    :cond_0
    const-wide/16 v4, 0x2

    mul-long/2addr v4, p1

    const-wide/32 v6, 0x1e8480

    add-long v0, v4, v6

    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static makeDirectoryReady(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 592
    const/4 v1, 0x1

    .line 593
    .local v1, result:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 596
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 597
    const/4 v1, 0x0

    .line 604
    :cond_0
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v2

    .line 600
    .local v2, se:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    .line 601
    sget-object v3, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 682
    const/4 v2, 0x0

    .line 683
    .local v2, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 691
    .end local v1           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static moveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "contentUri"
    .parameter "src"
    .parameter "target"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, result:Z
    invoke-static {p2, p3}, Lcom/htc/store/util/StorageUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "copy file "

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    const-string v3, " successfully"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {p0, p1}, Lcom/htc/store/util/StorageUtils;->removeFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "delete file "

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    const-string v3, " successfully"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    const/4 v0, 0x1

    .line 226
    :goto_1
    return v0

    .line 217
    :cond_0
    sget-object v1, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "delete file failed"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_1
    sget-object v1, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "copy file "

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    const-string v3, "failed, remove it"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {p0, p1}, Lcom/htc/store/util/StorageUtils;->removeFile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 223
    invoke-static {p3}, Lcom/htc/store/util/StorageUtils;->removeFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "src"
    .parameter "target"

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 245
    :cond_0
    return v0
.end method

.method public static removeCachedImage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "rootPath"
    .parameter "prefix"

    .prologue
    .line 653
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 655
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, fileNames:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 657
    const/4 v2, 0x0

    .line 658
    .local v2, f:Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 659
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 660
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 661
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 662
    const/4 v7, 0x0

    .line 669
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fileNames:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :goto_1
    return v7

    .line 658
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fileNames:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 669
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fileNames:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static removeDirectory(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 608
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 610
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, fileNames:[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 612
    const/4 v2, 0x0

    .line 613
    .local v2, f:Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v0, v4

    .line 614
    .local v6, s:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    .restart local v2       #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    .line 625
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fileNames:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 613
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fileNames:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 625
    .end local v3           #fileNames:[Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static removeFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    .line 237
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 232
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "remove file failed"

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    sget-object v2, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 629
    const/4 v2, 0x0

    .line 630
    .local v2, result:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const/4 v2, 0x1

    .line 641
    :cond_0
    :goto_0
    return v2

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/util/StorageUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "remove file "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    const-string v6, " failed"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized touch(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 99
    const-class v2, Lcom/htc/store/util/StorageUtils;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, folder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v2

    return-void

    .line 99
    .end local v0           #folder:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
