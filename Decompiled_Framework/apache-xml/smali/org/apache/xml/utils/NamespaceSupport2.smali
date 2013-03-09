.class public Lorg/apache/xml/utils/NamespaceSupport2;
.super Lorg/xml/sax/helpers/NamespaceSupport;
.source "NamespaceSupport2.java"


# static fields
.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private currentContext:Lorg/apache/xml/utils/Context2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->reset()V

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/PrefixForUriEnumerator;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NamespaceSupport2;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xml/utils/PrefixForUriEnumerator;-><init>(Lorg/apache/xml/utils/NamespaceSupport2;Ljava/lang/String;Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/Context2;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public popContext()V
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1}, Lorg/apache/xml/utils/Context2;->getParent()Lorg/apache/xml/utils/Context2;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1

    :cond_0
    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1, p1, p3}, Lorg/apache/xml/utils/Context2;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public pushContext()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v0}, Lorg/apache/xml/utils/Context2;->getChild()Lorg/apache/xml/utils/Context2;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xml/utils/Context2;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    new-instance v0, Lorg/apache/xml/utils/Context2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/Context2;-><init>(Lorg/apache/xml/utils/Context2;)V

    iput-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    iget-object v0, p0, Lorg/apache/xml/utils/NamespaceSupport2;->currentContext:Lorg/apache/xml/utils/Context2;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/Context2;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
