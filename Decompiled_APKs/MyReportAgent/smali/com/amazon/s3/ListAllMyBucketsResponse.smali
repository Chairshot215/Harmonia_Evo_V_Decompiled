.class public Lcom/amazon/s3/ListAllMyBucketsResponse;
.super Lcom/amazon/s3/Response;
.source "ListAllMyBucketsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;
    }
.end annotation


# instance fields
.field public entries:Ljava/util/List;


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
    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    .line 38
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/amazon/s3/Utils;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 41
    .local v2, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;

    invoke-direct {v1}, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;-><init>()V

    .line 42
    .local v1, handler:Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 43
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 45
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 46
    invoke-virtual {v1}, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->getEntries()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/s3/ListAllMyBucketsResponse;->entries:Ljava/util/List;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1           #handler:Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;
    .end local v2           #xr:Lorg/xml/sax/XMLReader;
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error parsing ListAllMyBuckets xml"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
