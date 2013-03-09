.class public Lorg/apache/xalan/templates/ElemApplyImport;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemApplyImport.java"


# static fields
.field static final serialVersionUID:J = 0x343f00c5e0148b26L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

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

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemApplyImport;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemApplyImport;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentTemplateRuleIsNull()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v2

    const-string v3, "ER_NO_APPLY_IMPORT_IN_FOR_EACH"

    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v2

    const-string v3, "ER_NULL_SOURCENODE_APPLYIMPORTS"

    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "apply-imports"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method
