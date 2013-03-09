.class public Lorg/apache/xalan/templates/ElemWithParam;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWithParam.java"


# static fields
.field static final serialVersionUID:J = -0xedaaa5c88e4d871L


# instance fields
.field m_index:I

.field private m_qname:Lorg/apache/xml/utils/QName;

.field m_qnameID:I

.field private m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xsl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result v2

    iput v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "with-param"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    :try_start_0
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, v2, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v0

    new-instance v1, Lorg/apache/xpath/objects/XRTreeFrag;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v3
.end method

.method public getXSLToken()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-void
.end method
