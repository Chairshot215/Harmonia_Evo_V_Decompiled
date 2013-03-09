.class public Lcom/android/org/bouncycastle/openssl/PEMReader;
.super Lcom/android/org/bouncycastle/util/io/pem/PemReader;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/openssl/PEMReader$1;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$X509CertificateParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$PublicKeyParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;,
        Lcom/android/org/bouncycastle/openssl/PEMReader$KeyPairParser;
    }
.end annotation


# instance fields
.field private pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;

.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BC"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;)V
    .locals 1

    const-string v0, "BC"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/android/org/bouncycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/android/org/bouncycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE REQUEST"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "NEW CERTIFICATE REQUEST"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CERTIFICATE"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CRL"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$X509CRLParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PKCS7"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PARAMETERS"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Lcom/android/org/bouncycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PUBLIC KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$PublicKeyParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$PublicKeyParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PUBLIC KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PRIVATE KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$RSAKeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "DSA PRIVATE KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$DSAKeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PRIVATE KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ENCRYPTED PRIVATE KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PRIVATE KEY"

    new-instance v2, Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;

    invoke-direct {v2, p0, p4}, Lcom/android/org/bouncycastle/openssl/PEMReader$PrivateKeyParser;-><init>(Lcom/android/org/bouncycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$400(Lcom/android/org/bouncycastle/openssl/PEMReader;)Lcom/android/org/bouncycastle/openssl/PasswordFinder;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->pFinder:Lcom/android/org/bouncycastle/openssl/PasswordFinder;

    return-object v0
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/openssl/PEMReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;

    invoke-interface {v2, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemObjectParser;->parseObject(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognised object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
