.class public abstract Ljavax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newInstance()Ljavax/xml/xpath/XPathFactory;
    .locals 4

    :try_start_0
    const-string v1, "http://java.sun.com/jaxp/xpath/dom"

    invoke-static {v1}, Ljavax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final newInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    const-class v2, Ljavax/xml/xpath/XPathFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_2
    new-instance v2, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v2, v0}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p0}, Ljavax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/xpath/XPathFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    const-string v2, "factoryClassName cannot be null."

    invoke-direct {v1, v2}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_3
    new-instance v1, Ljavax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v1, p2}, Ljavax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p1}, Ljavax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Ljavax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Ljavax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No XPathFactory implementation found for the object model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract newXPath()Ljavax/xml/xpath/XPath;
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
.end method
