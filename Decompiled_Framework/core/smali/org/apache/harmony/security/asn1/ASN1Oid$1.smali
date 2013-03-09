.class final Lorg/apache/harmony/security/asn1/ASN1Oid$1;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1Oid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1Oid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v4, v5, v6

    and-int/lit8 v1, v4, 0x7f

    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_0

    :cond_0
    const/16 v5, 0x4f

    if-le v1, v5, :cond_1

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x2

    :goto_2
    iget v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    if-ge v3, v5, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    and-int/lit8 v1, v4, 0x7f

    :goto_3
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v6, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v6, v2

    aget-byte v4, v5, v6

    shl-int/lit8 v5, v1, 0x7

    and-int/lit8 v6, v4, 0x7f

    or-int v1, v5, v6

    goto :goto_3

    :cond_1
    div-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v5, v1, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    return-void
.end method
