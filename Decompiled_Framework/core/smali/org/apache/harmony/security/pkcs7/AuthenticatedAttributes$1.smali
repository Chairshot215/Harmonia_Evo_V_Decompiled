.class final Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;
.super Lorg/apache/harmony/security/asn1/ASN1SetOf;
.source "AuthenticatedAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4

    new-instance v1, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;-><init>([BLjava/util/List;Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;)V

    return-object v1
.end method
