.class public Lcom/android/mms/dom/ElementImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# instance fields
.field private mAttributes:Lorg/w3c/dom/NamedNodeMap;

.field private mTagName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 29
    new-instance v0, Lcom/android/mms/dom/NamedNodeMapImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/NamedNodeMapImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    .line 37
    iput-object p2, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 46
    .local v0, attrNode:Lorg/w3c/dom/Attr;
    const-string v1, ""

    .line 47
    .local v1, attrValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_0
    return-object v1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "name"

    .prologue
    .line 68
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "oldAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 107
    .local v0, attribute:Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lcom/android/mms/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 110
    :cond_0
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/dom/ElementImpl;->mAttributes:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 112
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "newAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 224
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .parameter "idAttr"
    .parameter "isId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method
