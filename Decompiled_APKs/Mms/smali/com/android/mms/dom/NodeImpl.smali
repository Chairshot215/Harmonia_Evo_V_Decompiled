.class public abstract Lcom/android/mms/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/events/EventTarget;


# instance fields
.field private final mChildNodes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTarget:Lorg/w3c/dom/events/EventTarget;

.field mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

.field private mParentNode:Lorg/w3c/dom/Node;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 40
    new-instance v0, Lcom/android/mms/dom/events/EventTargetImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/dom/events/EventTargetImpl;-><init>(Lorg/w3c/dom/events/EventTarget;)V

    iput-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    .line 47
    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    .line 48
    return-void
.end method

.method private setParentNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .parameter "parentNode"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    .line 207
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 215
    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    return-object p1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "deep"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .parameter "other"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 1
    .parameter "evt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/events/EventException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/android/mms/dom/NodeListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    .local v1, firstChild:Lorg/w3c/dom/Node;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, lastChild:Lorg/w3c/dom/Node;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 110
    .local v1, siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, indexOfThis:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 113
    .end local v0           #indexOfThis:I
    .end local v1           #siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
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

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mOwnerDocument:Lcom/android/mms/dom/DocumentImpl;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/mms/dom/NodeImpl;->mParentNode:Lorg/w3c/dom/Node;

    check-cast v2, Lcom/android/mms/dom/NodeImpl;

    iget-object v1, v2, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    .line 141
    .local v1, siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 142
    .local v0, indexOfThis:I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 144
    .end local v0           #indexOfThis:I
    .end local v1           #siblings:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/w3c/dom/Node;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 253
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "newChild"
    .parameter "refChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "namespaceURI"

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .parameter "arg"

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "namespaceURI"

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 173
    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    .end local p1
    invoke-direct {p1, v1}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 177
    return-object v1

    .line 175
    .restart local p1
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 1
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mEventTarget:Lorg/w3c/dom/events/EventTarget;

    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 219
    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .parameter "newChild"
    .parameter "oldChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/mms/dom/NodeImpl;->mChildNodes:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 189
    check-cast p1, Lcom/android/mms/dom/NodeImpl;

    .end local p1
    invoke-direct {p1, p0}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    move-object v0, p2

    .line 190
    check-cast v0, Lcom/android/mms/dom/NodeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/dom/NodeImpl;->setParentNode(Lorg/w3c/dom/Node;)V

    .line 194
    return-object p2

    .line 192
    .restart local p1
    :cond_0
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x8

    const-string v2, "Old child does not exist"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .parameter "nodeValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 203
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .parameter "textContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 458
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "data"
    .parameter "handler"

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method
