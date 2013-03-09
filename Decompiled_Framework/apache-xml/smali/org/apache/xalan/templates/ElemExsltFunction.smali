.class public Lorg/apache/xalan/templates/ElemExsltFunction;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "ElemExsltFunction.java"


# static fields
.field static final serialVersionUID:J = 0x3c6e37d4c54c533L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplate;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionHandlerClass()Ljava/lang/String;

    move-result-object v2

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v5

    aput-object p1, v0, v6

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    const-string v4, "http://exslt.org/functions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "http://exslt.org/functions"

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v3, v0, v5

    aput-object p1, v0, v6

    new-instance v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-direct {v1, v3, v2, v0}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;[Lorg/apache/xpath/objects/XObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v5

    iget v8, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v6, v8}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v3

    iget v8, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    array-length v9, p2

    if-ge v8, v9, :cond_0

    new-instance v8, Ljavax/xml/transform/TransformerException;

    const-string v9, "function called with too many args"

    invoke-direct {v8, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget v8, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v8, :cond_3

    const/4 v8, 0x0

    iget v9, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    invoke-virtual {v6, v8, v9}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    array-length v8, p2

    if-lez v8, :cond_3

    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExsltFunction;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v8, p2

    if-ge v2, v8, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v8, v8, Lorg/apache/xalan/templates/ElemParam;

    if-eqz v8, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemParam;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemParam;->getIndex()I

    move-result v8

    aget-object v9, p2, v2

    invoke-virtual {v6, v8, v9, v3}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_3
    invoke-virtual {v6, v3}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    const/4 v8, 0x1

    invoke-virtual {p1, p0, v8}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    invoke-virtual {v6, v5}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "function"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method
