.class public Lorg/apache/xalan/templates/ElemChoose;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemChoose.java"


# static fields
.field static final serialVersionUID:J = -0x2a9b3f7976fe6851L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemChoose;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public canAcceptVariables()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    const/16 v6, 0x26

    if-ne v6, v3, :cond_1

    const/4 v1, 0x1

    move-object v4, v0

    check-cast v4, Lorg/apache/xalan/templates/ElemWhen;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemWhen;->getTest()Lorg/apache/xpath/XPath;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v4}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v4, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v6, 0x27

    if-ne v6, v3, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v6

    const-string v7, "ER_CHOOSE_REQUIRES_WHEN"

    invoke-virtual {v6, p0, v7}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "choose"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
