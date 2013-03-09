.class public Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X9FieldID.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private parameters:Lcom/android/org/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    if-nez p3, :cond_0

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :goto_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void

    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->ppBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p3}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p4}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObject;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method


# virtual methods
.method public getIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->id:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->parameters:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
