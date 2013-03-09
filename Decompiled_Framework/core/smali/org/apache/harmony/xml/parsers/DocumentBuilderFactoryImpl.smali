.class public Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;
.source "DocumentBuilderFactoryImpl.java"


# static fields
.field private static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljavax/xml/parsers/ParserConfigurationException;

    const-string v2, "No validating DocumentBuilder implementation available"

    invoke-direct {v1, v2}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;-><init>()V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setCoalescing(Z)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreComments(Z)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setIgnoreElementContentWhitespace(Z)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/parsers/DocumentBuilderImpl;->setNamespaceAware(Z)V

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/parsers/DocumentBuilderFactoryImpl;->setValidating(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljavax/xml/parsers/ParserConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
