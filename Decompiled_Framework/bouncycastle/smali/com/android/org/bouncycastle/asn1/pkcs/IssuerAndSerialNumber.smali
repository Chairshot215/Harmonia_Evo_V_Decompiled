.class public Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .locals 3

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

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
.method public getCertificateSerialNumber()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getName()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
