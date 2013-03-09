.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DrmWrapper"


# instance fields
.field private final mData:[B

.field private mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private final mDrmObject:Landroid/drm/mobile1/DrmRawContent;

.field private mRight:Landroid/drm/mobile1/DrmRights;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    .locals 3
    .parameter "drmContentType"
    .parameter "uri"
    .parameter "drmData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Content-Type or data may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 79
    :goto_0
    iput-object p3, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 82
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 83
    .local v0, drmDataStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    .line 86
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p0, p3}, Lcom/android/mms/drm/DrmWrapper;->installRights([B)V

    .line 92
    :cond_2
    return-void

    .line 78
    .end local v0           #drmDataStream:Ljava/io/ByteArrayInputStream;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getPermission()I
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static installDrmRights([B)V
    .locals 5
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance v2, Landroid/drm/mobile1/DrmException;

    const-string v3, "Right data may not be null."

    invoke-direct {v2, v3}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    .local v0, rightDataStream:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v2

    array-length v3, p0

    const-string v4, "application/vnd.oma.drm.message"

    invoke-virtual {v2, v0, v3, v4}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    .line 211
    .local v1, rights:Landroid/drm/mobile1/DrmRights;
    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isDrmObject(Ljava/lang/String;)Z
    .locals 2
    .parameter "contentType"

    .prologue
    const/4 v0, 0x0

    .line 256
    if-nez p0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public consumeRights()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/drm/mobile1/DrmRights;->consumeRights(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptedData()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 116
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    invoke-virtual {v6, v7}, Landroid/drm/mobile1/DrmRawContent;->getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;

    move-result-object v3

    .line 119
    .local v3, decryptedDataStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x100

    :try_start_0
    new-array v1, v6, [B

    .line 123
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_2

    .line 124
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1           #buffer:[B
    .end local v5           #len:I
    :catch_0
    move-exception v4

    .line 128
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v6, "DrmWrapper"

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-eqz v3, :cond_0

    .line 132
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v4           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v6, :cond_6

    .line 142
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v6, v6

    new-array v2, v6, [B

    .line 143
    .local v2, decryptedData:[B
    iget-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v7, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v7, v7

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .end local v2           #decryptedData:[B
    :goto_2
    return-object v2

    .line 126
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buffer:[B
    .restart local v3       #decryptedDataStream:Ljava/io/InputStream;
    .restart local v5       #len:I
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    if-eqz v3, :cond_3

    .line 132
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_3
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 135
    :catch_1
    move-exception v4

    .line 136
    .local v4, e:Ljava/io/IOException;
    const-string v6, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 135
    .end local v1           #buffer:[B
    .end local v5           #len:I
    .local v4, e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    .line 136
    .local v4, e:Ljava/io/IOException;
    const-string v6, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 130
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 131
    if-eqz v3, :cond_4

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_4
    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 137
    :cond_5
    :goto_3
    throw v6

    .line 135
    :catch_3
    move-exception v4

    .line 136
    .restart local v4       #e:Ljava/io/IOException;
    const-string v7, "DrmWrapper"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 146
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #decryptedDataStream:Ljava/io/InputStream;
    .end local v4           #e:Ljava/io/IOException;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRightsAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmRawContent;->getRightsAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public installRights([B)V
    .locals 4
    .parameter "rightData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string v2, "Right data may not be null."

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 180
    .local v0, rightDataStream:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    array-length v2, p1

    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v1, v0, v2, v3}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 183
    if-eqz v0, :cond_1

    .line 185
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAllowedToForward()Z
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRightsInstalled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-eqz v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1, v2}, Landroid/drm/mobile1/DrmRightsManager;->queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    .line 232
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mRight:Landroid/drm/mobile1/DrmRights;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSDContent()Z
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmObject:Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getRawType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
