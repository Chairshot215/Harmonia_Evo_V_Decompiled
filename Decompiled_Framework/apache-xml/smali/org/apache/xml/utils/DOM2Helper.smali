.class public Lorg/apache/xml/utils/DOM2Helper;
.super Lorg/apache/xml/utils/DOMHelper;
.source "DOM2Helper.java"


# instance fields
.field private m_doc:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/utils/DOMHelper;-><init>()V

    return-void
.end method

.method public static getParentOfNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v1, v2, :cond_0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 3

    instance-of v2, p0, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/apache/xml/utils/DOMOrder;

    if-eqz v2, :cond_1

    check-cast p0, Lorg/apache/xml/utils/DOMOrder;

    invoke-interface {p0}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v0

    check-cast p1, Lorg/apache/xml/utils/DOMOrder;

    invoke-interface {p1}, Lorg/apache/xml/utils/DOMOrder;->getUid()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public checkNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByID(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/utils/DOM2Helper;->setDocument(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v4

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v3

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v1

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/DOM2Helper;->m_doc:Lorg/w3c/dom/Document;

    return-void
.end method

.method public supportsSAX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
