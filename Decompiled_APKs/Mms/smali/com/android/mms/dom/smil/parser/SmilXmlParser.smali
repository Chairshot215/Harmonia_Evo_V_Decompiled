.class public Lcom/android/mms/dom/smil/parser/SmilXmlParser;
.super Ljava/lang/Object;
.source "SmilXmlParser.java"


# instance fields
.field private mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

.field private mXmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    .line 43
    new-instance v1, Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    .line 44
    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 0
    .parameter "doc"

    .prologue
    .line 68
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    .line 74
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 75
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->reset()V

    .line 53
    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 55
    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 56
    .local v0, doc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V

    .line 58
    return-object v0
.end method
