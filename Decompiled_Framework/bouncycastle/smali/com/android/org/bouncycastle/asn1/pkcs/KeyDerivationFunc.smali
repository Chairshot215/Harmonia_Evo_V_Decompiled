.class public Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "KeyDerivationFunc.java"


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method
