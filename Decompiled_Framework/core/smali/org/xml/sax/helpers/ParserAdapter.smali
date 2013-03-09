.class public Lorg/xml/sax/helpers/ParserAdapter;
.super Ljava/lang/Object;
.source "ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/DocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;
    }
.end annotation


# static fields
.field private static final FEATURES:Ljava/lang/String; = "http://xml.org/sax/features/"

.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final XMLNS_URIs:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

.field private atts:Lorg/xml/sax/helpers/AttributesImpl;

.field contentHandler:Lorg/xml/sax/ContentHandler;

.field dtdHandler:Lorg/xml/sax/DTDHandler;

.field entityResolver:Lorg/xml/sax/EntityResolver;

.field errorHandler:Lorg/xml/sax/ErrorHandler;

.field locator:Lorg/xml/sax/Locator;

.field private nameParts:[Ljava/lang/String;

.field private namespaces:Z

.field private nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field private parser:Lorg/xml/sax/Parser;

.field private parsing:Z

.field private prefixes:Z

.field private uris:Z


# direct methods
.method public constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    iput-boolean v8, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v7, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    const-string v6, "org.xml.sax.parser"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/ParserFactory;->makeParser()Lorg/xml/sax/Parser;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    return-void

    :catch_0
    move-exception v1

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find SAX1 driver class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_1
    move-exception v2

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAX1 driver class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found but cannot be loaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_2
    move-exception v3

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAX1 driver class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " loaded but cannot be instantiated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    :catch_3
    move-exception v4

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAX1 driver class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement org.xml.sax.Parser"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_4
    move-exception v5

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "System property org.xml.sax.parser not specified"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public constructor <init>(Lorg/xml/sax/Parser;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    iput-boolean v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->setup(Lorg/xml/sax/Parser;)V

    return-void
.end method

.method static synthetic access$000(Lorg/xml/sax/helpers/ParserAdapter;)Lorg/xml/sax/helpers/AttributesImpl;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    return-object v0
.end method

.method private checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while parsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;
    .locals 6

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXParseException;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXParseException;

    move-object v1, p1

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private processName(Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v2, p0, Lorg/xml/sax/helpers/ParserAdapter;->nameParts:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    return-object v0
.end method

.method private setup(Lorg/xml/sax/Parser;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parser argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    new-instance v0, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    invoke-direct {v0, p0}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;-><init>(Lorg/xml/sax/helpers/ParserAdapter;)V

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    return-void
.end method

.method private setupParser()V
    .locals 2

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->setNamespaceDeclUris(Z)V

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_2
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    :cond_3
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    iget-object v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/Parser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_4
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

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

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

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

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v4, v4}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-interface {v3, v4, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    goto :goto_0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

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

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    goto :goto_0

    :cond_1
    const-string v0, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    goto :goto_0

    :cond_2
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

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

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

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    :cond_0
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/ParserAdapter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Parser is already in use"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xml/sax/helpers/ParserAdapter;->setupParser()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    :try_start_0
    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->parser:Lorg/xml/sax/Parser;

    invoke-interface {v0, p1}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->parsing:Z

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method reportError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->makeException(Ljava/lang/String;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->locator:Lorg/xml/sax/Locator;

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

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

    const/4 v1, 0x1

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature"

    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature"

    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    goto :goto_0

    :cond_2
    const-string v0, "http://xml.org/sax/features/xmlns-uris"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "feature"

    invoke-direct {p0, v0, p1}, Lorg/xml/sax/helpers/ParserAdapter;->checkNotParsing(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    goto :goto_0

    :cond_3
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

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

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

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->namespaces:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;->setAttributeList(Lorg/xml/sax/AttributeList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/xml/sax/helpers/ParserAdapter;->attAdapter:Lorg/xml/sax/helpers/ParserAdapter$AttributeListAdapter;

    invoke-interface {v2, v3, v5, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v21

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "xmlns"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0x3a

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string v4, ""

    :goto_3
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Namespace prefix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/xml/sax/helpers/ParserAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x5

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, v22, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v4, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "xmlns"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x3a

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    const-string v4, ""

    :goto_5
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->prefixes:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->uris:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xml/sax/helpers/ParserAdapter;->nsSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x5

    move/from16 v0, v22

    if-eq v0, v2, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    const/4 v2, 0x6

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v9, ""

    const-string v10, ""

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const/4 v2, 0x0

    aget-object v9, v14, v2

    const/4 v2, 0x1

    aget-object v10, v14, v2

    const/4 v2, 0x2

    aget-object v11, v14, v2

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v16

    if-nez v18, :cond_c

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    check-cast v16, Lorg/xml/sax/SAXParseException;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v9, ""

    move-object v10, v15

    move-object v11, v15

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/xml/sax/SAXParseException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/xml/sax/helpers/ParserAdapter;->processName(Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xml/sax/helpers/ParserAdapter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v3, 0x0

    aget-object v3, v23, v3

    const/4 v5, 0x1

    aget-object v5, v23, v5

    const/4 v8, 0x2

    aget-object v8, v23, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/xml/sax/helpers/ParserAdapter;->atts:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v2, v3, v5, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0
.end method
