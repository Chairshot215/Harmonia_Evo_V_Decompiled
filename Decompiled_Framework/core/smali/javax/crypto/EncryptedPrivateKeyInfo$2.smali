.class final Ljavax/crypto/EncryptedPrivateKeyInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/EncryptedPrivateKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;->setOptional(I)V

    return-void
.end method
