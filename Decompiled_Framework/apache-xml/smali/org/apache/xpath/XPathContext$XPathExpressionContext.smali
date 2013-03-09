.class public Lorg/apache/xpath/XPathContext$XPathExpressionContext;
.super Ljava/lang/Object;
.source "XPathContext.java"

# interfaces
.implements Lorg/apache/xalan/extensions/ExpressionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/XPathContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XPathExpressionContext"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextNode()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method public getContextNodes()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    iget-object v0, v0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    return-object v0
.end method

.method public final getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    #getter for: Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;
    invoke-static {v0}, Lorg/apache/xpath/XPathContext;->access$000(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public toNumber(Lorg/w3c/dom/Node;)D
    .locals 5

    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XString;->num()D

    move-result-wide v3

    return-wide v3
.end method

.method public toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    iget-object v3, p0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;->this$0:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v3, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
