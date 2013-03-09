.class public Lorg/apache/xpath/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "XObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 2

    instance-of v1, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/xpath/objects/XObject;

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    new-instance v0, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 7

    instance-of v6, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v6, :cond_0

    move-object v5, p0

    check-cast v5, Lorg/apache/xpath/objects/XObject;

    :goto_0
    return-object v5

    :cond_0
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    new-instance v5, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v6, p0, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    new-instance v5, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_3

    new-instance v5, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Number;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :cond_3
    instance-of v6, p0, Lorg/apache/xml/dtm/DTM;

    if-eqz v6, :cond_4

    move-object v0, p0

    check-cast v0, Lorg/apache/xml/dtm/DTM;

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    const/16 v6, 0xd

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v6, 0xd

    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    invoke-interface {v4, v1, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_4
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v6, :cond_5

    move-object v3, p0

    check-cast v3, Lorg/apache/xml/dtm/DTMAxisIterator;

    :try_start_1
    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v6, 0xd

    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMAxisIterator;->getStartNode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_5
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v6, :cond_6

    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0

    :cond_6
    instance-of v6, p0, Lorg/w3c/dom/Node;

    if-eqz v6, :cond_7

    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/Node;

    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V

    goto/16 :goto_0

    :cond_7
    instance-of v6, p0, Lorg/w3c/dom/NodeList;

    if-eqz v6, :cond_8

    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/NodeList;

    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    goto/16 :goto_0

    :cond_8
    instance-of v6, p0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v6, :cond_9

    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    goto/16 :goto_0

    :cond_9
    new-instance v5, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
