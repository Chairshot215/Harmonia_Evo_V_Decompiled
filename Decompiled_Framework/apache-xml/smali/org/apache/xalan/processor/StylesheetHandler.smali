.class public Lorg/apache/xalan/processor/StylesheetHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetHandler.java"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Lorg/apache/xml/utils/NodeConsumer;


# static fields
.field public static final STYPE_IMPORT:I = 0x3

.field public static final STYPE_INCLUDE:I = 0x2

.field public static final STYPE_ROOT:I = 0x1


# instance fields
.field m_baseIdentifiers:Ljava/util/Stack;

.field private m_docOrderCount:I

.field private m_elementID:I

.field private m_elems:Ljava/util/Stack;

.field private m_fragmentID:I

.field private m_fragmentIDString:Ljava/lang/String;

.field private m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_importSourceStack:Ljava/util/Stack;

.field private m_importStack:Ljava/util/Stack;

.field private m_incremental:Z

.field m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field m_nsSupportStack:Ljava/util/Stack;

.field private m_optimize:Z

.field private m_originatingNode:Lorg/w3c/dom/Node;

.field private m_parsingComplete:Z

.field private m_prefixMappings:Ljava/util/Vector;

.field private m_processors:Ljava/util/Stack;

.field private m_schema:Lorg/apache/xalan/processor/XSLTSchema;

.field private m_shouldProcess:Z

.field private m_source_location:Z

.field private m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

.field private m_stylesheetLevel:I

.field private m_stylesheetLocatorStack:Ljava/util/Stack;

.field private m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

.field m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_stylesheetType:I

.field private m_stylesheets:Ljava/util/Stack;

.field private warnedAboutOldXSLTNamespace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v1, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v1}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    iput-boolean v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    iput v3, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xalan/processor/XSLTSchema;

    invoke-direct {v1}, Lorg/apache/xalan/processor/XSLTSchema;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->warnedAboutOldXSLTNamespace:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const-class v0, Lorg/apache/xalan/templates/FuncDocument;

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "document"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    const-class v0, Lorg/apache/xalan/templates/FuncFormatNumb;

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    const-string v2, "format-number"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/FunctionTable;->installFunction(Ljava/lang/String;Ljava/lang/Class;)I

    const-string v1, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    const-string v1, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    const-string v1, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkForFragmentID(Lorg/xml/sax/Attributes;)V
    .locals 5

    iget-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    iget v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    iput v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    :cond_0
    return-void
.end method

.method private getElemVersion()D
    .locals 9

    const-wide/high16 v4, 0x3ff0

    const-wide/high16 v7, -0x4010

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    const-wide/high16 v2, -0x4010

    :goto_0
    cmpl-double v6, v2, v7

    if-eqz v6, :cond_0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXmlVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/high16 v2, -0x4010

    goto :goto_1

    :cond_1
    cmpl-double v6, v2, v7

    if-nez v6, :cond_2

    move-wide v2, v4

    :cond_2
    return-wide v2
.end method

