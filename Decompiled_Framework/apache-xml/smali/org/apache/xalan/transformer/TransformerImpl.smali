.class public Lorg/apache/xalan/transformer/TransformerImpl;
.super Ljavax/xml/transform/Transformer;
.source "TransformerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/xml/dtm/DTMWSFilter;
.implements Lorg/apache/xpath/ExtensionsProvider;
.implements Lorg/apache/xml/serializer/SerializerTrace;


# instance fields
.field m_attrSetStack:Ljava/util/Stack;

.field m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

.field m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

.field m_currentMatchTemplates:Ljava/util/Stack;

.field m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

.field m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

.field m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

.field private m_doc:I

.field private m_errorHandler:Ljavax/xml/transform/ErrorListener;

.field private m_exceptionThrown:Ljava/lang/Exception;

.field private m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

.field private m_hasBeenReset:Z

.field private m_hasTransformThreadErrorCatcher:Z

.field private m_incremental:Z

.field m_inputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

.field private m_modes:Ljava/util/Stack;

.field private m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

.field private m_optimizer:Z

.field private m_outputContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_outputTarget:Ljavax/xml/transform/Result;

.field private m_quietConflictWarnings:Z

.field private m_reentryGuard:Ljava/lang/Boolean;

.field private m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_shouldReset:Z

.field private m_source_location:Z

.field private m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

.field private m_textformat:Lorg/apache/xalan/templates/OutputProperties;

.field private m_transformThread:Ljava/lang/Thread;

.field private m_urlOfSource:Ljava/lang/String;

.field m_userParams:Ljava/util/Vector;

