.class public final Lorg/apache/harmony/security/asn1/ASN1Explicit;
.super Lorg/apache/harmony/security/asn1/ASN1Constructed;
.source "ASN1Explicit.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Constructed;-><init>(II)V

    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 explicitly tagged type is expected at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Expected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "but encountered tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/harmony/security/asn1/ASN1Constructed;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
