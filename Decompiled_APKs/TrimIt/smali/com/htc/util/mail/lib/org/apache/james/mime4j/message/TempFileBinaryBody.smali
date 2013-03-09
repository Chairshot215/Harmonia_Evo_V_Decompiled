.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

.field private tempFile:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 44
    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    .line 54
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getInstance()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;

    move-result-object v1

    .line 55
    .local v1, tempPath:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    const-string v2, "attachment"

    const-string v3, ".bin"

    invoke-interface {v1, v2, v3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    .line 57
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    invoke-interface {v2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 58
    .local v0, out:Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 60
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    invoke-interface {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/Entity;

    .line 74
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
    .line 87
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 88
    return-void
.end method
