.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
.super Ljava/lang/Object;
.source "DOM2DTMdefaultNamespaceDeclarationNode.java"

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# instance fields
.field final NOT_SUPPORTED_ERR:Ljava/lang/String;

.field handle:I

.field nodename:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field pseudoparent:Lorg/w3c/dom/Element;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unsupported operation on pseudonode"

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->NOT_SUPPORTED_ERR:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    iput p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleOfNode()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    return v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2000/xmlns/"

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public isId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move-object v5, v9

    :cond_0
    :goto_0
    return-object v5

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-nez p1, :cond_1

    if-eq v6, p1, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->hasAttributes()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v10, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "xmlns"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v5, v8

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v10, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v8

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v5, v9

    goto :goto_0

    :pswitch_2
    move-object v5, v9

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_6
    move-object v5, v9

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v1, "Unsupported operation on pseudonode"

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
