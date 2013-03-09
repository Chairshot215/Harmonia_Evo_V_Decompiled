.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method protected constructor <init>(IILjava/io/InputStream;)V
    .locals 2

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, p3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    return v0
.end method
