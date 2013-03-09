.class public abstract Lcom/android/org/bouncycastle/asn1/DERObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DERObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method abstract encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 0

    return-object p0
.end method
