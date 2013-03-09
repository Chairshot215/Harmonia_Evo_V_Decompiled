.class public Lorg/apache/xalan/transformer/KeyTable;
.super Ljava/lang/Object;
.source "KeyTable.java"


# instance fields
.field private m_docKey:I

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

.field private m_refsTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    iput p1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    iput-object p4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-direct {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyIterator;-><init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V

    new-instance v1, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v1, v0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->allowDetachToRelease(Z)V

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v1, p1, p5}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    return-void
.end method

.method private addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getCurrentNode()I

    move-result v1

    if-eq v1, p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    goto :goto_0
.end method

.method private getKeyDeclarations()Ljava/util/Vector;
    .locals 6

    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getRefsTable()Ljava/util/Hashtable;
    .locals 15

    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    if-nez v13, :cond_3

    new-instance v13, Ljava/util/Hashtable;

    const/16 v14, 0x59

    invoke-direct {v13, v14}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v13}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    :cond_0
    const/4 v13, -0x1

    iget-object v14, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v14}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    if-eq v13, v0, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_0

    :try_start_0
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {v6}, Lorg/apache/xalan/templates/KeyDeclaration;->getUse()Lorg/apache/xpath/XPath;

    move-result-object v13

    invoke-virtual {v8}, Lorg/apache/xalan/transformer/KeyIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v14

    invoke-virtual {v13, v11, v0, v14}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_2

    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    check-cast v12, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v12}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4

    :goto_1
    const/4 v13, -0x1

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v13, v1, :cond_1

    invoke-virtual {v11, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    invoke-direct {p0, v11, v3, v0}, Lorg/apache/xalan/transformer/KeyTable;->addValueInRefsTable(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/XMLString;I)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    new-instance v13, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v13, v10}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v13

    :cond_3
    iget-object v13, p0, Lorg/apache/xalan/transformer/KeyTable;->m_refsTable:Ljava/util/Hashtable;

    return-object v13
.end method


# virtual methods
.method public getDocKey()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_docKey:I

    return v0
.end method

.method getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/KeyIterator;

    check-cast v0, Lorg/apache/xalan/transformer/KeyIterator;

    return-object v0
.end method

.method public getKeyTableName()Lorg/apache/xml/utils/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyIterator()Lorg/apache/xalan/transformer/KeyIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 5

    invoke-direct {p0}, Lorg/apache/xalan/transformer/KeyTable;->getRefsTable()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/objects/XNodeSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lorg/apache/xalan/transformer/KeyTable;->m_keyNodes:Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    new-instance v2, Lorg/apache/xalan/transformer/KeyTable$1;

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lorg/apache/xalan/transformer/KeyTable$1;-><init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XNodeSet;->reset()V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method
