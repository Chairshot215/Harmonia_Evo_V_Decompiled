.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# instance fields
.field private certificateChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:J

.field private issuerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuerPrincipals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    return-void
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "issuer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    :cond_1
    const-string v3, "CANONICAL"

    invoke-virtual {p1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    :cond_3
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addIssuerName([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "iss_name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    :cond_1
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLSelector;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 4

    iget-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getIssuerNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0
.end method

.method public getIssuers()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 13

    const/4 v8, 0x0

    instance-of v7, p1, Ljava/security/cert/X509CRL;

    if-nez v7, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509CRL;

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    const-string v10, "CANONICAL"

    invoke-virtual {v9, v10}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-nez v7, :cond_2

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_4

    :cond_2
    :try_start_0
    const-string v7, "2.5.29.20"

    invoke-virtual {v3, v7}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    new-instance v2, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>([B)V

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_3

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_4

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_4

    move v7, v8

    goto :goto_0

    :catch_0
    move-exception v4

    move v7, v8

    goto :goto_0

    :cond_4
    iget-wide v9, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    if-eqz v6, :cond_5

    if-nez v5, :cond_6

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    iget-wide v9, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-ltz v7, :cond_7

    iget-wide v9, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_8

    :cond_7
    move v7, v8

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    goto :goto_0
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "name neither a String nor a byte[]"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIssuers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    const-string v3, "CANONICAL"

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X509CRLSelector:\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    const-string v3, "\n  IssuerNames:\n  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "\n  ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  minCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  maxCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-wide v3, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  dateAndTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  certificateChecking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "\n]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
