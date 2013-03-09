.class public Lorg/apache/xalan/templates/ElemTemplate;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTemplate.java"


# static fields
.field static final serialVersionUID:J = -0x49513028de1a297aL


# instance fields
.field private m_argsQNameIDs:[I

.field public m_frameSize:I

.field m_inArgsSize:I

.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_mode:Lorg/apache/xml/utils/QName;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_priority:D

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field private m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    const-wide/high16 v0, -0x10

    iput-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-void
.end method


# virtual methods
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

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result v1

    iput v1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "template"

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-wide v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public setPriority(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-void
.end method
