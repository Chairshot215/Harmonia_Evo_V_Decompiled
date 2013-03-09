.class public Lcom/google/android/common/http/FilePart;
.super Lcom/google/android/common/http/PartBase;
.source "FilePart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private source:Lcom/google/android/common/http/PartSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "partSource"
    .parameter "contentType"
    .parameter "charset"

    .prologue
    .line 93
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    .end local p3
    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    .end local p4
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/google/android/common/http/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez p2, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iput-object p2, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    .line 104
    return-void
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v0}, Lcom/google/android/common/http/PartSource;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/common/http/FilePart;->lengthOfData()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 221
    .local v2, tmp:[B
    iget-object v3, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v3}, Lcom/google/android/common/http/PartSource;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 224
    .local v0, instream:Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_1

    .line 225
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 229
    .end local v1           #len:I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #len:I
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/google/android/common/http/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/common/http/FilePart;->source:Lcom/google/android/common/http/PartSource;

    invoke-interface {v1}, Lcom/google/android/common/http/PartSource;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 195
    sget-object v1, Lcom/google/android/common/http/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    sget-object v1, Lcom/google/android/common/http/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 197
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 198
    sget-object v1, Lcom/google/android/common/http/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 200
    :cond_0
    return-void
.end method
