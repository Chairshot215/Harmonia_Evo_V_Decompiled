.class public Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.super Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
.source "ASN1SequenceOf.java"


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V

    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V

    return-void
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getSequenceOfLength(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V

    return-void
.end method
