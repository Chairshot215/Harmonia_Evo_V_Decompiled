.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerHelloDone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    if-eqz p2, :cond_0

    const/16 v0, 0x32

    const-string v1, "DECODE ERROR: incorrect ServerHelloDone"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 0

    return-void
.end method
