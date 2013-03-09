.class public Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "RSAPrivateKeyStructure.java"


# instance fields
.field private coefficient:Ljava/math/BigInteger;

.field private exponent1:Ljava/math/BigInteger;

.field private exponent2:Ljava/math/BigInteger;

.field private modulus:Ljava/math/BigInteger;

.field private otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private prime1:Ljava/math/BigInteger;

.field private prime2:Ljava/math/BigInteger;

.field private privateExponent:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "wrong version for RSA private key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    iput-object p7, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCoefficient()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->coefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getExponent1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getExponent2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->exponent2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrime1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrime2()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->prime2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->version:I

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->otherPrimeInfos:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
