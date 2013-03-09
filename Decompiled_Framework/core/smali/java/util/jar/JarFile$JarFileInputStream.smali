.class final Ljava/util/jar/JarFile$JarFileInputStream;
.super Ljava/io/FilterInputStream;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileInputStream"
.end annotation


# instance fields
.field private count:J

.field private done:Z

.field private entry:Ljava/util/jar/JarVerifier$VerifierEntry;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    iput-object p2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    iput-object p3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v1, -0x1

    iget-boolean v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarVerifier$VerifierEntry;->write(I)V

    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    :goto_1
    iget-wide v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    :cond_2
    iput-wide v5, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    :cond_3
    iput-boolean v7, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    iget-boolean v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    if-eqz v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_4

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v1, v0

    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    long-to-int v1, v2

    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2, p1, p2, v1}, Ljava/util/jar/JarVerifier$VerifierEntry;->write([BII)V

    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    :goto_1
    iget-wide v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    goto :goto_0

    :cond_3
    iput-wide v6, p0, Ljava/util/jar/JarFile$JarFileInputStream;->count:J

    goto :goto_1

    :cond_4
    iput-boolean v8, p0, Ljava/util/jar/JarFile$JarFileInputStream;->done:Z

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileInputStream;->entry:Ljava/util/jar/JarVerifier$VerifierEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarVerifier$VerifierEntry;->verify()V

    move v0, v2

    goto :goto_0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
