.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 17

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast v5, Lorg/apache/xalan/transformer/KeyIterator;

    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v8

    :try_start_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v11, v0}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v9

    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v12, -0x10

    cmpl-double v12, v9, v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    return v12

    :catch_0
    move-exception v12

    :cond_2
    if-nez v1, :cond_3

    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "ER_NO_XSLKEY_DECLARATION"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    const/4 v12, 0x2

    goto :goto_1
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method
