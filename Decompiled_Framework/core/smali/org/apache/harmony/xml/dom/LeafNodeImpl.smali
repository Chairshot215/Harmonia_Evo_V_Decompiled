.class public abstract Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "LeafNodeImpl.java"


# instance fields
.field index:I

.field parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method isParentOf(Lorg/w3c/dom/Node;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
