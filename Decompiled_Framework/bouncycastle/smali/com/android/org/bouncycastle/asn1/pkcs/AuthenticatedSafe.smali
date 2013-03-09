.class public Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "AuthenticatedSafe.java"


# instance fields
.field info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-void
.end method


# virtual methods
.method public getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
