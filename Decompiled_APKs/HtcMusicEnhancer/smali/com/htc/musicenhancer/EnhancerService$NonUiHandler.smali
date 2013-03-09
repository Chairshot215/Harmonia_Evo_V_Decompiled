.class final Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;
.super Landroid/os/Handler;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method public constructor <init>(Lcom/htc/musicenhancer/EnhancerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    .line 1553
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1554
    return-void
.end method

.method private backupDatabase()V
    .locals 13

    .prologue
    .line 1775
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 1776
    .local v11, path:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1777
    const-string v2, "[EnhancerService]"

    const-string v3, "backupDatabase: path is null"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    invoke-static {v11}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v12

    .line 1782
    .local v12, volumeID:I
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music-external-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1787
    .local v8, dbName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2, v8}, Lcom/htc/musicenhancer/EnhancerService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1788
    .local v7, currentDb:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/.htcmusthumbs/com.htc.music.providers.albumarts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1791
    .local v6, backupDb:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1792
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1795
    :cond_2
    const/4 v1, 0x0

    .line 1796
    .local v1, srcChannel:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 1798
    .local v0, dstChannel:Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 1799
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1800
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1801
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succeed to backup database to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1808
    if-eqz v1, :cond_3

    .line 1809
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 1814
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 1815
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1816
    :catch_0
    move-exception v10

    .line 1817
    .local v10, ex:Ljava/io/IOException;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dstChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1802
    .end local v10           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 1803
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1808
    if-eqz v1, :cond_4

    .line 1809
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1814
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 1815
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1816
    :catch_2
    move-exception v10

    .line 1817
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dstChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1804
    .end local v10           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 1805
    .local v9, e:Ljava/io/IOException;
    :try_start_6
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferFrom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1808
    if-eqz v1, :cond_5

    .line 1809
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1814
    :cond_5
    :goto_4
    if-eqz v0, :cond_0

    .line 1815
    :try_start_8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1816
    :catch_4
    move-exception v10

    .line 1817
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dstChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1807
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1808
    if-eqz v1, :cond_6

    .line 1809
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1814
    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    .line 1815
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1807
    :cond_7
    :goto_6
    throw v2

    .line 1810
    :catch_5
    move-exception v9

    .line 1811
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srcChannel close io exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1816
    .end local v9           #e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 1817
    .restart local v10       #ex:Ljava/io/IOException;
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dstChannel close io exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1810
    .end local v10           #ex:Ljava/io/IOException;
    .local v9, e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v9

    .line 1811
    .local v9, e:Ljava/io/IOException;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1810
    :catch_8
    move-exception v9

    .line 1811
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1810
    .end local v9           #e:Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 1811
    .restart local v9       #e:Ljava/io/IOException;
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srcChannel close io exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private deleteUnusedAlbumArt()V
    .locals 13

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v1}, Lcom/htc/musicenhancer/EnhancerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1734
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1735
    const-string v1, "[EnhancerService]"

    const-string v2, "deleteUnusedAlbumArt: content resolver is null"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 1741
    .local v10, files:[Ljava/io/File;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1742
    .local v8, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-eqz v10, :cond_2

    array-length v1, v10

    if-ge v11, v1, :cond_2

    .line 1743
    aget-object v1, v10, v11

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1742
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1746
    :cond_2
    const/4 v6, 0x0

    .line 1748
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dl_data"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "dl_data_backup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1758
    :goto_2
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1759
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1760
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1763
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1751
    :catch_0
    move-exception v7

    .line 1752
    .local v7, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateEx in deleteUnusedAlbumArt. Ex =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1763
    .end local v7           #ex:Ljava/lang/IllegalStateException;
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1766
    :cond_5
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1767
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1768
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1769
    .local v9, filename:Ljava/lang/String;
    const-string v1, "[EnhancerService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting obsolete album art "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method private syncMdProvider()V
    .locals 19

    .prologue
    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1616
    .local v1, resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 1617
    const-string v2, "[EnhancerService]"

    const-string v3, "syncMdProvider: content resolver is null"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    const/16 v17, 0x0

    .line 1622
    .local v17, mdCursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 1623
    .local v13, dlCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1624
    .local v7, albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1628
    .local v9, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$2000()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1630
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-gtz v2, :cond_6

    .line 1703
    :cond_2
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1705
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_b

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_3
    :goto_1
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1714
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_c

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 1722
    throw v7

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_5
    if-eqz v9, :cond_0

    .line 1726
    throw v9

    .line 1727
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_3
    const/4 v9, 0x0

    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 1634
    :cond_6
    :try_start_3
    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$2100()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1636
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-gtz v2, :cond_b

    .line 1703
    :cond_7
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1705
    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_d

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_8
    :goto_4
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1714
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_e

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    .line 1722
    throw v7

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_a
    if-eqz v9, :cond_0

    .line 1726
    throw v9

    goto :goto_3

    .line 1640
    :cond_b
    :try_start_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1641
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v8, albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_7
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_13

    .line 1643
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local v10, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :try_start_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1645
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1651
    :cond_d
    const/4 v11, -0x1

    .line 1652
    .local v11, dlAlbumId:I
    const/16 v16, 0x0

    .line 1653
    .local v16, mdAlbumKey:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1654
    .local v12, dlAlbumKey:Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1656
    :cond_e
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1657
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1658
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #mdAlbumKey:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1659
    .restart local v16       #mdAlbumKey:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1661
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1662
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1663
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1669
    :cond_f
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1673
    :cond_10
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_14

    move-result v2

    if-gtz v2, :cond_17

    .line 1703
    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1705
    :try_start_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_f

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_11
    :goto_7
    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1714
    :try_start_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_10

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_12
    :goto_8
    if-eqz v8, :cond_28

    .line 1722
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_9
    if-eqz v10, :cond_26

    .line 1726
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_3

    .line 1667
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_13
    :try_start_b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_14

    goto :goto_6

    .line 1690
    .end local v11           #dlAlbumId:I
    .end local v12           #dlAlbumKey:Ljava/lang/String;
    .end local v16           #mdAlbumKey:Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v9, v10

    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v7, v8

    .line 1691
    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v14, e:Ljava/lang/IllegalStateException;
    :goto_a
    :try_start_c
    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1692
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1703
    if-eqz v17, :cond_14

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1705
    :try_start_d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    .line 1706
    const/16 v17, 0x0

    .line 1712
    .end local v14           #e:Ljava/lang/IllegalStateException;
    :cond_14
    :goto_b
    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1714
    :try_start_e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_15
    :goto_c
    if-eqz v7, :cond_16

    .line 1722
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_16
    if-eqz v9, :cond_0

    .line 1726
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_3

    .line 1677
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v11       #dlAlbumId:I
    .restart local v12       #dlAlbumKey:Ljava/lang/String;
    .restart local v16       #mdAlbumKey:Ljava/lang/String;
    :cond_17
    :try_start_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1678
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v2, "dl_album_id IN ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1681
    .local v15, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_18
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1682
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1684
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_f} :catch_14

    goto :goto_d

    .line 1694
    .end local v11           #dlAlbumId:I
    .end local v12           #dlAlbumKey:Ljava/lang/String;
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16           #mdAlbumKey:Ljava/lang/String;
    .end local v18           #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v14

    move-object v9, v10

    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v7, v8

    .line 1695
    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    :goto_e
    :try_start_10
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1696
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1703
    if-eqz v17, :cond_19

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1705
    :try_start_11
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_19
    :goto_f
    if-eqz v13, :cond_1a

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1714
    :try_start_12
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_1a
    :goto_10
    if-eqz v7, :cond_1b

    .line 1722
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_1b
    if-eqz v9, :cond_0

    .line 1726
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_3

    .line 1687
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v11       #dlAlbumId:I
    .restart local v12       #dlAlbumKey:Ljava/lang/String;
    .restart local v15       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v16       #mdAlbumKey:Ljava/lang/String;
    .restart local v18       #where:Ljava/lang/StringBuilder;
    :cond_1c
    :try_start_13
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1688
    const-string v2, "[EnhancerService]"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_13} :catch_14

    .line 1703
    if-eqz v17, :cond_1d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1705
    :try_start_14
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_11

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_1d
    :goto_11
    if-eqz v13, :cond_1e

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1714
    :try_start_15
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_12

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_1e
    :goto_12
    if-eqz v8, :cond_27

    .line 1722
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_13
    if-eqz v10, :cond_26

    .line 1726
    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_3

    .line 1698
    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v11           #dlAlbumId:I
    .end local v12           #dlAlbumKey:Ljava/lang/String;
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16           #mdAlbumKey:Ljava/lang/String;
    .end local v18           #where:Ljava/lang/StringBuilder;
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v14

    .line 1699
    .local v14, e:Ljava/lang/UnsupportedOperationException;
    :goto_14
    :try_start_16
    invoke-virtual {v14}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 1700
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1703
    if-eqz v17, :cond_1f

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1705
    :try_start_17
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_9

    .line 1706
    const/16 v17, 0x0

    .line 1712
    .end local v14           #e:Ljava/lang/UnsupportedOperationException;
    :cond_1f
    :goto_15
    if-eqz v13, :cond_20

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1714
    :try_start_18
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_a

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_20
    :goto_16
    if-eqz v7, :cond_21

    .line 1722
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_21
    if-eqz v9, :cond_0

    .line 1726
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_3

    .line 1703
    :catchall_0
    move-exception v2

    :goto_17
    if-eqz v17, :cond_22

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1705
    :try_start_19
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3

    .line 1706
    const/16 v17, 0x0

    .line 1712
    :cond_22
    :goto_18
    if-eqz v13, :cond_23

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_23

    .line 1714
    :try_start_1a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4

    .line 1715
    const/4 v13, 0x0

    .line 1721
    :cond_23
    :goto_19
    if-eqz v7, :cond_24

    .line 1722
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1723
    const/4 v7, 0x0

    .line 1725
    :cond_24
    if-eqz v9, :cond_25

    .line 1726
    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1727
    const/4 v9, 0x0

    .line 1703
    :cond_25
    throw v2

    .line 1707
    :catch_3
    move-exception v14

    .line 1708
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncMdProvider: close mdCursor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncMdProvider: close dlCursor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 1707
    .local v14, e:Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v14

    .line 1708
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1707
    :catch_7
    move-exception v14

    .line 1708
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1716
    :catch_8
    move-exception v14

    .line 1717
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1707
    .local v14, e:Ljava/lang/UnsupportedOperationException;
    :catch_9
    move-exception v14

    .line 1708
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_a
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1707
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_b
    move-exception v14

    .line 1708
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_c
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1707
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_d
    move-exception v14

    .line 1708
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_e
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1707
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v11       #dlAlbumId:I
    .restart local v12       #dlAlbumKey:Ljava/lang/String;
    .restart local v16       #mdAlbumKey:Ljava/lang/String;
    :catch_f
    move-exception v14

    .line 1708
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_10
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1707
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v18       #where:Ljava/lang/StringBuilder;
    :catch_11
    move-exception v14

    .line 1708
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1709
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close mdCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1716
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catch_12
    move-exception v14

    .line 1717
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1718
    const-string v2, "[EnhancerService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncMdProvider: close dlCursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1703
    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v11           #dlAlbumId:I
    .end local v12           #dlAlbumKey:Ljava/lang/String;
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16           #mdAlbumKey:Ljava/lang/String;
    .end local v18           #where:Ljava/lang/StringBuilder;
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_17

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_17

    .line 1698
    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_13
    move-exception v14

    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_14

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_14
    move-exception v14

    move-object v9, v10

    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_14

    .line 1694
    :catch_15
    move-exception v14

    goto/16 :goto_e

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_16
    move-exception v14

    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_e

    .line 1690
    :catch_17
    move-exception v14

    goto/16 :goto_a

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_18
    move-exception v14

    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_a

    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v11       #dlAlbumId:I
    .restart local v12       #dlAlbumKey:Ljava/lang/String;
    .restart local v16       #mdAlbumKey:Ljava/lang/String;
    :cond_26
    move-object v9, v10

    .end local v10           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto/16 :goto_0

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v15       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v18       #where:Ljava/lang/StringBuilder;
    :cond_27
    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_13

    .end local v7           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v18           #where:Ljava/lang/StringBuilder;
    .restart local v8       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_28
    move-object v7, v8

    .end local v8           #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7       #albumIdKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto/16 :goto_9
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1558
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1606
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported msg.what"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :goto_0
    return-void

    .line 1560
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->syncMdProvider()V

    goto :goto_0

    .line 1564
    :sswitch_1
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1565
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1567
    :cond_0
    const-string v3, "[EnhancerService]"

    const-string v4, "mHandler is null"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1572
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/musicenhancer/DownloadAlbumInfo;

    .line 1573
    .local v1, downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    if-nez v1, :cond_1

    .line 1574
    const-string v3, "[EnhancerService]"

    const-string v4, "downloadAlbumInfo is null in MSG UPDATE ALBUM"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1577
    :cond_1
    const-string v3, "[EnhancerService]"

    const-string v4, "received MSG UPDATE_ALBUM"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mUpdateAlbumArt:Lcom/htc/musicenhancer/UpdateAlbumArt;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$1800(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/UpdateAlbumArt;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/musicenhancer/UpdateAlbumArt;->start(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    .line 1579
    const-string v3, "[EnhancerService]"

    const-string v4, "MSG_UPDATE_ALBUM, before synchronized"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    monitor-enter p0

    .line 1581
    :try_start_0
    const-string v3, "[EnhancerService]"

    const-string v4, "MSG_UPDATE_ALBUM, enter synchronized"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1583
    invoke-virtual {v1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1584
    .local v0, albumId:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1586
    .local v2, removeMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1590
    .end local v0           #albumId:Ljava/lang/Integer;
    .end local v2           #removeMsg:Landroid/os/Message;
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1588
    :cond_2
    :try_start_1
    const-string v3, "[EnhancerService]"

    const-string v4, "mHandler is null"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1594
    .end local v1           #downloadAlbumInfo:Lcom/htc/musicenhancer/DownloadAlbumInfo;
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->deleteUnusedAlbumArt()V

    goto/16 :goto_0

    .line 1598
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->backupDatabase()V

    goto/16 :goto_0

    .line 1602
    :sswitch_5
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$NonUiHandler;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->shutdownServiceDelay()V
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$1900(Lcom/htc/musicenhancer/EnhancerService;)V

    goto/16 :goto_0

    .line 1558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_5
    .end sparse-switch
.end method
