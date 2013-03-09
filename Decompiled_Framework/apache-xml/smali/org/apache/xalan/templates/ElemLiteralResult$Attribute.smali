.class public Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Attribute"
.end annotation


# instance fields
.field private m_attribute:Lorg/apache/xalan/templates/AVT;

.field private m_owner:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    iput-object p2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    iput-object p3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 4

    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object v0
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

    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute$1;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_owner:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->m_attribute:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 v1, 0x7

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    return-void
.end method
