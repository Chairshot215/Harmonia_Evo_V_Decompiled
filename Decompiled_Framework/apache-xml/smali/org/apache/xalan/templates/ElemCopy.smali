.class public Lorg/apache/xalan/templates/ElemCopy;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemCopy.java"


# static fields
.field static final serialVersionUID:J = 0x4c07d43239755348L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v9, 0x1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {v7, v6}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    const/16 v8, 0x9

    if-eq v8, v2, :cond_1

    const/16 v8, 0xb

    if-eq v8, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v6, v2, v0, v4, v8}, Lorg/apache/xalan/transformer/ClonerToResultTree;->cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V

    if-ne v9, v2, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    invoke-static {v4, v6, v2, v0}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    const/4 v8, 0x1

    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v8

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v3, v1, v9}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    const/4 v8, 0x1

    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v8
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "copy"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
