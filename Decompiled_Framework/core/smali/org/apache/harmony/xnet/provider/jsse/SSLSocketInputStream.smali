.class public final Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;
.super Ljava/io/InputStream;
.source "SSLSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$1;,
        Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private buffer:[B

.field protected dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

.field private end:I

.field private end_reached:Z

.field private final owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

.field private pos:I


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->dataPoint:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream$Adapter;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return v0
.end method

.method static synthetic access$102(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .locals 0

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return p1
.end method

.method static synthetic access$120(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;I)I
    .locals 0

    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream was closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->needAppData()V

    :cond_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
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
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->read()I

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

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt v0, p3, :cond_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method protected setEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketInputStream;->end_reached:Z

    return-void
.end method
