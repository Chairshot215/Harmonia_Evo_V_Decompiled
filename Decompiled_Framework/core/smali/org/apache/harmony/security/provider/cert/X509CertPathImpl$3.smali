.class final Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final SIGNED_DATA_OID:[B


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v0

    sget-object v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;->SIGNED_DATA_OID:[B

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid use of encoder for PKCS#7 SignedData object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;->SIGNED_DATA_OID:[B

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    return-void
.end method
