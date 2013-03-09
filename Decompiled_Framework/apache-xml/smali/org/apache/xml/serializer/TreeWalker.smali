.class public final Lorg/apache/xml/serializer/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private final m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private final m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected final m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field private final m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    iput-object p1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v0, Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

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
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    new-instance v0, Lorg/apache/xml/serializer/utils/DOM2Helper;

    invoke-direct {v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

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
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lorg/w3c/dom/Text;

    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v10, ""

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v10, v14, v15}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_Serializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-nez v13, :cond_0

    move-object/from16 v5, p1

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    :goto_1
    if-ltz v7, :cond_6

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0x3a

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v13, "xmlns"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "xmlns:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_2
    if-gez v4, :cond_4

    const-string v11, ""

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_5
    if-lez v4, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    const-string v11, ""

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v13, v11}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v6, p1

    check-cast v6, Lorg/w3c/dom/EntityReference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v13, v13, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v8, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v6}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

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

    iget-object v0, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/xml/sax/Locator;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v15, p1

    check-cast v15, Lorg/xml/sax/Locator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    invoke-interface {v15}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/w3c/dom/Comment;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v14, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v10, p1

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2

    const-string v20, ""

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v16

    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_8

    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const-string v22, "xmlns"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "xmlns:"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    :cond_4
    if-gez v8, :cond_6

    const-string v20, ""

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_3

    :cond_7
    if-lez v8, :cond_5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_9

    const-string v18, ""

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Lorg/apache/xml/serializer/utils/AttList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v7, v1}, Lorg/apache/xml/serializer/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v19, p1

    check-cast v19, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v22, "xslt-next-is-raw"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v13, v0, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    check-cast v22, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v14, v22

    :goto_5
    if-eqz v13, :cond_b

    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_b
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    if-eqz v13, :cond_0

    invoke-interface {v14}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/serializer/TreeWalker;->nextIsRaw:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.disable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    const-string v23, "javax.xml.transform.enable-output-escaping"

    const-string v24, ""

    invoke-interface/range {v22 .. v24}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v11, p1

    check-cast v11, Lorg/w3c/dom/EntityReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v22, v0

    check-cast v22, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v11}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    move-object v1, p1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

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

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

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
    iget-object v1, p0, Lorg/apache/xml/serializer/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method
