.class public Lorg/apache/xalan/templates/ElemElement;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemElement.java"


# static fields
.field static final serialVersionUID:J = -0x48147bf6a23adefL


# instance fields
.field protected m_name_avt:Lorg/apache/xalan/templates/AVT;

.field protected m_namespace_avt:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    return-void
.end method

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v3, 0x1

    invoke-interface {v0, p2, p3, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_2
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p4}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-nez v7, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "name"

    aput-object v10, v9, v11

    aput-object v1, v9, v12

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v3, v2, p1}, Lorg/apache/xalan/templates/ElemElement;->constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V

    return-void

    :cond_1
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "ER_NULL_URI_NAMESPACE"

    invoke-virtual {v7, p0, v8}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/xalan/templates/ElemElement;->resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/ElemElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    const-string v2, ""

    goto :goto_1

    :cond_8
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v3, v9, v11

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "element"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-object p2
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setNamespace(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method
