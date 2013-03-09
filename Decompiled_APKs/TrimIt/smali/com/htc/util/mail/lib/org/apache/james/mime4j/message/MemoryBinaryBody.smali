.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;
.source "MemoryBinaryBody.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 45
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 55
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;

    move-result-object v1

    .line 57
    .local v1, tempPath:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 61
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 75
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 89
    return-void
.end method
