.class public Lorg/apache/xalan/templates/ElemParam;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemParam.java"


# static fields
.field static final serialVersionUID:J = -0xfb4e5416fd9a45fL


# instance fields
.field m_qnameID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/templates/ElemParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;-><init>(Lorg/apache/xalan/templates/ElemVariable;)V

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemVariable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result v1

    iput v1, p0, Lorg/apache/xalan/templates/ElemParam;->m_qnameID:I

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    iget v2, v1, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    :cond_1
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {v2, v3}, Lorg/apache/xpath/VariableStack;->isLocalSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v3

    iget v4, p0, Lorg/apache/xalan/templates/ElemVariable;->m_index:I

    invoke-virtual {v3, v4, v1}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;)V

    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "param"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method
