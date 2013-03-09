.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field private authorityKeyIdentifier:[B

.field private certificateEquals:Ljava/security/cert/X509Certificate;

.field private certificateValid:Ljava/util/Date;

.field private extendedKeyUsage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerBytes:[B

.field private issuerName:Ljava/lang/String;

.field private keyUsage:[Z

.field private matchAllNames:Z

.field private nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

.field private pathLen:I

.field private pathToNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAltNames:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private subjectKeyIdentifier:[B

.field private subjectPublicKey:[B

.field private subjectPublicKeyAlgID:Ljava/lang/String;

.field private subjectPublicKeyImpl:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return-void
.end method

.method private checkOID(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x2e

    const/4 v0, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v3, 0x1

    if-ltz v1, :cond_0

    const/4 v4, 0x2

    if-le v1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/16 v4, 0x2e

    :try_start_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/16 v4, 0x27

    if-le v1, v4, :cond_3

    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad OID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPathToName(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    const/16 v8, 0x9

    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v3, v3

    new-array v3, v3, [B

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v3, v3

    new-array v3, v3, [Z

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v5, v2, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v6, v6

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-nez v3, :cond_5

    move-object v3, v4

    :goto_0
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v3, :cond_6

    new-array v3, v8, [Ljava/util/ArrayList;

    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_6

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v3, v2, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v6, v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v5, v3, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v4

    :goto_2
    return-object v2

    :cond_5
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-nez v3, :cond_7

    move-object v3, v4

    :goto_3
    iput-object v3, v2, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    :goto_4
    iput-object v4, v2, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4
.end method

.method public getAuthorityKeyIdentifier()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getBasicConstraints()I
    .locals 1

    iget v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    :cond_1
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyUsage()[Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getMatchAllSubjectAltNames()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getPathToNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPolicy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getSubjectAsBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 25

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    move-object/from16 v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    const/16 v23, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const/16 v23, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.14"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_5

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.35"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    :try_start_1
    const-string v23, "2.5.29.16"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_8

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_8
    sget-object v23, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotBefore()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotAfter()Ljava/util/Date;

    move-result-object v15

    if-nez v16, :cond_9

    if-nez v15, :cond_9

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_9
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v23

    if-lez v23, :cond_a

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_a
    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v23

    if-gez v23, :cond_b

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    :try_start_2
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    sget-object v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v23

    if-nez v23, :cond_c

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_d

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    if-eqz v10, :cond_12

    const/4 v7, 0x0

    array-length v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    array-length v12, v10

    :goto_1
    if-ge v7, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v7

    if-eqz v23, :cond_f

    aget-boolean v23, v10, v7

    if-nez v23, :cond_f

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v12, v0

    goto :goto_1

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_10
    add-int/lit8 v7, v7, 0x1

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v7

    if-eqz v23, :cond_10

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    :try_start_3
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_4
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-gez v23, :cond_14

    if-ltz v17, :cond_14

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-lez v23, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1c

    :try_start_4
    const-string v23, "2.5.29.17"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_16

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_16
    sget-object v23, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_17

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_18

    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_18
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v11, v0, [[Z

    const/4 v7, 0x0

    :goto_2
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ge v7, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    if-nez v23, :cond_19

    sget-object v23, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    :goto_3
    aput-object v23, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v7

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    goto :goto_3

    :cond_1a
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v13}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v22

    const/4 v7, 0x0

    :goto_4
    aget-object v23, v11, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v22

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/GeneralName;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/harmony/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v23, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/security/cert/X509Certificate;)Z

    move-result v23

    if-nez v23, :cond_23

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_1d
    :try_start_5
    aget-object v23, v11, v22

    const/16 v24, 0x1

    aput-boolean v24, v23, v7

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0

    if-nez v23, :cond_20

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_20
    const/16 v22, 0x0

    :goto_5
    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c

    const/4 v13, 0x0

    :goto_6
    aget-object v23, v11, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_22

    aget-object v23, v11, v22

    aget-boolean v23, v23, v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v23, :cond_21

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_22
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_27

    const-string v23, "2.5.29.32"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_24

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    if-nez v23, :cond_25

    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_25
    :try_start_6
    sget-object v23, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/security/x509/CertificatePolicies;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/security/x509/CertificatePolicies;->getPolicyInformations()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/security/x509/PolicyInformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PolicyInformation;->getPolicyIdentifier()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v23

    if-eqz v23, :cond_26

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29

    const-string v23, "2.5.29.30"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_29

    :try_start_7
    sget-object v23, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/x509/NameConstraints;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v23

    if-nez v23, :cond_29

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_28
    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_6
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_7
    move-exception v5

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_29
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method public setAuthorityKeyIdentifier([B)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setBasicConstraints(I)V
    .locals 2

    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathLen < -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    goto :goto_0
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    return-void
.end method

.method public setIssuer([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setKeyUsage([Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    return-void
.end method

.method public setNameConstraints([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    goto :goto_0
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, [B

    if-eqz v4, :cond_3

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPolicy(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    goto :goto_0
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public setSubject([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, [B

    if-eqz v4, :cond_3

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(I[B)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "name neither a String nor a byte[]"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public setSubjectPublicKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/16 v9, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X509CertSelector: \n["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    const-string v7, "\n  certificateEquals: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v7, :cond_1

    const-string v7, "\n  serialNumber: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_2

    const-string v7, "\n  issuer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_3

    const-string v7, "\n  subject: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v7, :cond_4

    const-string v7, "\n  subjectKeyIdentifier: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v7, :cond_5

    const-string v7, "\n  authorityKeyIdentifier: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v7, :cond_6

    const-string v7, "\n  certificateValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v7, "\n  subjectPublicKeyAlgID: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v7, :cond_8

    const-string v7, "\n  privateKeyValid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v7, :cond_9

    const-string v7, "\n  subjectPublicKey: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    invoke-static {v8}, Lorg/apache/harmony/security/utils/Array;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v7, :cond_c

    const-string v7, "\n  keyUsage: \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "digitalSignature"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "nonRepudiation"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "keyEncipherment"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "dataEncipherment"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "keyAgreement"

    aput-object v8, v3, v7

    const/4 v7, 0x5

    const-string v8, "keyCertSign"

    aput-object v8, v3, v7

    const/4 v7, 0x6

    const-string v8, "cRLSign"

    aput-object v8, v3, v7

    const/4 v7, 0x7

    const-string v8, "encipherOnly"

    aput-object v8, v3, v7

    const/16 v7, 0x8

    const-string v8, "decipherOnly"

    aput-object v8, v3, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_b

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_a

    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    const-string v7, "\n  ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-eqz v7, :cond_d

    const-string v7, "\n  extendedKeyUsage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v7, "\n  matchAllNames: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "\n  pathLen: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v7, :cond_10

    const-string v7, "\n  subjectAltNames:  \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_f

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v7, v1

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_f
    const-string v7, "\n  ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-eqz v7, :cond_11

    :cond_11
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-eqz v7, :cond_12

    const-string v7, "\n  policies: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-eqz v7, :cond_13

    const-string v7, "\n  pathToNames:  \n  ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    const-string v7, "\n    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    const-string v7, "\n]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
