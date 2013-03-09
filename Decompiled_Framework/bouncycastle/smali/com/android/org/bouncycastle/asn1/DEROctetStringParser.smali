.class public Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method
