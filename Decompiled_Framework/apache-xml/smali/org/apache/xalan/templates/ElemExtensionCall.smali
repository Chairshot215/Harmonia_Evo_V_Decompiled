.class public Lorg/apache/xalan/templates/ElemExtensionCall;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemExtensionCall.java"


# static fields
.field static final serialVersionUID:J = 0x2c02dca9933f0c58L


# instance fields
.field m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

.field m_extns:Ljava/lang/String;

.field m_lang:Ljava/lang/String;

.field m_scriptSrc:Ljava/lang/String;

.field m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    return-void
.end method

.method private executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v2

    :cond_1
    return-void
.end method

.method private getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p1, v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    const/16 v7, 0x55

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v8

    if-ne v7, v8, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xalan/templates/ElemExtensionDecl;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v1

    :goto_2
    return-object v7

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private hasFallbackChildren()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z

    move-result v0

    return v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getRawName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v8

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/apache/xalan/extensions/ExtensionsTable;->get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V

    :goto_0
    return-void

    :cond_1
    new-instance v10, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_CALL_TO_EXT_FAILED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v10}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v7}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v9

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :try_start_3
    instance-of v2, v7, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_5

    move-object v0, v7

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object v10, v0

    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v10, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v10}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_5
    instance-of v2, v7, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/apache/xalan/transformer/TransformerImpl;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x4f

    return v0
.end method
