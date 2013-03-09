.class public Lgnu/kawa/xml/KAttr;
.super Lgnu/kawa/xml/KNode;
.source "KAttr.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method

.method public static getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;
    .locals 1
    .parameter "sequence"
    .parameter "ipos"

    .prologue
    .line 36
    add-int/lit8 v0, p1, 0xa

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/kawa/xml/KAttr;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KAttr;->ipos:I

    invoke-static {v0, v1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lgnu/kawa/xml/KNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KAttr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setValue not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
