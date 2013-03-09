.class final Lorg/apache/harmony/security/x509/CertificatePolicies$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "CertificatePolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificatePolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4

    new-instance v1, Lorg/apache/harmony/security/x509/CertificatePolicies;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies$1;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    #getter for: Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->access$100(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
