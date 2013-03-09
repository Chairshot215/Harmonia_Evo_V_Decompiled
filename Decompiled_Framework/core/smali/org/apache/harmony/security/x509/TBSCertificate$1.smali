.class final Lorg/apache/harmony/security/x509/TBSCertificate$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertificate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setDefault(Ljava/lang/Object;I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertificate$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 14

    const/16 v2, 0x8

    const/4 v1, 0x7

    const/4 v12, 0x0

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/Object;

    aget-object v0, v13, v1

    if-nez v0, :cond_0

    move-object v8, v12

    :goto_0
    aget-object v0, v13, v2

    if-nez v0, :cond_1

    move-object v9, v12

    :goto_1
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    const/4 v1, 0x0

    aget-object v1, v13, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    aget-object v3, v13, v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v3, 0x2

    aget-object v3, v13, v3

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v4, 0x3

    aget-object v4, v13, v4

    check-cast v4, Lorg/apache/harmony/security/x501/Name;

    const/4 v5, 0x4

    aget-object v5, v13, v5

    check-cast v5, Lorg/apache/harmony/security/x509/Validity;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    check-cast v6, Lorg/apache/harmony/security/x501/Name;

    const/4 v7, 0x6

    aget-object v7, v13, v7

    check-cast v7, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    const/16 v10, 0x9

    aget-object v10, v13, v10

    check-cast v10, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V

    return-object v0

    :cond_0
    aget-object v0, v13, v1

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v8

    goto :goto_0

    :cond_1
    aget-object v0, v13, v2

    check-cast v0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v9

    goto :goto_1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertificate;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x4

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x5

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x6

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v2

    aput-object v2, p2, v1

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v1

    :cond_0
    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v1

    :cond_1
    const/16 v1, 0x9

    #getter for: Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
