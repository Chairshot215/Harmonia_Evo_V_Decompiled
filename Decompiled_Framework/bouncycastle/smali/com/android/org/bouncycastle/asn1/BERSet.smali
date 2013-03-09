.class public Lcom/android/org/bouncycastle/asn1/BERSet;
.super Lcom/android/org/bouncycastle/asn1/DERSet;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2

    :cond_0
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    :goto_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERSet;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_1
.end method
