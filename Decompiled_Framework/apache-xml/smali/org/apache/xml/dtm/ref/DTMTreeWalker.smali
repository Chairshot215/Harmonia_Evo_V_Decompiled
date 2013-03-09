.class public Lorg/apache/xml/dtm/ref/DTMTreeWalker;
.super Ljava/lang/Object;
.source "DTMTreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dtm:Lorg/apache/xml/dtm/DTM;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/dtm/DTM;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method private final dispatachChars(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    return-void
.end method


# virtual methods
.method protected endNode(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v5, p1}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v6, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v5, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v7}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v2

    :goto_1
    const/4 v4, -0x1

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v2}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1, v2, v7}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v2

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v4, v4, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getcontentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public setDTM(Lorg/apache/xml/dtm/DTM;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method public setcontentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method protected startNode(I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/apache/xml/utils/NodeConsumer;

    if-eqz v2, :cond_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v11, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v7, v11}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-interface {v8, v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstNamespaceNode(IZ)I

    move-result v14

    :goto_1
    const/4 v2, -0x1

    if-eq v2, v14, :cond_2

    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v14}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-interface {v8, v0, v14, v2}, Lorg/apache/xml/dtm/DTM;->getNextNamespaceNode(IIZ)I

    move-result v14

    goto :goto_1

    :cond_2
    move/from16 v0, p1

    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v13, ""

    :cond_3
    new-instance v1, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    move/from16 v0, p1

    invoke-interface {v8, v0}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v9

    :goto_2
    const/4 v2, -0x1

    if-eq v9, v2, :cond_4

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDATA"

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v9

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v13, v3, v4, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "xslt-next-is-raw"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v10, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    move-object v11, v2

    :goto_3
    if-eqz v10, :cond_6

    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    if-eqz v10, :cond_1

    invoke-interface {v11}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->nextIsRaw:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, "javax.xml.transform.disable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, "javax.xml.transform.enable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->dispatachChars(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v2, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, -0x1

    move v1, p1

    :goto_0
    if-eq v3, p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    :cond_0
    if-ne v3, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-ne v1, p1, :cond_2

    :cond_1
    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    if-eq v3, p1, :cond_3

    if-ne v1, p1, :cond_0

    :cond_3
    if-eq v3, p1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public traverse(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, -0x1

    :goto_0
    if-eq v2, p1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->startNode(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    :cond_0
    if-ne v2, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->endNode(I)V

    if-eq v2, p2, :cond_2

    if-ne p2, p1, :cond_2

    :cond_1
    :goto_1
    move p1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p1

    if-eq v2, p1, :cond_3

    if-eq v2, p2, :cond_0

    if-ne p2, p1, :cond_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
