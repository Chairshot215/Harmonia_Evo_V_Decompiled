.class public Lorg/apache/xpath/functions/FuncCurrent;
.super Lorg/apache/xpath/functions/Function;
.source "FuncCurrent.java"


# static fields
.field static final serialVersionUID:J = 0x4f50e25a5d8e8640L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v2

    const/4 v0, -0x1

    if-eqz v2, :cond_2

    instance-of v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    invoke-virtual {v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentContextNode()I

    move-result v0

    :cond_0
    :goto_0
    new-instance v3, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v3

    :cond_1
    instance-of v3, v2, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_PROCESSOR_ERROR"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v0

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method
