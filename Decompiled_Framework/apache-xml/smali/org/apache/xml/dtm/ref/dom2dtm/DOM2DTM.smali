.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "DOM2DTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;
    }
.end annotation


# static fields
.field static final JJK_DEBUG:Z = false

.field static final JJK_NEWCODE:Z = true

.field static final NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_last_kid:I

.field private m_last_parent:I

.field protected m_nodes:Ljava/util/Vector;

.field private transient m_nodesAreProcessed:Z

.field private transient m_pos:Lorg/w3c/dom/Node;

.field m_processedFirstElement:Z

.field private transient m_root:Lorg/w3c/dom/Node;

.field m_walker:Lorg/apache/xml/utils/TreeWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, -0x1

    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    iput v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iget v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    iput v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, v4

    :goto_0
    if-lez v2, :cond_2

    const/4 v0, -0x1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_2
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    return-void
.end method

.method protected static dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, p1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    if-nez p2, :cond_0

    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 4

    if-eqz p1, :cond_3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v3

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v1, :cond_0

    if-lt v0, v2, :cond_0

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isSpace(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method

.method private logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_4

    const/4 v2, 0x4

    if-eq v2, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    return-object p1
.end method


# virtual methods
.method protected addNode(Lorg/w3c/dom/Node;III)I
    .locals 13

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v8

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v11

    ushr-int/lit8 v12, v8, 0x10

    if-ne v11, v12, :cond_0

    :try_start_0
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v11, :cond_9

    new-instance v11, Ljava/lang/ClassCastException;

    invoke-direct {v11}, Ljava/lang/ClassCastException;-><init>()V

    throw v11
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v11, "ER_NO_DTMIDS_AVAIL"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v11, v0, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    :goto_1
    const/4 v11, 0x2

    if-ne v11, v10, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "xmlns:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "xmlns"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const/16 v10, 0xd

    :cond_2
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, p2, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    const/4 v11, -0x1

    if-eq v11, p2, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/16 v11, 0xd

    if-eq v10, v11, :cond_3

    const/4 v11, -0x2

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v12

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v8, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x7

    if-ne v10, v11, :cond_b

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    :cond_4
    if-nez v5, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    :cond_5
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    :cond_6
    if-eqz v5, :cond_c

    invoke-virtual {v2, v9, v5, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    :goto_3
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    invoke-virtual {p0, v3, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->indexNode(II)V

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v11, v0, :cond_7

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_7
    const/16 v11, 0xd

    if-ne v10, v11, :cond_8

    invoke-virtual {p0, p2, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->declareNamespaceInContext(II)V

    :cond_8
    return v8

    :cond_9
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    check-cast v6, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v4

    invoke-virtual {v6, p0, v4, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v12, v4, 0x10

    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    move/from16 v10, p4

    goto/16 :goto_1

    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v3

    goto :goto_3
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-interface {v1, v3, v3, v4}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    const/4 v3, 0x3

    if-eq v3, v2, :cond_2

    const/4 v3, 0x4

    if-ne v3, v2, :cond_0

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    goto :goto_0
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    invoke-virtual {v2}, Lorg/apache/xml/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/xml/utils/TreeWalker;

    invoke-direct {v2, v4}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw v3
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v5, -0x1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    const/4 v6, 0x1

    if-ne v6, v4, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v5, v0, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_type(I)S

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/16 v6, 0xd

    if-ne v4, v6, :cond_4

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v5

    :cond_4
    return v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 8

    const/4 v6, -0x1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/w3c/dom/Document;

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    if-ne v6, v2, :cond_1

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v3

    if-eq v6, v3, :cond_1

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-ne v4, v1, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    :cond_1
    :goto_1
    return v2

    :cond_2
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleOfNode(Lorg/w3c/dom/Node;)I
    .locals 4

    const/16 v3, 0x9

    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-ne v1, v2, :cond_4

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    :goto_1
    return v1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v5, v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    move-object v2, v4

    :goto_1
    goto :goto_0

    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNextNodeIdentity(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7

    const/4 v5, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_exptype(I)I

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    :goto_0
    const/4 v5, 0x3

    if-eq v5, v4, :cond_1

    const/4 v5, 0x4

    if-eq v5, v4, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_1

    :cond_4
    const-string v3, ""

    goto :goto_3
.end method

.method public getNumberOfNodes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const-string v2, ""

    :goto_0
    return-object v2

    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string v2, ""

    :goto_1
    goto :goto_0

    :cond_0
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string v2, ""

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/16 v4, 0x9

    if-eq v4, v3, :cond_0

    const/16 v4, 0xb

    if-ne v4, v3, :cond_2

    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    :try_start_1
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v4

    :cond_2
    const/4 v4, 0x3

    if-eq v4, v3, :cond_3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_6

    :cond_3
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v2, ""

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_1
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v5, ""

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/w3c/dom/Document;

    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v6, v5

    :goto_1
    return-object v6

    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Entity;

    if-nez v3, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v5

    :cond_3
    move-object v6, v5

    goto :goto_1
.end method

.method public isAttributeSpecified(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWhitespace(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v4, 0x3

    if-eq v4, v3, :cond_0

    const/4 v4, 0x4

    if-ne v4, v3, :cond_2

    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v0

    invoke-static {v1}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    :cond_2
    return v0
.end method

.method protected lookupNode(I)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public needsTwoThreads()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected nextNode()Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    const/4 v11, 0x0

    const/4 v13, -0x1

    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_2

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    :cond_2
    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v15

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->pushShouldStripWhitespace(Z)V

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v0, v13, :cond_5

    move-object v14, v11

    :cond_5
    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v0, v13, :cond_1

    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v15, 0x1

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_a

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    :cond_a
    if-eqz v11, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    if-nez v14, :cond_d

    :cond_d
    if-eqz v14, :cond_e

    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->popShouldStripWhitespace()V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_4

    :cond_10
    const/16 v16, 0x0

    const/4 v9, 0x0

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_11

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_14

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v16, 0x1

    :goto_5
    move-object v10, v11

    :goto_6
    if-eqz v10, :cond_15

    move-object v9, v10

    const/16 v18, 0x3

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/4 v13, 0x3

    :cond_12
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v18

    and-int v16, v16, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_6

    :cond_13
    const/16 v16, 0x0

    goto :goto_5

    :cond_14
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v0, v13, :cond_15

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    :cond_15
    if-nez v16, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v13}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_1a

    const/4 v5, -0x1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    if-nez v6, :cond_17

    const/4 v7, 0x0

    :goto_7
    if-lez v7, :cond_18

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_18

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    const-string v18, "xmlns:xml"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_17
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    goto :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    new-instance v20, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    move-object/from16 v18, v11

    check-cast v18, Lorg/w3c/dom/Element;

    const-string v21, "xml"

    const-string v22, "http://www.w3.org/XML/1998/namespace"

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_1d

    move/from16 v19, v12

    :goto_9
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_19
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_1a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_1b

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_1c

    :cond_1b
    move-object v11, v9

    :cond_1c
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_1d
    move/from16 v19, v5

    goto :goto_9
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
