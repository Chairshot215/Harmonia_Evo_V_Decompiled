.class public Lorg/apache/xpath/objects/XNodeSet;
.super Lorg/apache/xpath/axes/NodeSequence;
.source "XNodeSet.java"


# static fields
.field static final S_EQ:Lorg/apache/xpath/objects/EqualComparator; = null

.field static final S_GT:Lorg/apache/xpath/objects/GreaterThanComparator; = null

.field static final S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator; = null

.field static final S_LT:Lorg/apache/xpath/objects/LessThanComparator; = null

.field static final S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator; = null

.field static final S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator; = null

.field static final serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xpath/objects/LessThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    new-instance v0, Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    new-instance v0, Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    new-instance v0, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    new-instance v0, Lorg/apache/xpath/objects/EqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/EqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    new-instance v0, Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/NotEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 1

    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    instance-of v1, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    iget-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    iget-object v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iget v1, v0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iget v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    :cond_0
    iget-object v0, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void
.end method

.method public bool()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public boolWithSideEffects()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    const/4 v12, 0x0

    :cond_0
    :goto_0
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    move/from16 v0, v21

    if-eq v0, v10, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    if-nez v12, :cond_3

    :goto_1
    const/16 v21, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v11

    move/from16 v0, v21

    if-eq v0, v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    if-nez v12, :cond_2

    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_0

    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/xml/utils/XMLString;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v17, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    :goto_3
    return v17

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->bool()Z

    move-result v21

    if-eqz v21, :cond_7

    const-wide/high16 v13, 0x3ff0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v15

    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v13, v14, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v17

    goto :goto_3

    :cond_7
    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_8
    const/16 v21, 0x2

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v15

    :cond_9
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    move/from16 v0, v21

    if-eq v0, v9, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v13

    move-object/from16 v0, p2

    move-wide v1, v15

    invoke-virtual {v0, v13, v14, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v17, 0x1

    :cond_a
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto :goto_3

    :cond_b
    const/16 v21, 0x5

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    :cond_c
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    move/from16 v0, v21

    if-eq v0, v9, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v17, 0x1

    :cond_d
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto :goto_3

    :cond_e
    const/16 v21, 0x3

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    :cond_f
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    move/from16 v0, v21

    if-eq v0, v9, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v17, 0x1

    :cond_10
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->num()D

    move-result-wide v21

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v23

    move-object/from16 v0, p2

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v17

    goto/16 :goto_3
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2

    :try_start_0
    sget-object v1, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/XObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNumberFromNode(I)D
    .locals 3

    iget-object v1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v1

    return-wide v1
.end method

.method public getStringFromNode(I)Lorg/apache/xml/utils/XMLString;
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "#NODESET"

    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    .locals 0

    return-object p0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setCurrentPos(I)V

    goto :goto_0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v1, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;->getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    return-object v1
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public num()D
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, 0x7ff8

    goto :goto_0
.end method

.method public numWithSideEffects()D
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, 0x7ff8

    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public release(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0

    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0
.end method
