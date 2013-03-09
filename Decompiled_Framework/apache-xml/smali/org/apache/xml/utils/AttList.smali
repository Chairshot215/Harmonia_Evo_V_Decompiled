.class public Lorg/apache/xml/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field m_dh:Lorg/apache/xml/utils/DOMHelper;

.field m_lastIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/AttList;->m_lastIndex:I

    iput-object p2, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
