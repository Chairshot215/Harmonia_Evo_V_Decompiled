.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateVerify.java"


# instance fields
.field signedHash:[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x32

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    if-nez p2, :cond_0

    const-string v0, "DECODE ERROR: incorrect CertificateVerify"

    invoke-virtual {p0, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    :goto_0
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    add-int/lit8 v1, p2, -0x2

    if-eq v0, v1, :cond_1

    const-string v0, "DECODE ERROR: incorrect CertificateVerify"

    invoke-virtual {p0, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, p2, -0x2

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x50

    const-string v1, "INTERNAL ERROR: incorrect certificate verify hash"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->fatalAlert(BLjava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    :cond_0
    return-void
.end method
