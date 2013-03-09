.class public Lorg/apache/xpath/operations/Variable;
.super Lorg/apache/xpath/Expression;
.source "Variable.java"

# interfaces
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field static final serialVersionUID:J = -0x3c28ed22ed41f899L


# instance fields
.field private m_fixUpWasCalled:Z

.field protected m_index:I

.field protected m_isGlobal:Z

.field protected m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0

    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z

    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/Variable;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/operations/Variable;

    iget-object v0, v0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v0

    check-cast p1, Lorg/apache/xpath/operations/Variable;

    invoke-virtual {p1}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v2, "WG_ILLEGAL_VARIABLE_REFERENCE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v5}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/operations/Variable;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 9

    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ge v0, p2, :cond_0

    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    iput v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    :goto_1
    return-void

    :cond_0
    sub-int v5, v0, p2

    iput v5, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string v5, "ER_COULD_NOT_FIND_VAR"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v8}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public getAnalysisBits()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/high16 v3, 0x400

    goto :goto_0
.end method

.method public getElemVariable()Lorg/apache/xalan/templates/ElemVariable;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v5, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v5, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    instance-of v5, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v5, :cond_3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v5, :cond_3

    move-object v2, v1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v5, v1, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v5, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v4, v3

    :goto_2
    return-object v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v5, v6}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v3

    :cond_4
    move-object v4, v3

    goto :goto_2
.end method

.method public getGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return v0
.end method

.method public getQName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public isPsuedoVarRef()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStableNumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return-void
.end method

.method public setIsGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return-void
.end method

.method public setQName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method
