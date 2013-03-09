.class public Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "CertBag.java"


# instance fields
.field certId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field certValue:Lcom/android/org/bouncycastle/asn1/DERObject;

.field seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DERObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-void
.end method


# virtual methods
.method public getCertId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getCertValue()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
