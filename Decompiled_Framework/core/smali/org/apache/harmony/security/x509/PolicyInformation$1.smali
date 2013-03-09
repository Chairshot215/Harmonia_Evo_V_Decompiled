.class final Lorg/apache/harmony/security/x509/PolicyInformation$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PolicyInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/PolicyInformation;
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

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/PolicyInformation$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    new-instance v2, Lorg/apache/harmony/security/x509/PolicyInformation;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/harmony/security/x509/PolicyInformation;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyInformation;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/PolicyInformation;->policyIdentifier:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/PolicyInformation;->access$000(Lorg/apache/harmony/security/x509/PolicyInformation;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
