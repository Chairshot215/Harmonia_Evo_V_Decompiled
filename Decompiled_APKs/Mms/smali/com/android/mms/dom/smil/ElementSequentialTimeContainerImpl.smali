.class public abstract Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementSequentialTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementSequentialTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 4
    .parameter "instant"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 47
    .local v0, allChildren:Lorg/w3c/dom/NodeList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, nodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 49
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v3}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v3

    sub-float/2addr p1, v3

    .line 50
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 51
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    .line 55
    :goto_1
    return-object v3

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v3, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v3, v2}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public getDur()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v2

    .line 60
    .local v2, dur:F
    cmpl-float v4, v2, v5

    if-nez v4, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementSequentialTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 62
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 63
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 64
    .local v0, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 66
    const/high16 v4, -0x4080

    .line 71
    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :goto_1
    return v4

    .line 68
    .restart local v0       #child:Lorg/w3c/dom/smil/ElementTime;
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v3       #i:I
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v4

    add-float/2addr v2, v4

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :cond_1
    move v4, v2

    .line 71
    goto :goto_1
.end method
