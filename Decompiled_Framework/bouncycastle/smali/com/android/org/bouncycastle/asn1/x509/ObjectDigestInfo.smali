.class public Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "ObjectDigestInfo.java"


# static fields
.field public static final otherObjectDigest:I = 0x2

.field public static final publicKey:I = 0x0

.field public static final publicKeyCert:I = 0x1


# instance fields
.field digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field digestedObjectType:Lcom/android/org/bouncycastle/asn1/DEREnumerated;

.field objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    :cond_0
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p4}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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
.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/DEREnumerated;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    return-object v0
.end method

.method public getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
