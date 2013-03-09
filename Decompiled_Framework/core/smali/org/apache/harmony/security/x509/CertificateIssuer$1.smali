.class final Lorg/apache/harmony/security/x509/CertificateIssuer$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "CertificateIssuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CertificateIssuer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralName;->getName()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    return-void
.end method
