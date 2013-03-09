.class public Lorg/apache/xpath/jaxp/XPathExpressionImpl;
.super Ljava/lang/Object;
.source "XPathExpressionImpl.java"

# interfaces
.implements Ljavax/xml/xpath/XPathExpression;


# static fields
.field static d:Lorg/w3c/dom/Document;

.field static db:Ljavax/xml/parsers/DocumentBuilder;

.field static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field private featureSecureProcessing:Z

.field private functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

.field private variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

.field private xpath:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    sput-object v0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xpath/XPath;Lorg/apache/xpath/jaxp/JAXPPrefixResolver;Ljavax/xml/xpath/XPathFunctionResolver;Ljavax/xml/xpath/XPathVariableResolver;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    iput-object p2, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    iput-object p3, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object p4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iput-boolean p5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    return-void
.end method

.method private eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    if-eqz v4, :cond_1

    new-instance v1, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;

    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->functionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->featureSecureProcessing:Z

    invoke-direct {v1, v4, v5}, Lorg/apache/xpath/jaxp/JAXPExtensionsProvider;-><init>(Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    new-instance v3, Lorg/apache/xpath/XPathContext;

    invoke-direct {v3, v1, v6}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    new-instance v4, Lorg/apache/xpath/jaxp/JAXPVariableStack;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->variableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v4, v5}, Lorg/apache/xpath/jaxp/JAXPVariableStack;-><init>(Ljavax/xml/xpath/XPathVariableResolver;)V

    invoke-virtual {v3, v4}, Lorg/apache/xpath/XPathContext;->setVarStack(Lorg/apache/xpath/VariableStack;)V

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getDummyDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    iget-object v5, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->prefixResolver:Lorg/apache/xpath/jaxp/JAXPPrefixResolver;

    invoke-virtual {v4, v3, v0, v5}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v3, Lorg/apache/xpath/XPathContext;

    invoke-direct {v3, v6}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    goto :goto_0
.end method

.method private static getDummyDocument()Lorg/w3c/dom/Document;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v3, :cond_0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    :cond_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string v3, "http://java.sun.com/jaxp/xpath"

    const-string v4, "dummyroot"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;

    sget-object v2, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->d:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
.method public eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->getResultAsType(Lorg/apache/xpath/objects/XObject;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    const-string v4, "ER_ARG_CANNOT_BE_NULL"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "returnType"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v2

    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v4, v2}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v4, v1, Ljavax/xml/xpath/XPathFunctionException;

    if-eqz v4, :cond_2

    check-cast v1, Ljavax/xml/xpath/XPathFunctionException;

    throw v1

    :cond_2
    new-instance v4, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v4, v3}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v3, "ER_SOURCE_RETURN_TYPE_CANNOT_BE_NULL"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->isSupported(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ER_UNSUPPORTED_RETURN_TYPE"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :try_start_0
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v3, :cond_3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    :cond_3
    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    sput-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    sget-object v3, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->eval(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljavax/xml/xpath/XPathExpressionException;

    invoke-direct {v3, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public evaluate(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setXPath(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathExpressionImpl;->xpath:Lorg/apache/xpath/XPath;

    return-void
.end method