.field private m_xcontext:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Lorg/apache/xml/serializer/ToTextStream;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    new-instance v1, Lorg/apache/xml/utils/ObjectPool;

    const-class v2, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    const-string v2, "text"

    invoke-direct {v1, v2}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    new-instance v1, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    new-instance v1, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v1}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    new-instance v1, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/ObjectStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    new-instance v1, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v1, v4}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    iput-boolean v5, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    iput-boolean v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getIncremental()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getSource_location()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V

    new-instance v0, Lorg/apache/xpath/XPathContext;

    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setIncremental(Z)V

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setIncremental(Z)V

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->setSource_location(Z)V

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMManager;->setSource_location(Z)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->setSecureProcessing(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setXPathContext(Lorg/apache/xpath/XPathContext;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    return-void
.end method

.method private fatalError(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    instance-of v0, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    check-cast p1, Lorg/xml/sax/SAXParseException;

    invoke-direct {v3, p1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0
.end method

.method private replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xpath/Arg;

    invoke-direct {v4, p1, p2, v5}, Lorg/apache/xpath/Arg;-><init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private resetUserParameters()V
    .locals 7

    :try_start_0
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static runTransformThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method private transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    :try_start_0
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return v1

    :catchall_0
    move-exception v7

    :try_start_3
    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v5

    :try_start_4
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v7

    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v7
.end method


# virtual methods
.method public applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v10

    move/from16 v0, p3

    invoke-interface {v10, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v20

    const/16 v19, 0x0

    const/16 v18, 0x0

    if-nez p1, :cond_1

    const/16 v18, 0x0

    :goto_0
    if-eqz p2, :cond_0

    if-eqz v18, :cond_6

    :cond_0
    const/4 v8, 0x0

    if-eqz v18, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getEndImportCountComposed()I

    move-result v8

    :goto_1
    if-eqz v18, :cond_4

    const/4 v3, -0x1

    if-ne v7, v3, :cond_4

    const/16 p2, 0x0

    :goto_2
    if-nez p2, :cond_6

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    :goto_3
    return v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    const/16 v5, 0x48

    if-ne v3, v5, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v6

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    :goto_4
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    move-object v12, v4

    move/from16 v13, p3

    move-object v14, v6

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    goto :goto_4

    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    :cond_6
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V

    if-nez v18, :cond_7

    new-instance v17, Lorg/apache/xpath/NodeSetDTM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    if-eqz v19, :cond_c

    packed-switch v20, :pswitch_data_1

    :goto_6
    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/VariableStack;->unlink()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    const/4 v3, 0x1

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultTextRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    const/16 v19, 0x1

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getDefaultRootRule()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p2

    goto :goto_5

    :pswitch_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v3, v5}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v21

    :try_start_4
    new-instance v3, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/VariableStack;->unlink()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentMatched()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v3

    :pswitch_5
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, p3

    invoke-interface {v10, v0, v3, v5}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    move-object/from16 v0, p2

    iget v5, v0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v3, v5}, Lorg/apache/xpath/VariableStack;->link(I)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public clearParameters()V
    .locals 3

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lorg/apache/xpath/VariableStack;

    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    return-object v0
.end method

.method public createSerializationHandler(Ljavax/xml/transform/Result;Lorg/apache/xalan/templates/OutputProperties;)Lorg/apache/xml/serializer/SerializationHandler;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMResult;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v21, p1

    check-cast v21, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v21, p1

    check-cast v21, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v21, 0x9

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v21, v11

    check-cast v21, Lorg/w3c/dom/Document;

    move-object/from16 v2, v21

    :goto_0
    const/16 v21, 0xb

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    move-object/from16 v21, v11

    check-cast v21, Lorg/w3c/dom/DocumentFragment;

    move-object/from16 v0, v21

    invoke-direct {v5, v2, v0}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    :goto_1
    if-eqz v10, :cond_0

    invoke-virtual {v5, v10}, Lorg/apache/xml/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    :cond_0
    const-string v21, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v20, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v5, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    :cond_1
    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v14

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object v20

    :cond_2
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v2

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_4
    new-instance v5, Lorg/apache/xml/utils/DOMBuilder;

    invoke-direct {v5, v2, v11}, Lorg/apache/xml/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXResult;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "handler can not be null for a SAXResult"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_6
    instance-of v0, v5, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object v8, v5

    check-cast v8, Lorg/xml/sax/ext/LexicalHandler;

    :goto_3
    const-string v21, "encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v21, "method"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v18, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v8, v3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setShouldOutputNSAttr(Z)V

    move-object/from16 v20, v18

    const-string v21, "doctype-public"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v21, "doctype-system"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    :cond_7
    if-eqz v12, :cond_8

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    :cond_8
    instance-of v0, v5, Lorg/apache/xalan/transformer/TransformerClient;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    new-instance v16, Lorg/apache/xalan/transformer/XalanTransformState;

    invoke-direct/range {v16 .. v16}, Lorg/apache/xalan/transformer/XalanTransformState;-><init>()V

    check-cast v5, Lorg/apache/xalan/transformer/TransformerClient;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/apache/xalan/transformer/TransformerClient;->setTransformState(Lorg/apache/xalan/transformer/TransformState;)V

    move-object/from16 v21, v20

    check-cast v21, Lorg/apache/xml/serializer/ToSAXHandler;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToSAXHandler;->setTransformState(Lorg/apache/xml/serializer/TransformStateSetter;)V

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamResult;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v15, p1

    check-cast v15, Ljavax/xml/transform/stream/StreamResult;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v21

    if-eqz v21, :cond_b

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    :goto_4
    move-object/from16 v20, v13

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    if-eqz v21, :cond_c

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    new-instance v21, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    :cond_c
    :try_start_1
    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_11

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v4

    const-string v21, "file:///"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_e

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_d
    :goto_5
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    move-object/from16 v20, v13

    goto :goto_4

    :cond_e
    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_f
    const-string v21, "file:/"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_10

    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_10
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_11
    new-instance v21, Ljavax/xml/transform/TransformerException;

    const-string v22, "ER_NO_OUTPUT_SPECIFIED"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_12
    new-instance v21, Ljavax/xml/transform/TransformerException;

    const-string v22, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public currentFuncResultSeen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentTemplateRuleIsNull()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/BoolStack;->peek()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/QName;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->pushMode(Lorg/apache/xml/utils/QName;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popMode()V

    :cond_2
    throw v1
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/xml/sax/ContentHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    move-object v3, v5

    :try_start_0
    invoke-interface {v5}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    const/4 v2, 0x0

    instance-of v6, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v2, v0

    :cond_0
    new-instance v6, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v2, v7}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    :catch_1
    move-exception v4

    :try_start_2
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTextLiteral;->getChars()[C

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-interface {v7, v0, v8, v9}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v7

    :cond_1
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v1

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    :try_start_2
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_2

    :goto_2
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v4}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7, v4, v1}, Lorg/apache/xml/utils/ObjectStack;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v4, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v8}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    throw v7

    :cond_3
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v7}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    goto :goto_0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xalan/extensions/ExtensionsTable;->extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fireGenerateEvent(I)V
    .locals 0

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method public fireGenerateEvent(I[CII)V
    .locals 0

    return-void
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/extensions/ExtensionsTable;->functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCountersTable()Lorg/apache/xalan/transformer/CountersTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xalan/transformer/CountersTable;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/CountersTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    return-object v0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentNode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getCurrentTemplateElements()Lorg/apache/xml/utils/ObjectStack;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    return-object v0
.end method

.method public getCurrentTemplateElementsCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->size()I

    move-result v0

    return v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "http://xml.org/trax/features/sax/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string v0, "http://xml.org/trax/features/dom/input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncremental()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_incremental:Z

    return v0
.end method

.method public getInputContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;
    .locals 2

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getKeyManager()Lorg/apache/xalan/transformer/KeyManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    return-object v0
.end method

.method public getMatchedNode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepTail()I

    move-result v0

    return v0
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/QName;

    goto :goto_0
.end method

.method public getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xalan/transformer/MsgMgr;

    invoke-direct {v0, p0}, Lorg/apache/xalan/transformer/MsgMgr;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_msgMgr:Lorg/apache/xalan/transformer/MsgMgr;

    return-object v0
.end method

.method public getOptimize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    return v0
.end method

.method public getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/Arg;

    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lorg/apache/xpath/Arg;->getVal()Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getQuietConflictWarnings()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_quietConflictWarnings:Z

    return v0
.end method

.method public getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-object v0
.end method

.method public getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S
    .locals 5

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, v4, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getWhiteSpaceInfo(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->getShouldStripSpace()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSource_location()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_source_location:Z

    return v0
.end method

.method public final getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTransformThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v0

    return-object v0
.end method

.method public final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public hasTraceListeners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTransformThreadErrorCatcher()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    return v0
.end method

.method public init(Lorg/apache/xml/serializer/ToXMLSAXHandler;Ljavax/xml/transform/Transformer;Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    invoke-virtual {p1, p3}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public isRecursiveAttrSet(Lorg/apache/xalan/templates/ElemAttributeSet;)Z
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popCurrentFuncResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popCurrentMatched()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->pop()I

    return-void
.end method

.method public popCurrentTemplateRuleIsNull()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->pop()Z

    return-void
.end method

.method public popElemAttributeSet()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popElemTemplateElement()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public popMode()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method postExceptionFromThread(Ljava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v16

    if-lez v16, :cond_0

    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    :cond_0
    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getLang()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getDataType()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    const-string v3, ":"

    invoke-virtual {v13, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "TODO: Need to write the hooks for QNAME sort data type"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v13, :cond_6

    const-string v3, "number"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "ascending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "descending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "order"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v17, :cond_7

    const-string v3, "descending"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v7, 0x1

    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getCaseOrder()Lorg/apache/xalan/templates/AVT;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v11, v0, v1, v2}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "upper-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "lower-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "case-order"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v12, :cond_8

    const-string v3, "upper-first"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v9, 0x1

    :goto_5
    new-instance v3, Lorg/apache/xalan/transformer/NodeSortKey;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xalan/templates/ElemSort;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v10}, Lorg/apache/xalan/transformer/NodeSortKey;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v15, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v3, "text"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "number"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "data-type"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/apache/xalan/templates/ElemForEach;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    return-object v15
.end method

.method public pushCurrentFuncResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentFuncResult:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushCurrentTemplateRuleIsNull(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    return-void
.end method

.method public pushElemAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected pushGlobalVars(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v11, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v11}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v10

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->link(I)I

    :cond_0
    :goto_0
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_1

    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemVariable;

    new-instance v0, Lorg/apache/xalan/templates/XUnresolvedVariable;

    invoke-virtual {v10}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/XUnresolvedVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;ILorg/apache/xalan/transformer/TransformerImpl;IIZ)V

    invoke-virtual {v10, v7}, Lorg/apache/xpath/VariableStack;->elementAt(I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v10, v7, v0}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushMode(Lorg/apache/xml/utils/QName;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_modes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushPairCurrentMatched(Lorg/apache/xalan/templates/ElemTemplateElement;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_shouldReset:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputStream:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->reset()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/VariableStack;->reset()V

    invoke-direct {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->resetUserParameters()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchTemplates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentMatchedNodes:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    new-instance v0, Lorg/apache/xalan/transformer/KeyManager;

    invoke-direct {v0}, Lorg/apache/xalan/transformer/KeyManager;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_keyManager:Lorg/apache/xalan/transformer/KeyManager;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_attrSetStack:Ljava/util/Stack;

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_countersTable:Lorg/apache/xalan/transformer/CountersTable;

    new-instance v0, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateRuleIsNull:Lorg/apache/xml/utils/BoolStack;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/SourceTreeManager;->reset()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    :try_start_0
    iget v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    invoke-virtual {p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->postExceptionFromThread(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v1

    :try_start_5
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_inputContentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine()V

    :cond_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runTransformThread()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    return-void
.end method

.method public runTransformThread(I)V
    .locals 1

    invoke-static {p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper;->runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V

    return-void
.end method

.method public setBaseURLOfSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_urlOfSource:Ljava/lang/String;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ER_NULL_CONTENT_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v1, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/ToXMLSAXHandler;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/ToXMLSAXHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    goto :goto_0
.end method

.method public setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_currentTemplateElements:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NULL_ERROR_HANDLER"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setExceptionThrown(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_exceptionThrown:Ljava/lang/Exception;

    return-void
.end method

.method setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionsTable;

    invoke-direct {v1, p1}, Lorg/apache/xalan/extensions/ExtensionsTable;-><init>(Lorg/apache/xalan/templates/StylesheetRoot;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_extensionsTable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutputFormat(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "method"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    :goto_1
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xalan/templates/OutputProperties;

    invoke-direct {v1}, Lorg/apache/xalan/templates/OutputProperties;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getOutputComposed()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    iput-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    :cond_0
    invoke-static {p1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputFormat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ER_INVALID_SET_PARAM_VALUE"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "{}"

    invoke-direct {v2, p1, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_userParams:Ljava/util/Vector;

    :cond_2
    if-nez v1, :cond_3

    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    new-instance v3, Lorg/apache/xml/utils/QName;

    invoke-direct {v3, v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-static {p2, v4}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->replaceOrPushUserParam(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V

    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v5

    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-static {p3, v7}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_0

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v0, v6}, Lorg/apache/xpath/VariableStack;->setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setParameters(Ljava/util/Properties;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->clearParameters()V

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "{}"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v5, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_0
    move-object v3, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v5}, Lorg/apache/xalan/transformer/TransformerImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method

.method public setSourceTreeDocForThread(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_doc:I

    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method

.method public setTransformThread(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_transformThread:Ljava/lang/Thread;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/SourceTreeManager;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setXPathContext(Lorg/apache/xpath/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_reentryGuard:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    invoke-virtual {p0, p1, p3}, Lorg/apache/xalan/transformer/TransformerImpl;->transform(Ljavax/xml/transform/Source;Z)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transform(Ljavax/xml/transform/Source;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    :goto_0
    :try_start_2
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->setBaseURLOfSource(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v3, :cond_3

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/stream/StreamSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v3

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    if-nez v3, :cond_7

    :cond_5
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v18

    new-instance v16, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v18, :cond_6

    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    move-object/from16 p1, v16

    :cond_7
    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    invoke-interface {v12, v8}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v14, 0x1

    :try_start_6
    invoke-interface {v12}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_8

    :try_start_7
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v13

    if-eqz v13, :cond_e

    instance-of v3, v13, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_b

    check-cast v13, Ljavax/xml/transform/TransformerException;

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_0
    move-exception v20

    :goto_3
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v19

    instance-of v3, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_f

    check-cast v19, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v19

    goto :goto_4

    :cond_9
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :catch_1
    move-exception v13

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_2
    move-exception v17

    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    :goto_7
    return-void

    :catchall_0
    move-exception v3

    if-eqz p2, :cond_a

    :try_start_b
    invoke-virtual {v2, v12, v14}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    :cond_a
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v15

    :goto_8
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_7

    :cond_b
    :try_start_d
    instance-of v3, v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v3, :cond_d

    check-cast v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v13}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_3

    :cond_c
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_7

    :cond_d
    :try_start_e
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_3

    :catchall_1
    move-exception v3

    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v3

    :cond_e
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Lorg/apache/xml/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_9

    :cond_f
    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->fatalError(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasTransformThreadErrorCatcher:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_7

    :catchall_2
    move-exception v3

    move-object/from16 p1, v16

    goto :goto_a

    :catch_4
    move-exception v15

    move-object/from16 p1, v16

    goto :goto_8

    :catch_5
    move-exception v17

    move-object/from16 p1, v16

    goto :goto_6

    :catch_6
    move-exception v20

    move-object/from16 p1, v16

    goto/16 :goto_3

    :catch_7
    move-exception v13

    move-object/from16 p1, v16

    goto/16 :goto_5

    :catch_8
    move-exception v3

    goto/16 :goto_0
.end method

.method public transformNode(I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExtensionsTable(Lorg/apache/xalan/templates/StylesheetRoot;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v20, v0

    monitor-enter v20

    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xalan/transformer/TransformerImpl;->m_hasBeenReset:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushGlobalVars(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v13

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v13, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeCountComposed()I

    move-result v11

    const/4 v12, -0x1

    :goto_1
    if-ge v12, v11, :cond_1

    invoke-virtual {v9, v12}, Lorg/apache/xalan/templates/StylesheetComposed;->getIncludeComposed(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lorg/apache/xalan/templates/Stylesheet;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    invoke-virtual {v10}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v6}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>()V

    move/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v19, 0x0

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    :goto_3
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v19

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v14

    :cond_4
    :goto_4
    :try_start_6
    instance-of v0, v14, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object v0, v14

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v14, v7

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v19, :cond_6

    :try_start_7
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v21, v0

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_5
    :try_start_8
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v19, v0

    check-cast v14, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_6
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    goto :goto_3

    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v19

    :cond_7
    :try_start_a
    instance-of v0, v14, Ljavax/xml/transform/TransformerException;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object v0, v14

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object/from16 v17, v0

    new-instance v15, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Ljavax/xml/transform/SourceLocator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_5

    :catch_1
    move-exception v19

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v19, v0

    new-instance v21, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct/range {v23 .. v23}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v14}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    :catchall_2
    move-exception v19

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/transformer/TransformerImpl;->reset()V

    throw v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_9
    :try_start_c
    instance-of v0, v14, Lorg/xml/sax/SAXParseException;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v21, v0

    new-instance v22, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v0, v14

    check-cast v0, Lorg/xml/sax/SAXParseException;

    move-object/from16 v19, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-interface/range {v21 .. v22}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/TransformerImpl;->m_errorHandler:Ljavax/xml/transform/ErrorListener;

    move-object/from16 v19, v0

    new-instance v21, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_6
.end method

.method public transformNode(ILjavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V

    iput-object p2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_outputTarget:Ljavax/xml/transform/Result;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->transformNode(I)V

    return-void
.end method

.method public transformToGlobalRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_xcontext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    return v1
.end method

.method public transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->hasTextLitOnly()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_optimizer:Z

    if-eqz v6, :cond_1

    check-cast v0, Lorg/apache/xalan/templates/ElemTextLiteral;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTextLiteral;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/StringWriter;

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xml/serializer/ToTextStream;

    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textformat:Lorg/apache/xalan/templates/OutputProperties;

    invoke-virtual {v6}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v4, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    :cond_2
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    :try_start_1
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v6, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    iget-object v6, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    :try_start_3
    invoke-virtual {v5}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_stringWriterObjectPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    iget-object v7, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_textResultHandlerObjectPool:Lorg/apache/xml/utils/ObjectPool;

    iget-object v8, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/xalan/transformer/TransformerImpl;->m_serializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    throw v6

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public waitTransformThread()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getTransformThread()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, p0}, Lorg/apache/xml/utils/ThreadControllerWrapper;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->hasTransformThreadErrorCatcher()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setTransformThread(Ljava/lang/Thread;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
