.class public Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final certPathEncodings:Ljava/util/List;


# instance fields
.field private certificates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "PEM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v9, "X.509"

    invoke-direct {p0, v9}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v9, "PkiPath"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    instance-of v9, v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v9, :cond_0

    new-instance v9, Ljava/security/cert/CertificateException;

    const-string v10, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v7

    :goto_0
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    :try_start_1
    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const-string v9, "X.509"

    const-string v10, "BC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const-string v9, "DER"

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_2
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    :try_start_2
    const-string v9, "PKCS7"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "PEM"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_2
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const-string v9, "X.509"

    const-string v10, "BC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    :goto_3
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_2
    move-exception v7

    move-object p1, v8

    goto/16 :goto_0

    :cond_3
    move-object p1, v8

    :cond_4
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    return-void

    :cond_5
    :try_start_4
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_3
    move-exception v7

    move-object p1, v8

    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    return-void
.end method

.method private sortCerts(Ljava/util/List;)Ljava/util/List;
    .locals 12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :cond_3
    if-nez v6, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    const/4 v5, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v5, v10, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    move-object p1, v7

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_b

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const/4 v5, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    move-object p1, v7

    goto/16 :goto_0

    :cond_c
    move-object p1, v8

    goto/16 :goto_0
.end method

.method private toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while encoding certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v1, "PkiPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    const-string v1, "PKCS7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v1, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v7, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v7, v1, :cond_2

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported encoding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
