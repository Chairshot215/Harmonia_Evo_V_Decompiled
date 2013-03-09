.class public Lorg/apache/xpath/jaxp/XPathImpl;
.super Ljava/lang/Object;
.source "XPathImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPath;


# static fields
.field private static d:Lorg/w3c/dom/Document;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private namespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-boolean p3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-direct {v2, p1, v4, v5, v6}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz v4, :cond_0

    new-instance v0, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    new-instance v3, Lorg/apache/xpath/XPathContext;

    invoke-direct {v3, v0, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    const/4 v1, 0x0

    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    instance-of v4, p2, Lorg/w3c/dom/Node;

    if-eqz v4, :cond_1

    check-cast p2, Lorg/w3c/dom/Node;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v2, v3, p2, v4}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    new-instance v3, Lorg/apache/xpath/XPathContext;

    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    goto :goto_1
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 4

    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string v1, "http://java.sun.com/jaxp/xpath"

    const-string v2, "dummyroot"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v1

    sput-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    :cond_0
    sget-object v1, Lorg/apache/xpath/jaxp/XPathImpl;->d:Lorg/w3c/dom/Document;

    return-object v1
.end method

.method private static getParser()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :cond_1
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :cond_2
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p2, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v2, "ER_UNSUPPORTED_RETURN_TYPE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isSupported(Ljavax/xml/namespace/QName;)Z
    .locals 1

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-virtual {p1, v0}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string v2, "ER_ARG_CANNOT_BE_NULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "XPath expression"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/xpath/XPath;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V

    new-instance v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    iget-object v3, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathImpl;->featureSecureProcessing:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;-><init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v7

    new-instance v2, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v2, v7}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "XPath expression"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-nez p3, :cond_1

    const-string v5, "ER_ARG_CANNOT_BE_NULL"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "returnType"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v2

    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v5, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v5, v1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v5, :cond_3

    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    throw v1

    :cond_3
    new-instance v5, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v5, v4}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_0

    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "source"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p1, :cond_1

    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "XPath expression"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-nez p3, :cond_2

    const-string v6, "ER_ARG_CANNOT_BE_NULL"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "returnType"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-direct {p0, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    :try_start_0
    invoke-static {}, Lorg/apache/xpath/jaxp/XPathImpl;->getParser()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->eval(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/apache/xpath/jaxp/XPathImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v1

    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v1

    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v6, v3, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v6, :cond_4

    check-cast v3, Ljavax/xml/xpath/XPathFunctionException;

    throw v3

    :cond_4
    new-instance v6, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v6, v5}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/jaxp/XPathImpl;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-object v0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-object v0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->origFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "NamespaceContext"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->namespaceContext:Ljavax/xml/namespace/NamespaceContext;

    new-instance v1, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-direct {v1, p1}, Lorg/apache/xpath/jaxp/JAXPPrefixResolver;-><init>(Ljavax/xml/namespace/NamespaceContext;)V

    iput-object v1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    return-void
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFunctionResolver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v1, "ER_ARG_CANNOT_BE_NULL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathVariableResolver"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method
