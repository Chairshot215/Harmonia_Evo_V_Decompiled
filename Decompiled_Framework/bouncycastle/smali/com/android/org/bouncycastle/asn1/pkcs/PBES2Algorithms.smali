.class public Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    :goto_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-void

    :cond_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method

.method public getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
