.class public Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field private static final ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKCS7:I = 0x1

.field private static final PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKI_PATH:I = 0x0

.field static final encodings:Ljava/util/List; = null

.field private static final encodingsArr:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PkiPath"

    aput-object v1, v0, v4

    const-string v1, "PKCS7"

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;

    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "One of the provided certificates is not an X509 certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/util/List;I[B)V
    .locals 1

    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    :goto_0
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-void

    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Unsupported encoding"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    :try_start_0
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v7, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    :goto_0
    return-object v7

    :cond_1
    sget-object v7, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect encoded form: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v7, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v8, 0x1

    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getInstance([B)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect encoded form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Unsupported encoding"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    :try_start_0
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v7, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    :goto_0
    return-object v7

    :cond_1
    sget-object v7, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v7, Ljava/security/cert/CertificateException;

    const-string v8, "Incorrect PKCS7 encoded form: missing signed data"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect encoded form: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v7, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v8, 0x1

    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v2, "Unsupported encoding"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
