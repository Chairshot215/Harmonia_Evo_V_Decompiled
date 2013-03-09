.class public Lorg/apache/xalan/extensions/ExtensionsTable;
.super Ljava/lang/Object;
.source "ExtensionsTable.java"


# instance fields
.field public m_extensionFunctionNamespaces:Ljava/util/Hashtable;

.field private m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensions()Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->launch()Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/apache/xalan/extensions/ExtensionsTable;->addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addExtensionNamespace(Ljava/lang/String;Lorg/apache/xalan/extensions/ExtensionHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isElementAvailable(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, p2, p3, p4, p5}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    new-instance v3, Lorg/apache/xpath/XPathProcessorException;

    const-string v4, "ER_EXTENSION_FUNC_UNKNOWN"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xalan/extensions/ExtensionHandler;->callFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;Lorg/apache/xalan/extensions/ExpressionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    new-instance v4, Lorg/apache/xpath/XPathProcessorException;

    const-string v5, "ER_EXTENSION_FUNC_UNKNOWN"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/xalan/extensions/ExtensionHandler;->isFunctionAvailable(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionsTable;->m_extensionFunctionNamespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/extensions/ExtensionHandler;

    return-object v0
.end method
