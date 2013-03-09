.class public Lorg/apache/xml/utils/DOMHelper;
.super Ljava/lang/Object;
.source "DOMHelper.java"


# static fields
.field protected static final m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

.field protected static final m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;


# instance fields
.field protected m_DOMFactory:Lorg/w3c/dom/Document;

.field m_NSInfos:Ljava/util/Hashtable;

.field protected m_candidateNoAncestorXMLNS:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v1, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v2}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZ)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    new-instance v0, Lorg/apache/xml/utils/NSInfo;

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/xml/utils/NSInfo;-><init>(ZZI)V

    sput-object v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static createDocument()Lorg/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/xml/utils/DOMHelper;->createDocument(Z)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static createDocument(Z)Lorg/w3c/dom/Document;
    .locals 7

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ER_CREATEDOCUMENT_NOT_SUPPORTED"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v2
.end method

.method public static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
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

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
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

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v6, 0x2

    if-ne v6, v2, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "Core"

    const-string v7, "2.0"

    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-static {v5, p0}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_1
    move-object v4, v3

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 13

    const/4 v11, 0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v2, v11

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    invoke-static {p0}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eq v5, v6, :cond_3

    invoke-static {v5, v6}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    if-eqz v5, :cond_1

    invoke-static {v5, p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    const/4 v4, 0x2

    :goto_1
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-static {v6}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v9, p0

    move-object v10, p1

    if-ge v3, v4, :cond_7

    sub-int v0, v4, v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-le v3, v4, :cond_8

    sub-int v0, v3, v4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_8

    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5
    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_9

    invoke-static {v9, v10}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_9
    if-nez v7, :cond_b

    if-ge v3, v4, :cond_a

    move v2, v11

    :goto_6
    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    invoke-static {v9, v7, v8}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0

    :cond_c
    move-object v7, v9

    invoke-static {v9}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v10

    invoke-static {v10}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_5
.end method

.method private static isNodeAfterSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v9, v1, :cond_1

    if-ne v9, v2, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-ne v9, v1, :cond_2

    if-eq v9, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    if-ne v9, v1, :cond_9

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    if-eqz v5, :cond_4

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-eq p2, v0, :cond_7

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_7
    if-eqz v4, :cond_8

    const/4 v7, 0x1

    goto :goto_0

    :cond_8
    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_a

    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_a
    if-eqz v5, :cond_b

    const/4 v7, 0x0

    goto :goto_0

    :cond_b
    const/4 v4, 0x1

    :cond_c
    :goto_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_3

    :cond_d
    if-eq p2, v0, :cond_e

    invoke-static {p2, v0}, Lorg/apache/xml/utils/DOMHelper;->isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_e
    if-eqz v4, :cond_f

    const/4 v7, 0x1

    goto :goto_0

    :cond_f
    const/4 v5, 0x1

    goto :goto_4
.end method

.method public static isNodeTheSame(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 1

    instance-of v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->equals(Lorg/w3c/dom/Node;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move-object v2, p0

    :cond_0
    if-nez v2, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-static {v3, p1}, Lorg/apache/xml/utils/DOMHelper;->locateAttrParent(Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getDOMFactory()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xml/utils/DOMHelper;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedAttributeName(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExpandedElementName(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLevel(Lorg/w3c/dom/Node;)S
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    move-object v3, p2

    const/4 v2, 0x0

    const-string v5, "xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v5, "xmlns"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    :cond_2
    const-string v5, ""

    if-ne p1, v5, :cond_4

    const-string v1, "xmlns"

    :goto_1
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v4, v7, :cond_3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    :cond_3
    if-ne v4, v7, :cond_5

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 28

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_1

    const/16 v18, 0x0

    :goto_0
    if-nez v18, :cond_2

    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    move-object/from16 v0, v18

    iget-object v14, v0, Lorg/apache/xml/utils/NSInfo;->m_namespace:Ljava/lang/String;

    :cond_0
    :goto_2
    move-object v15, v14

    :goto_3
    return-object v15

    :cond_1
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_0

    :cond_2
    move-object/from16 v0, v18

    iget-boolean v8, v0, Lorg/apache/xml/utils/NSInfo;->m_hasProcessedNS:Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/16 v18, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const/16 v25, 0x3a

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    if-lez v10, :cond_6

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    :goto_4
    const/4 v4, 0x0

    const/4 v13, 0x0

    const-string v25, "xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v14, "http://www.w3.org/XML/1998/namespace"

    :cond_5
    :goto_5
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    if-nez v14, :cond_1c

    if-eqz v4, :cond_1b

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v15, v14

    goto :goto_3

    :cond_7
    if-ltz v10, :cond_8

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    :goto_6
    goto :goto_4

    :cond_8
    const-string v24, ""

    goto :goto_6

    :cond_9
    move-object/from16 v22, p1

    :cond_a
    :goto_7
    if-eqz v22, :cond_b

    if-nez v14, :cond_b

    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/xml/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_5

    if-nez v4, :cond_19

    if-nez v22, :cond_19

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v12, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    add-int/lit8 v26, v9, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    :cond_d
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xml/utils/NSInfo;->m_hasXMLNSAttrs:Z

    move/from16 v25, v0

    if-eqz v25, :cond_12

    :cond_e
    const/4 v7, 0x0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v16

    const/4 v9, 0x0

    :goto_a
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_11

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x78

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const-string v25, "xmlns:"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v25, "xmlns"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_f

    if-eqz v11, :cond_14

    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    :cond_10
    const/4 v7, 0x1

    const/4 v4, 0x1

    if-eqz v11, :cond_13

    const/16 v25, 0x6

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    :goto_b
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    :cond_11
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    if-nez v18, :cond_12

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    if-eqz v7, :cond_15

    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithXMLNS:Lorg/apache/xml/utils/NSInfo;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/16 v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    invoke-static/range {v22 .. v22}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v22

    :goto_d
    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_17

    const/16 v18, 0x0

    :goto_e
    goto/16 :goto_7

    :cond_13
    const-string v21, ""

    goto :goto_b

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    :cond_15
    sget-object v18, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoUnProcWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v22

    goto :goto_d

    :cond_17
    check-cast v19, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v18, v19

    goto :goto_e

    :cond_18
    sget-object v25, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    if-ne v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    sget-object v27, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    invoke-virtual/range {v25 .. v27}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_candidateNoAncestorXMLNS:Ljava/util/Vector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullWithoutXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    sget-object v26, Lorg/apache/xml/utils/DOMHelper;->m_NSInfoNullNoAncestorXMLNS:Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/DOMHelper;->m_NSInfos:Ljava/util/Hashtable;

    move-object/from16 v25, v0

    new-instance v26, Lorg/apache/xml/utils/NSInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v14, v13}, Lorg/apache/xml/utils/NSInfo;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public getRoot(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    move-object v0, p1

    invoke-static {p1}, Lorg/apache/xml/utils/DOMHelper;->getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRootNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v1, v0, :cond_0

    const/16 v1, 0xb

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_0
.end method

.method public getUniqueID(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6

    const-string v4, ""

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Entity;

    if-nez v2, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v5, v4

    goto :goto_0
.end method

.method public isIgnorableWhitespace(Lorg/w3c/dom/Text;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "xmlns:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xmlns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setDOMFactory(Lorg/w3c/dom/Document;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/DOMHelper;->m_DOMFactory:Lorg/w3c/dom/Document;

    return-void
.end method

.method public shouldStripSourceNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
