.class public Lorg/apache/xml/utils/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# instance fields
.field protected m_currentNode:Lorg/w3c/dom/Node;

.field public m_doc:Lorg/w3c/dom/Document;

.field public m_docFrag:Lorg/w3c/dom/DocumentFragment;

.field protected m_elemStack:Ljava/util/Stack;

.field protected m_inCData:Z

.field protected m_nextSibling:Lorg/w3c/dom/Node;

.field protected m_prefixMappings:Ljava/util/Vector;

.field protected m_root:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    instance-of v0, p2, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private isOutsideDocElem()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected append(Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1, v4}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/DocumentFragment;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    invoke-interface {v4, p1}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "ER_CANT_OUTPUT_TEXT_BEFORE_DOC"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v2, 0x0

    :cond_6
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    iget-object v5, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/Document;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "ER_CANT_HAVE_MORE_THAN_ONE_ROOT"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    iget-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public cdata([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v2, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/CDATASection;

    invoke-interface {v1, v0}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/DOMBuilder;->cdata([CII)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public charactersRaw([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace([CII)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v2, "xslt-next-is-raw"

    const-string v3, "formatter-to-dom"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getRootDocument()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_docFrag:Lorg/w3c/dom/DocumentFragment;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    goto :goto_0
.end method

.method public getRootNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_root:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xml/utils/DOMBuilder;->isOutsideDocElem()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public setNextSibling(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/DOMBuilder;->m_nextSibling:Lorg/w3c/dom/Node;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_inCData:Z

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    :cond_0
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    const/4 v10, 0x0

    invoke-interface {v9, v10, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/xml/utils/DOMBuilder;->append(Lorg/w3c/dom/Node;)V

    :try_start_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_6

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ID"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v4}, Lorg/apache/xml/utils/DOMBuilder;->setIDAttribute(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_1
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "xmlns:"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "xmlns"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v0, "http://www.w3.org/2000/xmlns/"

    :cond_4
    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_doc:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_8

    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_7

    :goto_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v9, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v4, v9, v8, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_8
    :try_start_2
    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    iget-object v9, p0, Lorg/apache/xml/utils/DOMBuilder;->m_elemStack:Ljava/util/Stack;

    invoke-virtual {v9, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/xml/utils/DOMBuilder;->m_currentNode:Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "xmlns"

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xml/utils/DOMBuilder;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
