.class public Lcom/htc/reportagent/cache/EntryFile;
.super Ljava/lang/Object;
.source "EntryFile.java"


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mFileChangedListener:Lcom/htc/reportagent/cache/FileChangdListener;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/htc/reportagent/cache/FileChangdListener;)V
    .locals 2
    .parameter "file"
    .parameter "fileChangedListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/reportagent/util/UReportException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Lcom/htc/reportagent/util/UReportException;

    const-string v1, "EntryFile can\'t accept a null pointer of file"

    invoke-direct {v0, v1}, Lcom/htc/reportagent/util/UReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    .line 30
    iput-object p2, p0, Lcom/htc/reportagent/cache/EntryFile;->mFileChangedListener:Lcom/htc/reportagent/cache/FileChangdListener;

    .line 31
    return-void
.end method

.method public static writeNewFile(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "ctx"
    .parameter "logBuf"
    .parameter "tag"

    .prologue
    .line 71
    const-string v10, "logs"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 72
    .local v6, logFolder:Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/htc/reportagent/cache/LogCacheUtil;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, filePath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "store a new file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 77
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 79
    .local v8, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v10, 0x400

    invoke-direct {v1, v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 81
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v9, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 82
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .local v9, zos:Ljava/util/zip/ZipOutputStream;
    :try_start_3
    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v10, "file_entity"

    invoke-direct {v7, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 83
    .local v7, zentry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v9, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 84
    invoke-virtual {v9, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 85
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 86
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 94
    if-eqz v1, :cond_0

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 96
    :cond_0
    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 98
    :cond_1
    if-eqz v9, :cond_2

    .line 99
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 105
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #zentry:Ljava/util/zip/ZipEntry;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v10

    .line 100
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #zentry:Ljava/util/zip/ZipEntry;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 103
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 87
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #zentry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .line 88
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 96
    :cond_4
    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 98
    :cond_5
    if-eqz v8, :cond_3

    .line 99
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 100
    :catch_2
    move-exception v2

    .line 101
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 90
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 96
    :cond_6
    if-eqz v4, :cond_7

    .line 97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 98
    :cond_7
    if-eqz v8, :cond_3

    .line 99
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 100
    :catch_4
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 94
    :goto_3
    if-eqz v0, :cond_8

    .line 95
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 96
    :cond_8
    if-eqz v4, :cond_9

    .line 97
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 98
    :cond_9
    if-eqz v8, :cond_a

    .line 99
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 102
    :cond_a
    :goto_4
    throw v10

    .line 100
    :catch_5
    move-exception v2

    .line 101
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 93
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 89
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_8
    move-exception v2

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 87
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v8           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #zos:Ljava/util/zip/ZipOutputStream;
    :catch_b
    move-exception v2

    move-object v8, v9

    .end local v9           #zos:Ljava/util/zip/ZipOutputStream;
    .restart local v8       #zos:Ljava/util/zip/ZipOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static writeNewFileEx(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "ctx"
    .parameter "logBuf"
    .parameter "tag"

    .prologue
    .line 127
    const/4 v6, 0x0

    .line 129
    .local v6, ret:Z
    const-string v7, "logs"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 130
    .local v4, logFolder:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Lcom/htc/reportagent/cache/LogCacheUtil;->generateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, filePath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "store a new file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 136
    .local v5, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 137
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    :try_start_1
    sget-object v8, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v3, v7, v8}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v5

    .line 138
    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 140
    const/4 v6, 0x1

    .line 148
    :cond_0
    if-eqz v5, :cond_1

    .line 149
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 155
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 156
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    :goto_1
    return-object v7

    .line 150
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 153
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    if-eqz v5, :cond_2

    .line 149
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 145
    .local v0, e:Ljava/security/GeneralSecurityException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    if-eqz v5, :cond_2

    .line 149
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 150
    :catch_4
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 148
    :goto_4
    if-eqz v5, :cond_3

    .line 149
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 152
    :cond_3
    :goto_5
    throw v7

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 147
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 144
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 142
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/htc/reportagent/cache/EntryFile;->mFileChangedListener:Lcom/htc/reportagent/cache/FileChangdListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/reportagent/cache/EntryFile;->mFileChangedListener:Lcom/htc/reportagent/cache/FileChangdListener;

    iget-object v1, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/htc/reportagent/cache/FileChangdListener;->onDelete(Ljava/io/File;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    :cond_1
    return-void
.end method

.method public getFileInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v5, 0x400

    invoke-direct {v0, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v4, Lcom/htc/utils/ulog/io/SafeZipInputStream;

    invoke-direct {v4, v0}, Lcom/htc/utils/ulog/io/SafeZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .local v4, zis:Lcom/htc/utils/ulog/io/SafeZipInputStream;
    const/4 v3, 0x0

    .line 56
    .local v3, zEntry:Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lcom/htc/utils/ulog/io/SafeZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 57
    const-string v5, "file_entity"

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    .end local v4           #zis:Lcom/htc/utils/ulog/io/SafeZipInputStream;
    :goto_0
    return-object v4

    .line 60
    .restart local v4       #zis:Lcom/htc/utils/ulog/io/SafeZipInputStream;
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getFileInputStreamEx()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0           #fis:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 112
    .restart local v0       #fis:Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/htc/utils/ulog/io/LogStream;->isLogStream(Ljava/io/InputStream;)Z

    move-result v1

    .line 113
    .local v1, isLogStream:Z
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 115
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0           #fis:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 117
    .restart local v0       #fis:Ljava/io/FileInputStream;
    sget-object v2, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v0, v2}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/reportagent/cache/EntryFile;->getFileInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/reportagent/cache/EntryFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
