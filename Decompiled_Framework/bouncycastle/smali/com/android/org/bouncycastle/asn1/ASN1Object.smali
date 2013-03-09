.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Object;
.super Lcom/android/org/bouncycastle/asn1/DERObject;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/DERObject;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "cannot recognise object in stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method abstract asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z
.end method

.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->asn1Equals(Lcom/android/org/bouncycastle/asn1/DERObject;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method
