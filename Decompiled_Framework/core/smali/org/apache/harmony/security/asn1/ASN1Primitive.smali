.class public abstract Lorg/apache/harmony/security/asn1/ASN1Primitive;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Primitive.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Primitive;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method
