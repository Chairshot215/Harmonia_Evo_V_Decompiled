.class public Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "CertificateMessage.java"


# instance fields
.field certs:[Ljava/security/cert/X509Certificate;

.field encoded_certs:[[B


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x3

    const/16 v8, 0x32

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v4

    if-nez v4, :cond_2

    if-eq p2, v9, :cond_0

    const-string v6, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v8, v6}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    :cond_0
    new-array v6, v7, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    filled-new-array {v7, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    iput v9, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    if-lez v4, :cond_3

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    add-int/lit8 v4, v4, -0x3

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sub-int/2addr v4, v5

    add-int/2addr v3, v5

    goto :goto_1

    :catch_0
    move-exception v2

    const/16 v6, 0x50

    const-string v7, "INTERNAL ERROR"

    invoke-virtual {p0, v6, v7, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "DECODE ERROR"

    invoke-virtual {p0, v8, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v3

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v6, p2, :cond_1

    const-string v6, "DECODE ERROR: incorrect CertificateMessage"

    invoke-virtual {p0, v8, v6}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    if-nez p1, :cond_1

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    filled-new-array {v3, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v2, :cond_2

    array-length v2, p1

    new-array v2, v2, [[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x50

    const-string v3, "INTERNAL ERROR"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    new-array v3, v3, [[B

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v3, 0x50

    const-string v4, "INTERNAL ERROR"

    invoke-virtual {p0, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->fatalAlert(BLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x3

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    int-to-long v3, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->encoded_certs:[[B

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method
