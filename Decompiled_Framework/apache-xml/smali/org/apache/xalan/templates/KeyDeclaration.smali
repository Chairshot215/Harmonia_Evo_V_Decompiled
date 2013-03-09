.class public Lorg/apache/xalan/templates/KeyDeclaration;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "KeyDeclaration.java"


# static fields
.field static final serialVersionUID:J = 0x6b3144966407f67eL


# instance fields
.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_use:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/KeyDeclaration;->setUid(I)V

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

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    return-object v0
.end method

.method public getUse()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V

    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public setUse(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    return-void
.end method
