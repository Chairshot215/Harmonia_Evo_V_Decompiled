.class public Lorg/xml/sax/helpers/XMLFilterImpl;
.super Ljava/lang/Object;
.source "XMLFilterImpl.java"

# interfaces
.implements Lorg/xml/sax/XMLFilter;
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private locator:Lorg/xml/sax/Locator;

.field private parent:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    return-void
.end method

.method private setupParse()V
    .locals 2

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No parent for filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParent()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setupParse()V

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->locator:Lorg/xml/sax/Locator;

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->parent:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/XMLFilterImpl;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method
