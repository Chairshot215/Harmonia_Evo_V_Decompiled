.class public Lcom/android/org/bouncycastle/asn1/BEROutputStream;
.super Lcom/android/org/bouncycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;->writeNull()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DERObject;

    invoke-virtual {p1, p0}, Lcom/android/org/bouncycastle/asn1/DERObject;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERObject;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
