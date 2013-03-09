.class public Lcom/amazon/s3/LocationResponse;
.super Lcom/amazon/s3/Response;
.source "LocationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/s3/LocationResponse$LocationResponseHandler;
    }
.end annotation


# instance fields
.field location:Ljava/lang/String;


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
    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    .line 34
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_0

    .line 36
    :try_start_0
    invoke-static {}, Lcom/amazon/s3/Utils;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 37
    .local v2, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;

    invoke-direct {v1}, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;-><init>()V

    .line 38
    .local v1, handler:Lcom/amazon/s3/LocationResponse$LocationResponseHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 39
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 41
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 42
    iget-object v3, v1, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->location:Ljava/lang/String;

    iput-object v3, p0, Lcom/amazon/s3/LocationResponse;->location:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #handler:Lcom/amazon/s3/LocationResponse$LocationResponseHandler;
    .end local v2           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error parsing ListAllMyBuckets xml"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 47
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :cond_0
    const-string v3, "<error>"

    iput-object v3, p0, Lcom/amazon/s3/LocationResponse;->location:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/s3/LocationResponse;->location:Ljava/lang/String;

    return-object v0
.end method
