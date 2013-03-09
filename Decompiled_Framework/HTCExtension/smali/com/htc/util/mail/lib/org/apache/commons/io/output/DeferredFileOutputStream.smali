.class public Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;
.super Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private directory:Ljava/io/File;

.field private memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

.field private outputFile:Ljava/io/File;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ThresholdingOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected thresholdReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream not closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method
