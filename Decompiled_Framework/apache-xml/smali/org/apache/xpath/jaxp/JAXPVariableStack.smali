.class public Lorg/apache/xpath/jaxp/JAXPVariableStack;
.super Lorg/apache/xpath/VariableStack;
.source "JAXPVariableStack.java"


# instance fields
.field private final resolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method


# virtual methods
.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    const-string v3, "ER_ARG_CANNOT_BE_NULL"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "Variable qname"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xpath/jaxp/JAXPVariableStack;->resolver:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-interface {v3, v1}, Ljavax/xml/xpath/XPathVariableResolver;->resolveVariable(Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "ER_RESOLVE_VARIABLE_RETURNS_NULL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2, p1}, Lorg/apache/xpath/objects/XObject;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    return-object v3
.end method
