.class public Lorg/apache/xpath/functions/FuncId;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncId.java"


# static fields
.field static final serialVersionUID:J = 0x7befc5b4bc56b5ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method

.method private getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;
    .locals 6

    if-eqz p3, :cond_5

    const/4 v3, 0x0

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz p4, :cond_1

    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getElementById(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v5, v2, :cond_2

    invoke-virtual {p5, v2, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    :cond_2
    if-eqz v3, :cond_0

    if-nez v1, :cond_3

    if-eqz p6, :cond_0

    :cond_3
    if-nez p4, :cond_4

    new-instance p4, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p4}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :cond_4
    invoke-virtual {p4, v3}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object p4
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v4

    const/4 v2, -0x1

    if-ne v2, v4, :cond_0

    const-string v2, "ER_CONTEXT_HAS_NO_OWNERDOC"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/functions/FuncId;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v16

    new-instance v21, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v7

    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v2, v0, :cond_2

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v20

    const/4 v6, 0x0

    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v22

    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v22

    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_4

    :cond_3
    :goto_2
    return-object v21

    :cond_4
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lorg/apache/xpath/functions/FuncId;->getNodesByID(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Lorg/apache/xml/utils/StringVector;Lorg/apache/xpath/NodeSetDTM;Z)Lorg/apache/xml/utils/StringVector;

    goto :goto_2
.end method
