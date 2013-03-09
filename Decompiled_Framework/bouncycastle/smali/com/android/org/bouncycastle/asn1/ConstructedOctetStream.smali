.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-nez v1, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_4

    add-int/2addr v3, v1

    if-ne v3, p3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    if-nez v0, :cond_6

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v5, 0x1

    if-ge v3, v5, :cond_5

    move v3, v4

    :cond_5
    move v4, v3

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method
