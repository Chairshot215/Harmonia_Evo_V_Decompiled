.class public Lorg/apache/xalan/templates/ElemSort;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemSort.java"


# static fields
.field static final serialVersionUID:J = -0x454568220538dba2L


# instance fields
.field private m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

.field private m_dataType_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_order_avt:Lorg/apache/xalan/templates/AVT;

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemSort;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_4
    return-void
.end method

.method public getCaseOrder()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getDataType()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "sort"

    return-object v0
.end method

.method public getOrder()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public setCaseOrder(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setDataType(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setOrder(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ER_NO_CURLYBRACE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
