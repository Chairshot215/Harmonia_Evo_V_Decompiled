.class public Ljava/security/cert/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field private final caName:Ljava/lang/String;

.field private final caPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private final caPublicKey:Ljava/security/PublicKey;

.field private final nameConstraints:[B

.field private final trustedCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/PublicKey;[B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "caName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "caPublicKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    if-eqz p3, :cond_2

    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    :goto_0
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "caName.isEmpty()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_0

    :cond_3
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustedCert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    :goto_0
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    return-void

    :cond_1
    iput-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "caPrincipal == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "caPublicKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    if-eqz p3, :cond_2

    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Ljava/security/cert/TrustAnchor;->processNameConstraints()V

    :goto_0
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    return-void

    :cond_2
    iput-object v3, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    goto :goto_0
.end method

.method private processNameConstraints()V
    .locals 3

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getCA()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public final getCAName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCAPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getNameConstraints()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    iget-object v2, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getTrustedCert()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrustAnchor: [\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    const-string v1, "Trusted CA certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->trustedCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_1

    const-string v1, "Trusted CA Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPrincipal:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    const-string v1, "Trusted CA Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->caPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    if-eqz v1, :cond_3

    const-string v1, "Name Constraints:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/cert/TrustAnchor;->nameConstraints:[B

    const-string v2, "    "

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
