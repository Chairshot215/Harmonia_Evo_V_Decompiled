.class Ljava/util/zip/ZipFile$ZipInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipInflaterInputStream"
.end annotation


# instance fields
.field bytesRead:J

.field entry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    iput-object p4, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipFile$ZipInflaterInputStream;->bytesRead:J

    :cond_0
    return v0
.end method
