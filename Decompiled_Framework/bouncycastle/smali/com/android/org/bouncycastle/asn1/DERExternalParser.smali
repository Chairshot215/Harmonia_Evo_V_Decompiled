.class public Lcom/android/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/DEREncodable;
.implements Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERExternal;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method
