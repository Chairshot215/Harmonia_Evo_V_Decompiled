.class public Lcom/android/mms/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;
.source "NamedNodeMapImpl.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# instance fields
.field private mNodes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .parameter "name"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, node:Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #node:Lorg/w3c/dom/Node;
    check-cast v1, Lorg/w3c/dom/Node;

    .line 42
    .restart local v1       #node:Lorg/w3c/dom/Node;
    :cond_0
    return-object v1

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 59
    .local v0, node:Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 60
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0x8

    const-string v3, "Not found"

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 75
    .local v0, existing:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/mms/dom/NamedNodeMapImpl;->mNodes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method
