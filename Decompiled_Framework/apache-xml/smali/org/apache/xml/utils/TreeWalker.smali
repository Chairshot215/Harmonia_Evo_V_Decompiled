.class public Lorg/apache/xml/utils/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dh:Lorg/apache/xml/utils/DOMHelper;

.field private m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v0}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, p3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v10, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, ""

    :cond_1
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v11, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v11, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v8, v11, v12}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "xmlns:"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    const-string v9, ""

    :goto_2
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v10, v9}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_2
    move-object v3, p1

    check-cast v3, Lorg/w3c/dom/EntityReference;

    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v10, v10, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v10, :cond_0

    iget-object v6, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v6, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/xml/utils/NodeConsumer;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xml/utils/NodeConsumer;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/utils/NodeConsumer;->setOriginatingNode(Lorg/w3c/dom/Node;)V

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/xml/sax/Locator;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v14, p1

    check-cast v14, Lorg/xml/sax/Locator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    packed-switch v20, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v13, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v13, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v20, p1

    check-cast v20, Lorg/w3c/dom/Element;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v15

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v15, :cond_6

    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v20, "xmlns"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "xmlns:"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_3
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    const-string v19, ""

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_7

    const-string v17, ""

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/AttList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lorg/apache/xml/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v18, p1

    check-cast v18, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v16

    const-string v20, "xslt-next-is-raw"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v12, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v13, v20

    :goto_4
    if-eqz v12, :cond_9

    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_9
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    if-eqz v12, :cond_1

    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    const-string v21, "javax.xml.transform.disable-output-escaping"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    const-string v21, "javax.xml.transform.enable-output-escaping"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v9, p1

    check-cast v9, Lorg/w3c/dom/EntityReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v9}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V

    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public traverseFragment(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v1, p1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method
