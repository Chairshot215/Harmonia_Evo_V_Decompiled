.class public Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
.super Ljava/lang/Object;
.source "DTMNamedNodeMap.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;
    }
.end annotation


# instance fields
.field dtm:Lorg/apache/xml/dtm/DTM;

.field element:I

.field m_count:S


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 5

    const/4 v4, -0x1

    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    if-ne v2, v4, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    :goto_0
    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    :cond_1
    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    return v2
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v3, v4}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    :cond_2
    return-object v2

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw v0
.end method
