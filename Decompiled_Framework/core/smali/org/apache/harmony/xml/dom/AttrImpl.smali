.class public final Lorg/apache/harmony/xml/dom/AttrImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field isId:Z

.field localName:Ljava/lang/String;

.field namespaceAware:Z

.field namespaceURI:Ljava/lang/String;

.field ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

.field prefix:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xml/dom/AttrImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isId()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    return v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    return-void
.end method
