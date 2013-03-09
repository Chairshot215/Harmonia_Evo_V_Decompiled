.class final Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AlgorithmIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    new-instance v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v2, v3, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
