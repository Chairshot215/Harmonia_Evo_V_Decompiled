.class public final Lorg/apache/harmony/security/asn1/ASN1Any;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Any.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Any;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Any;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;
    .locals 1

    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Any;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Any;

    return-object v0
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Any;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    return-void
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .locals 1

    iget v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    return-void
.end method
