.class Lcom/amazon/s3/LocationResponse$LocationResponseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LocationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/LocationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationResponseHandler"
.end annotation


# instance fields
.field private currText:Ljava/lang/StringBuffer;

.field location:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->location:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 78
    const-string v0, "LocationConstraint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->location:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 72
    const-string v0, "LocationConstraint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/amazon/s3/LocationResponse$LocationResponseHandler;->currText:Ljava/lang/StringBuffer;

    .line 75
    :cond_0
    return-void
.end method
