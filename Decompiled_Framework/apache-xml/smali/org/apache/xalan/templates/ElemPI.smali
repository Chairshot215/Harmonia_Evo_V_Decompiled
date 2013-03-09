.class public Lorg/apache/xalan/templates/ElemPI;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemPI.java"


# static fields
.field static final serialVersionUID:J = 0x4e0545caffe5c0e1L


# instance fields
.field private m_name_atv:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemPI;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemPI;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :sswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1e -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x32 -> :sswitch_0
        0x48 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4b -> :sswitch_0
        0x4e -> :sswitch_0
    .end sparse-switch
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

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v5, v4, v3, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v5, "xml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v5

    const-string v6, "WG_PROCESSINGINSTRUCTION_NAME_CANT_BE_XML"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "name"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v5}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v5

    const-string v6, "WG_PROCESSINGINSTRUCTION_NOTVALID_NCNAME"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "name"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "processing-instruction"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-void
.end method
