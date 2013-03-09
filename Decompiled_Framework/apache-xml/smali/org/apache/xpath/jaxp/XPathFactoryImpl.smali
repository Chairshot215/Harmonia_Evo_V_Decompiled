.class public Lorg/apache/xpath/jaxp/XPathFactoryImpl;
.super Ljavax/xml/xpath/XPathFactory;
.source "XPathFactoryImpl.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "XPathFactoryImpl"


# instance fields
.field private featureSecureProcessing:Z

.field private xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

.field private xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljavax/xml/xpath/XPathFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iput-object v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v1, "ER_GETTING_NULL_FEATURE"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return v1

    :cond_1
    const-string v1, "ER_GETTING_UNKNOWN_FEATURE"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isObjectModelSupported(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v3, "ER_OBJECT_MODEL_NULL"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ER_OBJECT_MODEL_EMPTY"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v3, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public newXPath()Ljavax/xml/xpath/XPath;
    .locals 4

    new-instance v0, Lorg/apache/xpath/jaxp/XPathImpl;

    iget-object v1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    iget-object v2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    iget-boolean v3, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xpath/jaxp/XPathImpl;-><init>(Ljavax/xml/xpath/XPathVariableResolver;Ljavax/xml/xpath/XPathFunctionResolver;Z)V

    return-object v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v1, "ER_FEATURE_NAME_NULL"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p2, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->featureSecureProcessing:Z

    return-void

    :cond_1
    const-string v1, "ER_FEATURE_UNKNOWN"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "XPathFactoryImpl"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    invoke-direct {v1, v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v1, "ER_NULL_XPATH_FUNCTION_RESOLVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFactoryImpl"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathFunctionResolver:Ljavax/xml/xpath/XPathFunctionResolver;

    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v1, "ER_NULL_XPATH_VARIABLE_RESOLVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "XPathFactoryImpl"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/jaxp/XPathFactoryImpl;->xPathVariableResolver:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method
