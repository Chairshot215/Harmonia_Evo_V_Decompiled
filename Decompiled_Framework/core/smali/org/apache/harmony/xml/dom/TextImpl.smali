.class public Lorg/apache/harmony/xml/dom/TextImpl;
.super Lorg/apache/harmony/xml/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/CharacterDataImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method private firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    move-object v0, p0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    :cond_1
    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getWholeText()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/TextImpl;->appendDataTo(Ljava/lang/StringBuilder;)V

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final isElementContentWhitespace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final minimize()Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/CharacterDataImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public final replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->firstTextNodeInCurrentRun()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->setData(Ljava/lang/String;)V

    move-object v2, p0

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v3, v0

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->nextTextNode()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final splitText(I)Lorg/w3c/dom/Text;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getLength()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v3}, Lorg/apache/harmony/xml/dom/TextImpl;->substringData(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lorg/apache/harmony/xml/dom/TextImpl;->deleteData(II)V

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method
