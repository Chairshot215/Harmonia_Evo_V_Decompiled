.class public Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "CertificateList.java"


# instance fields
.field sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .locals 2

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTBSCertList()Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
