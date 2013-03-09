.class public Lgnu/kawa/sax/KawaXMLReader;
.super Lgnu/kawa/sax/ContentConsumer;
.source "KawaXMLReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# instance fields
.field errorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/kawa/sax/ContentConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"

    .prologue
    .line 84
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    .line 69
    .local v4, reader:Ljava/io/Reader;
    if-nez v4, :cond_0

    .line 70
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v4

    .line 71
    :cond_0
    new-instance v3, Lgnu/text/SourceMessages;

    invoke-direct {v3}, Lgnu/text/SourceMessages;-><init>()V

    .line 72
    .local v3, messages:Lgnu/text/SourceMessages;
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, p0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 73
    .local v1, filter:Lgnu/xml/XMLFilter;
    new-instance v2, Lgnu/text/LineBufferedReader;

    invoke-direct {v2, v4}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v2, lin:Lgnu/text/LineBufferedReader;
    invoke-virtual {v1, v2}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 75
    invoke-virtual {p0}, Lgnu/kawa/sax/KawaXMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 76
    invoke-static {v2, v3, v1}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V

    .line 77
    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, err:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 79
    new-instance v5, Lorg/xml/sax/SAXParseException;

    invoke-direct {v5, v0, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v5

    .line 80
    :cond_1
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 45
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 36
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 57
    iput-object p1, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 58
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 23
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 32
    return-void
.end method
