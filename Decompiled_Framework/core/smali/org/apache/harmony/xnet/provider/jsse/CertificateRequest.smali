.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateRequest.java"


# instance fields
.field final certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

.field final certificate_types:[B

.field private encoded_principals:[[B

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v2

    new-array v4, v2, [B

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    invoke-static {p1, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v4, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v4, p2, :cond_1

    const/16 v4, 0x32

    const-string v5, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>([B[Ljava/security/cert/X509Certificate;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    if-nez p2, :cond_0

    const/16 v2, 0x50

    const-string v3, "CertificateRequest: array of certificate authority certificates is null"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    const/4 v1, 0x0

    array-length v2, p2

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, p2

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getTypesAsString()[Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v2, 0x32

    const-string v3, "DECODE ERROR: incorrect CertificateRequest"

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->types:[Ljava/lang/String;

    return-object v2
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_types:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->encoded_principals:[[B

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
