.class public Lorg/apache/xalan/templates/ElemIf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemIf.java"


# static fields
.field static final serialVersionUID:J = 0x1df582172bf67a5eL


# instance fields
.field private m_test:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    invoke-virtual {v2, v1, v0, p0}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "if"

    return-object v0
.end method

.method public getTest()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public setTest(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemIf;->m_test:Lorg/apache/xpath/XPath;

    return-void
.end method