.method private stackContains(Ljava/util/Stack;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "text()"

    invoke-virtual {v0, v4, v2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ER_NONWHITESPACE_NOT_ALLOWED_IN_POSITION"

    invoke-static {v2, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    goto :goto_0
.end method

.method createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-object v0
.end method

.method public createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v5

    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V

    new-instance v1, Lorg/apache/xalan/extensions/ExpressionVisitor;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xalan/extensions/ExpressionVisitor;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v0, v0, v1}, Lorg/apache/xpath/XPath;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-object v0
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->recompose()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V

    :cond_1
    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    if-gez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    return-void

    :cond_2
    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_NO_STYLESHEETROOT"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentID:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    instance-of v4, p2, Ljavax/xml/transform/TransformerException;

    if-nez v4, :cond_1

    if-nez p2, :cond_0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1, v1, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    check-cast v2, Ljavax/xml/transform/TransformerException;

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    :cond_2
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIncremental()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    return v0
.end method

.method getLastPoppedStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getLocator()Lorg/apache/xml/utils/SAXSourceLocator;
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getDOMsystemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v0, v1

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "can\'t process a context node in StylesheetHandler!"

    invoke-direct {p0, v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->assertion(ZLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/helpers/NamespaceSupport;

    return-object v0
.end method

.method public getOptimize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    return v0
.end method

.method public getOriginatingNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-wide/high16 v5, 0x3ff0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetDoc;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/Stylesheet;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_1

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v0, Lorg/apache/xalan/processor/ProcessorStylesheetElement;

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemVersion()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v3, "ER_NOT_ALLOWED_IN_POSITION"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    return-object v2
.end method

.method public getSchema()Lorg/apache/xalan/processor/XSLTSchema;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    return-object v0
.end method

.method public getSource_location()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    return v0
.end method

.method getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    goto :goto_0
.end method

.method public getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_optimize:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setOptimizer(Z)V

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setIncremental(Z)V

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSource_location(Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method getStylesheetType()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V

    goto :goto_0
.end method

.method importStackContains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-direct {p0, v0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->stackContains(Ljava/util/Stack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method init(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_schema:Lorg/apache/xalan/processor/XSLTSchema;

    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTSchema;->getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushNewNamespaceSupport()V

    return-void
.end method

.method isSpacePreserve()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v0

    return v0
.end method

.method public isStylesheetParsingComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_parsingComplete:Z

    return v0
.end method

.method nextUid()I
    .locals 2

    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_docOrderCount:I

    return v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/xalan/processor/XSLTElementProcessor;->notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method peekImportURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method peekSourceFromURIResolver()Ljavax/xml/transform/Source;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    return-object v0
.end method

.method popBaseIndentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method popElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method popImportSource()Ljavax/xml/transform/Source;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    return-object v0
.end method

.method popImportURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method popNamespaceSupport()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method popSpaceHandling()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    return-void
.end method

.method popStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_lastPoppedStylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, ""

    const-string v3, ""

    move-object v2, p1

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :try_start_0
    const-string v5, "xalan-doc-cache-off"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "xalan:doc-cache-off"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "doc-cache-off"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "org.apache.xalan.xslt.extensions.Redirect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/xalan/templates/ElemForEach;

    if-nez v5, :cond_4

    new-instance v5, Ljavax/xml/transform/TransformerException;

    const-string v6, "xalan:doc-cache-off not allowed here!"

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemForEach;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method pushBaseIndentifier(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0x23

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_fragmentIDString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_baseIdentifiers:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    goto :goto_0
.end method

.method pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setUid(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elems:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method pushImportSource(Ljavax/xml/transform/Source;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importSourceStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method pushImportURL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_importStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method pushNewNamespaceSupport()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_nsSupportStack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/NamespaceSupport2;

    invoke-direct {v1}, Lorg/apache/xml/utils/NamespaceSupport2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_processors:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method pushSpaceHandling(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string v4, "xml:space"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peekOrFalse()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v4, "preserve"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    :cond_1
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    const-string v5, "ER_ILLEGAL_XMLSPACE_VALUE"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    iget-object v5, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw v4
.end method

.method pushSpaceHandling(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_spacePreserveStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/StylesheetRoot;

    iput-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheets:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLocatorStack:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v1, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/Locator;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOriginatingNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_originatingNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method setStylesheetType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetType:I

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xalan/processor/XSLTElementProcessor;->skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetLevel:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Z)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v7, v7, 0x1

    move v8, v7

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_elementID:I

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->checkForFragmentID(Lorg/xml/sax/Attributes;)V

    iget-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->flushCharacters()V

    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/StylesheetHandler;->pushSpaceHandling(Lorg/xml/sax/Attributes;)V

    invoke-virtual/range {p0 .. p3}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/processor/XSLTElementProcessor;->startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_shouldProcess:Z

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->popSpaceHandling()V

    goto :goto_1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getCurrentProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/processor/StylesheetHandler;->m_stylesheetProcessor:Lorg/apache/xalan/processor/TransformerFactoryImpl;

    invoke-virtual {v4}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    :try_start_0
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v1, v4}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
