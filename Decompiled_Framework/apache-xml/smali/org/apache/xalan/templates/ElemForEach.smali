.class public Lorg/apache/xalan/templates/ElemForEach;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemForEach.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x5384bb05f6cb70caL


# instance fields
.field public m_doc_cache_off:Z

.field protected m_selectExpression:Lorg/apache/xpath/Expression;

.field protected m_sortElems:Ljava/util/Vector;

.field protected m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x40

    if-ne v1, v0, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemSort;

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemForEach;->setSortElem(Lorg/apache/xalan/templates/ElemSort;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_0
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p0, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemSort;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v3}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    goto :goto_1
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "for-each"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getSortElem(I)Lorg/apache/xalan/templates/ElemSort;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemSort;

    return-object v0
.end method

.method public getSortElemCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getTemplateMatch()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 0

    return-object p0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public setSortElem(Lorg/apache/xalan/templates/ElemSort;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xalan/transformer/NodeSorter;

    invoke-direct {v0, p1}, Lorg/apache/xalan/transformer/NodeSorter;-><init>(Lorg/apache/xpath/XPathContext;)V

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    const/4 v1, -0x1

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Lorg/apache/xalan/transformer/NodeSorter;->sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    return-object p3

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    throw v1
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v7

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v11, v10, v7}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    :try_start_0
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v11, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {p0, v10, v5, v8}, Lorg/apache/xalan/templates/ElemForEach;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    :cond_0
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v2

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    invoke-virtual {v10, v8}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v10, v7}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    const/high16 v11, -0x1

    and-int v3, v7, v11

    :cond_1
    :goto_1
    const/4 v11, -0x1

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    if-eq v11, v0, :cond_5

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    const/high16 v11, -0x1

    and-int/2addr v11, v0

    if-eq v11, v3, :cond_2

    invoke-virtual {v10, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    const/high16 v11, -0x1

    and-int v3, v0, v11

    :cond_2
    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v6

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v10, v9}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1, v9}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    invoke-virtual {v9, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    iget-object v9, v9, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v5

    goto :goto_0

    :cond_4
    iget-boolean v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v11

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/xpath/SourceTreeManager;->removeDocumentFromCache(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lorg/apache/xpath/XPathContext;->release(Lorg/apache/xml/dtm/DTM;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v11

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    throw v11

    :cond_5
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    return-void
.end method
