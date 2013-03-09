.class public Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "SSLStreamedInput.java"


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

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

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLStreamedInput;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/EndOfSourceException;-><init>()V

    throw v1

    :cond_0
    return v0
.end method
