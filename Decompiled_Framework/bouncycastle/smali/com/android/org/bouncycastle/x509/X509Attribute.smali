.class public Lcom/android/org/bouncycastle/x509/X509Attribute;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X509Attribute.java"


# instance fields
.field attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getAttrValues()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    new-array v2, v3, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509Attribute;->attr:Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
