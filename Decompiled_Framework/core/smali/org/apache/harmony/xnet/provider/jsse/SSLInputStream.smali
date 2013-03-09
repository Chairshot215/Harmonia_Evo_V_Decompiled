.class public abstract Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.super Ljava/io/InputStream;
.source "SSLInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt v0, p3, :cond_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public read(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public readUint16()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint24()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint32()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public readUint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint32()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint32()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method public readUint8()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
