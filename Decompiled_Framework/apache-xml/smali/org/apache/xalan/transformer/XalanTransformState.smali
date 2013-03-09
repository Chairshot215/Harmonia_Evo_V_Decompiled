.class public Lorg/apache/xalan/transformer/XalanTransformState;
.super Ljava/lang/Object;
.source "XalanTransformState.java"

# interfaces
.implements Lorg/apache/xalan/transformer/TransformState;


# instance fields
.field m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

.field m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

.field m_currentNode:Lorg/w3c/dom/Node;

.field m_currentNodeHandle:I

.field m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_elemPending:Z

.field m_matchedNode:I

.field m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

.field m_node:Lorg/w3c/dom/Node;

.field m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNodeHandle:I

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    iput v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    iput-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-void
.end method


# virtual methods
.method public getContextNodeList()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0
.end method

.method public getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method public getMatchedNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-boolean v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_elemPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public resetState(Ljavax/xml/transform/Transformer;)V
    .locals 3

    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/apache/xalan/transformer/TransformerImpl;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentElement:Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedTemplate:Lorg/apache/xalan/templates/ElemTemplate;

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getCurrentNode()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_currentNode:Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedNode()I

    move-result v2

    iput v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_matchedNode:I

    iget-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_contextNodeList:Lorg/apache/xml/dtm/DTMIterator;

    :cond_0
    return-void
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/XalanTransformState;->m_node:Lorg/w3c/dom/Node;

    return-void
.end method
