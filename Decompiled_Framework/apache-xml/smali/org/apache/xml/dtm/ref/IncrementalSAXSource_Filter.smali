.class public Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
.super Ljava/lang/Object;
.source "IncrementalSAXSource_Filter.java"

# interfaces
.implements Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;
    }
.end annotation


# instance fields
.field DEBUG:Z

.field private clientContentHandler:Lorg/xml/sax/ContentHandler;

.field private clientDTDHandler:Lorg/xml/sax/DTDHandler;

.field private clientErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private eventcounter:I

.field private fControllerCoroutineID:I

.field private fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

.field private fNoMoreEvents:Z

.field private fSourceCoroutineID:I

.field private fXMLReader:Lorg/xml/sax/XMLReader;

.field private fXMLReaderInputSource:Lorg/xml/sax/InputSource;

.field private frequency:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    new-instance v0, Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    return-void
.end method

.method private co_entry_pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_entry_pause(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private co_yield(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-eqz v2, :cond_3

    new-instance v2, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    invoke-direct {v2, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;-><init>(Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static createIncrementalSAXSource(Lorg/apache/xml/dtm/ref/CoroutineManager;I)Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .locals 1

    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>(Lorg/apache/xml/dtm/ref/CoroutineManager;I)V

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    return-void
.end method

.method protected count_and_yield(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_1
    return-void
.end method

.method public deliverMoreNodes(Z)Ljava/lang/Object;
    .locals 6

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    if-eqz p1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iget v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_resume(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v3, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v2, v3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

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

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    iput v1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    return-void
.end method

.method public getControllerCoroutineID()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    return v0
.end method

.method public getCoroutineManager()Lorg/apache/xml/dtm/ref/CoroutineManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    return-object v0
.end method

.method public getSourceCoroutineID()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_1
    return-void
.end method

.method public init(Lorg/apache/xml/dtm/ref/CoroutineManager;II)V
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/CoroutineManager;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {p1, p3}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_joinCoroutineSet(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_COJOINROUTINESET_FAILED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "IncrementalSAXSource_Filter parse thread launched"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    iget v6, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fControllerCoroutineID:I

    invoke-virtual {v4, v0, v5, v6}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit_to(Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/lang/NoSuchMethodException;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fCoroutineManager:Lorg/apache/xml/dtm/ref/CoroutineManager;

    iget v5, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fSourceCoroutineID:I

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/CoroutineManager;->co_exit(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1

    :catch_2
    move-exception v2

    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Active IncrementalSAXSource_Filter normal stop exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter$StopException;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Active IncrementalSAXSource_Filter normal stop exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active IncrementalSAXSource_Filter UNEXPECTED SAX exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_1
    return-void
.end method

.method public setErrHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setReturnFrequency(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    iput p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :try_start_0
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v0, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_entry_pause()V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_1
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startParse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fNoMoreEvents:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "ER_INCRSAXSRCFILTER_NOT_RESTARTABLE"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_1

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "ER_XMLRDR_NOT_BEFORE_STARTPARSE"

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->fXMLReaderInputSource:Lorg/xml/sax/InputSource;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->co_yield(Z)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->frequency:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->eventcounter:I

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientContentHandler:Lorg/xml/sax/ContentHandler;

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

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientDTDHandler:Lorg/xml/sax/DTDHandler;

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

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->clientErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method
