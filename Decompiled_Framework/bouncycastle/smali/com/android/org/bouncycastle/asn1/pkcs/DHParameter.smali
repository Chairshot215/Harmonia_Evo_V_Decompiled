.class public Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DHParameter.java"


# instance fields
.field g:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field l:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field p:Lcom/android/org/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    goto :goto_0
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getL()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->l:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
