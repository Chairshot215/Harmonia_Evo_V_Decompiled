.class public Lcom/amazon/s3/ListBucketResponse;
.super Lcom/amazon/s3/Response;
.source "ListBucketResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;
    }
.end annotation


# instance fields
.field public commonPrefixEntries:Ljava/util/List;

.field public delimiter:Ljava/lang/String;

.field public entries:Ljava/util/List;

.field public isTruncated:Z

.field public marker:Ljava/lang/String;

.field public maxKeys:I

.field public name:Ljava/lang/String;

.field public nextMarker:Ljava/lang/String;

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    .line 35
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->name:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->prefix:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->marker:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->delimiter:Ljava/lang/String;

    .line 56
    iput v4, p0, Lcom/amazon/s3/ListBucketResponse;->maxKeys:I

    .line 62
    iput-boolean v4, p0, Lcom/amazon/s3/ListBucketResponse;->isTruncated:Z

    .line 69
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->nextMarker:Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->entries:Ljava/util/List;

    .line 81
    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->commonPrefixEntries:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_0

    .line 87
    :try_start_0
    invoke-static {}, Lcom/amazon/s3/Utils;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 88
    .local v2, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;

    invoke-direct {v1, p0}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;-><init>(Lcom/amazon/s3/ListBucketResponse;)V

    .line 89
    .local v1, handler:Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 90
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 92
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 94
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getPrefix()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->prefix:Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getMarker()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->marker:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getDelimiter()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->delimiter:Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getMaxKeys()I

    move-result v3

    iput v3, p0, Lcom/amazon/s3/ListBucketResponse;->maxKeys:I

    .line 99
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getIsTruncated()Z

    move-result v3

    iput-boolean v3, p0, Lcom/amazon/s3/ListBucketResponse;->isTruncated:Z

    .line 100
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getNextMarker()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->nextMarker:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getKeyEntries()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->entries:Ljava/util/List;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;->getCommonPrefixEntries()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListBucketResponse;->commonPrefixEntries:Ljava/util/List;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #handler:Lcom/amazon/s3/ListBucketResponse$ListBucketHandler;
    .end local v2           #xr:Lorg/xml/sax/XMLReader;
    :cond_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error parsing ListBucket xml"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
