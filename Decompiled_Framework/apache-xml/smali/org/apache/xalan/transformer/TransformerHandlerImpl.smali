.class public Lorg/apache/xalan/transformer/TransformerHandlerImpl;
.super Ljava/lang/Object;
.source "TransformerHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# static fields
.field private static DEBUG:Z


# instance fields
.field private m_baseSystemID:Ljava/lang/String;

.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field private m_declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_dtdHandler:Lorg/xml/sax/DTDHandler;

.field m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_entityResolver:Lorg/xml/sax/EntityResolver;

.field private m_errorHandler:Lorg/xml/sax/ErrorHandler;

.field private final m_incremental:Z

.field private m_insideParse:Z

.field private m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_locator:Lorg/xml/sax/Locator;

.field private final m_optimizer:Z

.field private m_result:Ljavax/xml/transform/Result;

.field private final m_source_location:Z

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    move-object v3, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v6, p3}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getIncremental()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getOptimize()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_optimizer:Z

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSource_location()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_source_location:Z

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#attributeDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", etc..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_1
    return-void
.end method

.method protected clearCoRoutine()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine(Lorg/xml/sax/SAXException;)V

    return-void
.end method

.method protected clearCoRoutine(Lorg/xml/sax/SAXException;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v3, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExceptionThrown(Ljava/lang/Exception;)V

    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    instance-of v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz v3, :cond_3

    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "In clearCoRoutine..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "...exiting clearCoRoutine"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_1
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#elementDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_1
    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDTD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->waitTransformThread()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->run()V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#externalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    throw p1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#ignorableWhitespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_1
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#internalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#processingInstruction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
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

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#setDocumentLocator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->setSystemId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_RESULT_NULL"

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_RESULT_COULD_NOT_BE_SET"

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#skippedEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_1
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startDTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TransformerHandlerImpl#startDocument"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->runTransformThread(I)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_2
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    throw p1
.end method
