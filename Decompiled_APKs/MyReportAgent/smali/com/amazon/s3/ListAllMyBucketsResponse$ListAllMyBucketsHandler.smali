.class Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ListAllMyBucketsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/ListAllMyBucketsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListAllMyBucketsHandler"
.end annotation


# instance fields
.field private currBucket:Lcom/amazon/s3/Bucket;

.field private currText:Ljava/lang/StringBuffer;

.field private entries:Ljava/util/List;

.field private iso8601Parser:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->entries:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currBucket:Lcom/amazon/s3/Bucket;

    .line 57
    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    .line 58
    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->entries:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    .line 64
    iget-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    .line 66
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 99
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 83
    const-string v1, "Bucket"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->entries:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currBucket:Lcom/amazon/s3/Bucket;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    .line 95
    return-void

    .line 85
    :cond_1
    const-string v1, "Name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currBucket:Lcom/amazon/s3/Bucket;

    iget-object v2, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/Bucket;->name:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "CreationDate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currBucket:Lcom/amazon/s3/Bucket;

    iget-object v2, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->iso8601Parser:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/s3/Bucket;->creationDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected date format in list bucket output"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEntries()Ljava/util/List;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->entries:Ljava/util/List;

    return-object v0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 77
    const-string v0, "Bucket"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazon/s3/Bucket;

    invoke-direct {v0}, Lcom/amazon/s3/Bucket;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/ListAllMyBucketsResponse$ListAllMyBucketsHandler;->currBucket:Lcom/amazon/s3/Bucket;

    .line 80
    :cond_0
    return-void
.end method
