.class public Lcom/android/mms/dom/AttrImpl;
.super Lcom/android/mms/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/mms/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "name"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/dom/NodeImpl;-><init>(Lcom/android/mms/dom/DocumentImpl;)V

    .line 36
    iput-object p2, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x2

    return v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

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

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
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
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/mms/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/mms/dom/AttrImpl;->mValue:Ljava/lang/String;

    .line 65
    return-void
.end method
