.class public Lorg/apache/xpath/CachedXPathAPI;
.super Ljava/lang/Object;
.source "CachedXPathAPI.java"


# instance fields
.field protected xpathSupport:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xpath/XPathContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/CachedXPathAPI;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    iput-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-void
.end method


# virtual methods
.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/xpath/XPath;

    move-object v1, p2

    move-object v3, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    new-instance v7, Lorg/apache/xpath/XPathContext;

    invoke-direct {v7, v4}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    invoke-virtual {v7, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    invoke-virtual {v0, v7, v6, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/xml/utils/PrefixResolverDefault;

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_0

    check-cast p3, Lorg/w3c/dom/Document;

    invoke-interface {p3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p3

    :cond_0
    invoke-direct {v3, p3}, Lorg/apache/xml/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Lorg/apache/xpath/XPath;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v6

    iget-object v1, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, v1, v6, v3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    return-object v1
.end method

.method public getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/CachedXPathAPI;->xpathSupport:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v1

    return-object v1
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->eval(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, Lorg/apache/xpath/CachedXPathAPI;->selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/CachedXPathAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method
