.class public Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;
.super Ljava/lang/Object;
.source "FirmwareUpdater.java"


# static fields
.field private static final FUMO_FILENAME:Ljava/lang/String; = "OTAPKG.zip"

.field private static FUMO_FILEPATH:Ljava/lang/String; = null

.field private static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FirmwareUpdater"

.field private static final UPDATE_CORRUPTED_PACKAGE_FAIL:I = 0x192

.field private static final UPDATE_INVALID_PACKAGE_FAIL:I = 0x194

.field private static final UPDATE_OPERATION_FAIL:I = 0x0

.field private static final UPDATE_WRONG_PACKAGE_FAIL:I = 0x193

.field private static mContext:Landroid/content/Context; = null

.field private static final newVersion:Ljava/lang/String; = "new_version"

.field private static final preVersion:Ljava/lang/String; = "pre_version"

.field private static final updateDate:Ljava/lang/String; = "update_date"

.field private static final updatePkgPath:Ljava/lang/String; = "file_path"

.field private static final updateResult:Ljava/lang/String; = "update_result"

.field public static updateResultPath:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->FUMO_FILEPATH:Ljava/lang/String;

    .line 88
    const-string v0, "/data/data/recovery/OMADM/update_result.log"

    sput-object v0, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater$1;-><init>(Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;)V

    iput-object v0, p0, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->mHandler:Landroid/os/Handler;

    .line 43
    sput-object p1, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static checkFUMOresult()I
    .locals 13

    .prologue
    const/4 v6, -0x1

    const/4 v12, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 102
    :try_start_0
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 103
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 105
    .local v3, in:Ljava/io/BufferedReader;
    const/4 v4, -0x2

    .line 106
    .local v4, result:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 107
    const-string v9, "FirmwareUpdater"

    invoke-static {v9, v0}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, fileds:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "update_result"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 110
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v5, v7

    .line 111
    .local v5, update_result:I
    :goto_1
    if-ne v4, v12, :cond_3

    .line 112
    move v4, v5

    .line 117
    .end local v5           #update_result:I
    :cond_1
    :goto_2
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "file_path"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 118
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CACHE:fumo/OTAPKG.zip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/cache/fumo/OTAPKG.zip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 122
    const-string v9, "FirmwareUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTC Fota case:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cache/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "fumo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "OTAPKG.zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eq v4, v12, :cond_4

    .line 124
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_0

    :cond_2
    move v5, v8

    .line 110
    goto :goto_1

    .line 114
    .restart local v5       #update_result:I
    :cond_3
    add-int/2addr v4, v5

    goto :goto_2

    .line 126
    .end local v5           #update_result:I
    :cond_4
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 131
    .end local v2           #fileds:[Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 132
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/omadm/libdo/firmware/FumoManager;->setFumoDone(I)V

    .line 142
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #result:I
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    return v4

    .line 136
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    const-string v7, "FirmwareUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File is not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 137
    goto :goto_3

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "FirmwareUpdater"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 142
    goto :goto_3
.end method

.method private checkFile(Ljava/lang/String;)V
    .locals 4
    .parameter "filename"

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "FirmwareUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist. (delete it)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v1, "FirmwareUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z
    .locals 11
    .parameter "is"
    .parameter "fos"

    .prologue
    .line 161
    const/4 v6, 0x1

    .line 163
    .local v6, success:Z
    const/4 v4, 0x0

    .line 165
    .local v4, os:Ljava/io/BufferedOutputStream;
    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    .line 167
    .local v1, data:[B
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v5, p2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 168
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .local v5, os:Ljava/io/BufferedOutputStream;
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {p1, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    .line 169
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    .end local v0           #count:I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 173
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_2
    const-string v7, "FirmwareUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while copying: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    const/4 v6, 0x0

    .line 177
    if-eqz v4, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return v6

    .line 171
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    if-eqz v5, :cond_3

    .line 178
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v4, v5

    .line 186
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 183
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v3

    .line 184
    .local v3, e2:Ljava/io/IOException;
    const-string v7, "FirmwareUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while closing the stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v6, 0x0

    move-object v4, v5

    .line 187
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 183
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v3           #e2:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 184
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v7, "FirmwareUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while closing the stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v6, 0x0

    .line 187
    goto :goto_2

    .line 176
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 177
    :goto_3
    if-eqz v4, :cond_5

    .line 178
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 186
    :cond_6
    :goto_4
    throw v7

    .line 183
    :catch_3
    move-exception v3

    .line 184
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v8, "FirmwareUpdater"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while closing the stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v6, 0x0

    goto :goto_4

    .line 176
    .end local v3           #e2:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 172
    .end local v1           #data:[B
    :catch_4
    move-exception v2

    goto/16 :goto_1
.end method

.method private extractFromZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ZipFilename"
    .parameter "VerFilename"

    .prologue
    .line 193
    const-string v3, "version.txt"

    .line 196
    .local v3, filename:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->checkFile(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, bResult:Z
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 204
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_1

    .line 205
    const-string v5, "FirmwareUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZipEntry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    .line 215
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 220
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_1
    return v0

    .line 208
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_1
    const-string v5, "FirmwareUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZipEntry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v6}, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    const-string v5, "FirmwareUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExtractFromZip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " successed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/io/IOException;
    const-string v5, "FirmwareUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in ExtractFromZip(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static hasFumoResult()Z
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/htc/omadm/libdo/firmware/FirmwareUpdater;->updateResultPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public HTC_Monitor_Signal_State()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v1, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    .line 65
    .local v1, mConnectivityManager:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    if-nez v1, :cond_0

    .line 66
    const-string v3, "FirmwareUpdater"

    const-string v4, "return false(couldn\'t get Connectivity manager)"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 70
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 72
    const-string v2, "FirmwareUpdater"

    const-string v3, "return:true(network is available)"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const-string v3, "FirmwareUpdater"

    const-string v4, "return:false(network is NOT available)"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    const-string v3, "FirmwareUpdater"

    const-string v4, "return: false(NetworkInfo.class is null)"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method
