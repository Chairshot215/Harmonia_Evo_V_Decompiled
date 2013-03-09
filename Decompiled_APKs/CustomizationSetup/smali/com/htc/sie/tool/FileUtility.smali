.class public Lcom/htc/sie/tool/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 19
    .local v1, srcChannel:Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 20
    .local v0, dstChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 21
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 22
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 23
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 7
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    .line 44
    new-array v0, v5, [B

    .line 46
    .local v0, buffer:[B
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 47
    .local v2, in:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 48
    .local v4, out:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 49
    .local v1, count:I
    const/4 v3, 0x0

    .line 51
    .local v3, length:I
    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {v2, v0, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 53
    add-int/2addr v1, v3

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    :goto_2
    return v1

    .line 57
    :catchall_0
    move-exception v5

    .line 58
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 62
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 64
    :goto_4
    throw v5

    .line 59
    :catch_0
    move-exception v5

    goto :goto_1

    .line 63
    :catch_1
    move-exception v5

    goto :goto_2

    .line 59
    :catch_2
    move-exception v6

    goto :goto_3

    .line 63
    :catch_3
    move-exception v6

    goto :goto_4
.end method

.method public static deleteFolder(Ljava/io/File;Z)Z
    .locals 7
    .parameter "path"
    .parameter "deleteroot"

    .prologue
    const/4 v5, 0x1

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 27
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 28
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    invoke-static {v1, v5}, Lcom/htc/sie/tool/FileUtility;->deleteFolder(Ljava/io/File;Z)Z

    .line 27
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 36
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    .line 39
    :cond_2
    return v5
.end method
