.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;
.super Ljava/io/OutputStream;
.source "SSLSocketOutputStream.java"


# instance fields
.field private final owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketOutputStream;->owner:Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->writeAppData([BII)V

    return-void
.end method
