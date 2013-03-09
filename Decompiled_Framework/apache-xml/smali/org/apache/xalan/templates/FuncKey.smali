.class public Lorg/apache/xalan/templates/FuncKey;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncKey.java"


# static fields
.field private static ISTRUE:Ljava/lang/Boolean; = null

.field static final serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xalan/transformer/TransformerImpl;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v4

    const/4 v3, -0x1

    if-ne v3, v4, :cond_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v22

    new-instance v5, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v8

    const/4 v3, 0x4

    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v7

    if-ne v3, v7, :cond_4

    const/4 v9, 0x1

    :goto_0
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/transformer/TransformerImpl;->getKeyManager()Lorg/apache/xalan/transformer/KeyManager;

    move-result-object v2

    if-eqz v9, :cond_1

    move-object/from16 v17, v8

    check-cast v17, Lorg/apache/xpath/objects/XNodeSet;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    move-result v13

    const/4 v3, 0x1

    if-gt v13, v3, :cond_1

    const/4 v9, 0x0

    :cond_1
    if-eqz v9, :cond_6

    const/16 v21, 0x0

    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v14

    new-instance v20, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct/range {v20 .. v20}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_2
    :goto_1
    const/4 v3, -0x1

    invoke-interface {v14}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v18

    move/from16 v0, v18

    if-eq v3, v0, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    move/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v21, :cond_3

    new-instance v21, Ljava/util/Hashtable;

    invoke-direct/range {v21 .. v21}, Ljava/util/Hashtable;-><init>()V

    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v15, v3, v0}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/apache/xpath/axes/UnionPathIterator;->addIterator(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v11

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    new-instance v16, Lorg/apache/xpath/objects/XNodeSet;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    :goto_2
    return-object v16

    :cond_6
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    goto :goto_2
.end method
