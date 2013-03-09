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

    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;

    move-result-object v1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

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

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/MemoryBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void
.end method
