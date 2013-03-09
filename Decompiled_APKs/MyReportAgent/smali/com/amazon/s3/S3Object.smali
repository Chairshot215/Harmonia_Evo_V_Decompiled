.class public Lcom/amazon/s3/S3Object;
.super Ljava/lang/Object;
.source "S3Object.java"


# static fields
.field public static final METADATA_HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final METADATA_HEADER_CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final METADATA_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field public contentLength:Ljava/lang/String;

.field public contentMD5:Ljava/lang/String;

.field public data2:[B

.field private dataInputFile:Ljava/io/File;

.field private transient dataInputStream:Ljava/io/InputStream;

.field public file_ab_location:Ljava/lang/String;

.field public isByteArray:Z

.field public isFile:Z

.field public metadata:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 5
    .parameter "file"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v3, p0, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    .line 29
    iput-object v3, p0, Lcom/amazon/s3/S3Object;->contentLength:Ljava/lang/String;

    .line 31
    iput-boolean v2, p0, Lcom/amazon/s3/S3Object;->isByteArray:Z

    .line 32
    iput-boolean v2, p0, Lcom/amazon/s3/S3Object;->isFile:Z

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/amazon/s3/S3Object;->file_ab_location:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/amazon/s3/S3Object;->data2:[B

    .line 36
    iput-object v3, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 42
    iput-object v3, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    .line 77
    iput-object p2, p0, Lcom/amazon/s3/S3Object;->metadata:Ljava/util/Map;

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazon/s3/S3Object;->isFile:Z

    .line 80
    iput-object p1, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/amazon/s3/S3Object;->setContentLength(J)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/s3/S3Object;->file_ab_location:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/amazon/s3/S3Object;->setDataInputFile(Ljava/io/File;)V

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/amazon/s3/Utils;->computeMD5Hash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/s3/S3Object;->setMd5Hash(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 98
    :cond_1
    return-void

    .line 96
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v2

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2
    .parameter "data"
    .parameter "metadata"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/amazon/s3/S3Object;->contentLength:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lcom/amazon/s3/S3Object;->isByteArray:Z

    .line 32
    iput-boolean v0, p0, Lcom/amazon/s3/S3Object;->isFile:Z

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->file_ab_location:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/amazon/s3/S3Object;->data2:[B

    .line 36
    iput-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 42
    iput-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/s3/S3Object;->isByteArray:Z

    .line 52
    iput-object p1, p0, Lcom/amazon/s3/S3Object;->data2:[B

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 55
    iput-object p2, p0, Lcom/amazon/s3/S3Object;->metadata:Ljava/util/Map;

    .line 57
    iget-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/amazon/s3/Utils;->getContentLength(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->contentLength:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private setMd5Hash(Ljava/lang/String;)V
    .locals 0
    .parameter "md5"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazon/s3/S3Object;->contentMD5:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public closeDataInputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 192
    :cond_0
    return-void
.end method

.method public getDataInputFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    return-object v0
.end method

.method public getDataInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/io/FileNotFoundException;
    throw v0
.end method

.method public setContentLength(J)V
    .locals 1
    .parameter "size"

    .prologue
    .line 196
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->contentLength:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setDataInputFile(Ljava/io/File;)V
    .locals 1
    .parameter "dataInputFile"

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 169
    iput-object p1, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    .line 170
    return-void
.end method

.method public setDataInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "dataInputStream"

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/S3Object;->dataInputFile:Ljava/io/File;

    .line 149
    iput-object p1, p0, Lcom/amazon/s3/S3Object;->dataInputStream:Ljava/io/InputStream;

    .line 150
    return-void
.end method
