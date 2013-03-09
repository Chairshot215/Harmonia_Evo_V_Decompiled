.class public abstract Lcom/android/mms/dom/DocumentImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 44
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/android/mms/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/dom/AttrImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1
    .parameter "data"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .parameter "data"

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDocumentElement()Lorg/w3c/dom/Element;
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "elementId"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "tagname"

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x9

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "importedNode"
    .parameter "deep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizeDocument()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "n"
    .parameter "namespaceURI"
    .parameter "qualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .parameter "documentURI"

    .prologue
    .line 351
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0
    .parameter "strictErrorChecking"

    .prologue
    .line 382
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .parameter "xmlStandalone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 487
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "xmlVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 456
    return-void
.end method
