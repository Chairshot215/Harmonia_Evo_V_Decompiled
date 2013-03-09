.class final Lorg/apache/harmony/security/pkcs7/ContentInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/ContentInfo;
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

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    aget-object v2, v1, v5

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v1, v7

    if-eqz v2, :cond_0

    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v4

    aget-object v2, v1, v7

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {v4, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v0, v2, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v2, v6, v4, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->SIGNED_DATA:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    sget-object v5, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aget-object v3, v1, v7

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v2, v4

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    aget-object v2, v1, v5

    check-cast v2, [I

    check-cast v2, [I

    aget-object v4, v1, v7

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v6}, Lorg/apache/harmony/security/pkcs7/ContentInfo;-><init>([ILjava/lang/Object;[BLorg/apache/harmony/security/pkcs7/ContentInfo$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v2

    aput-object v2, p2, v1

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->oid:[I
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$000(Lorg/apache/harmony/security/pkcs7/ContentInfo;)[I

    move-result-object v1

    sget-object v2, Lorg/apache/harmony/security/pkcs7/ContentInfo;->DATA:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v1

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/harmony/security/pkcs7/SignedData;

    if-eqz v1, :cond_2

    sget-object v1, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0

    :cond_2
    #getter for: Lorg/apache/harmony/security/pkcs7/ContentInfo;->content:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->access$100(Lorg/apache/harmony/security/pkcs7/ContentInfo;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v3

    goto :goto_0
.end method
