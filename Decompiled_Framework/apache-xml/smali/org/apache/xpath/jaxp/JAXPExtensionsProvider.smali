.class public Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;
.super Ljava/lang/Object;
.source "JAXPExtensionsProvider.java"

# interfaces
.implements Lorg/apache/xpath/ExtensionsProvider;


# instance fields
.field private extensionInvocationDisabled:Z

.field private final resolver:Ljavax/xml/xpath/XPathFunctionResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    return-void
.end method


# virtual methods
.method public elementAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public extFunction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    const-string v12, "ER_ARG_CANNOT_BE_NULL"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "Function Name"

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/NullPointerException;

    invoke-direct {v12, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v10

    new-instance v12, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v12, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v12

    :cond_0
    :try_start_1
    new-instance v8, Ljavax/xml/namespace/QName;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-eqz v12, :cond_1

    const-string v12, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v12, v6}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v5

    new-instance v12, Ljavax/xml/transform/TransformerException;

    invoke-direct {v12, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    :cond_1
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {v12, v8, v4}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v12, v3, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v12, :cond_2

    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-virtual {v2, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    instance-of v12, v3, Lorg/apache/xpath/objects/XObject;

    if-eqz v12, :cond_3

    check-cast v3, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {v11, v2}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    return-object v12
.end method

.method public extFunction(Lorg/apache/xpath/functions/FuncExtFunction;Ljava/util/Vector;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/functions/FuncExtFunction;->getArgCount()I

    move-result v3

    new-instance v8, Ljavax/xml/namespace/QName;

    invoke-direct {v8, v9, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->extensionInvocationDisabled:Z

    if-eqz v13, :cond_0

    const-string v13, "ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljavax/xml/xpath/XPathFunctionException;

    invoke-direct {v13, v5}, Ljavax/xml/xpath/XPathFunctionException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v11

    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v13, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v13

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    invoke-interface {v13, v8, v3}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;

    move-result-object v12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v13, v2, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v13, :cond_1

    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-virtual {v1, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    instance-of v13, v2, Lorg/apache/xpath/objects/XObject;

    if-eqz v13, :cond_2

    check-cast v2, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :cond_2
    :try_start_2
    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v12, v1}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;
    :try_end_2
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    return-object v13
.end method

.method public functionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :try_start_0
    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Function Name"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v2, Ljavax/xml/namespace/QName;

    invoke-direct {v2, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;->resolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Ljavax/xml/xpath/XPathFunctionResolver;->resolveFunction(Ljavax/xml/namespace/QName;I)Ljavax/xml/xpath/XPathFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    move v4, v5

    goto :goto_0
.end method
