.class public Lorg/apache/xalan/templates/ElemValueOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemValueOf.java"


# static fields
.field static final serialVersionUID:J = 0x30718f09b2e3a7e2L


# instance fields
.field private m_disableOutputEscaping:Z

.field private m_isDot:Z

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4

    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemValueOf;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemValueOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

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

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    :try_start_0
    invoke-virtual {v6, p0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {v6, v0, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v7, :cond_0

    const-string v7, "javax.xml.transform.disable-output-escaping"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v7}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lorg/apache/xpath/Expression;->executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v7, :cond_1

    const-string v7, "javax.xml.transform.enable-output-escaping"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-void

    :catchall_0
    move-exception v7

    iget-boolean v8, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v8, :cond_2

    const-string v8, "javax.xml.transform.enable-output-escaping"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v7
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v4

    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :catch_1
    move-exception v2

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v5
.end method

.method public getDisableOutputEscaping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "value-of"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    :cond_0
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
