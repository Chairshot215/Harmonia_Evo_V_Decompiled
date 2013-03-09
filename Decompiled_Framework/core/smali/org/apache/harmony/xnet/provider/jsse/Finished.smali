.class public Lorg/apache/harmony/xnet/provider/jsse/Finished;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "Finished.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    const/16 v0, 0x24

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x32

    const-string v1, "DECODE ERROR: incorrect Finished"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->fatalAlert(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Finished;->data:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    return-void
.end method
