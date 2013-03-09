.class public Lorg/apache/xalan/templates/ElemTemplateElement;
.super Lorg/apache/xml/utils/UnImplNode;
.source "ElemTemplateElement.java"

# interfaces
.implements Lorg/apache/xml/utils/PrefixResolver;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/WhitespaceStrippingElementMatcher;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field static final serialVersionUID:J = 0x3d9e1d63f87d91cfL


# instance fields
.field private transient m_DOMBackPointer:Lorg/w3c/dom/Node;

.field private m_columnNumber:I

.field private m_declaredPrefixes:Ljava/util/List;

.field private m_defaultSpace:Z

.field protected m_docOrderNumber:I

.field private m_endColumnNumber:I

.field private m_endLineNumber:I

.field m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_hasTextLitOnly:Z

.field protected m_hasVariableDecl:Z

.field private m_lineNumber:I

.field m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

.field protected m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

.field private m_prefixTable:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xml/utils/UnImplNode;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    return v0
.end method

.method addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "ER_NULL_CHILD"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v1, :cond_1

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v2, "ER_NULL_CHILD"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v2, :cond_1

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v0, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_0
    return-void
.end method

.method public canAcceptVariables()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canStripWhiteSpace()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->canStripWhiteSpace()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    if-le v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->resolvePrefixTables()V

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->pushStackMark()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->popStackMark()V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_ELEMTEMPLATEELEM_ERR"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v3, v5, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .locals 0

    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionNode;

    return-object v0
.end method

.method public exprGetNumChildren()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLength()I

    move-result v0

    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 0

    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    return-void
.end method

.method public getBaseIdentifier()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    return v0
.end method

.method public getDOMBackPointer()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public getEndColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    return v0
.end method

.method public getEndLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    return v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLastChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "#default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v4, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, "xml"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ER_CANT_RESOLVE_NSPREFIX"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown XSLT Element"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerXSLTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 3

    move-object v0, p0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method public getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object v0
.end method

.method getPrefixTable()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    if-ne v1, p0, :cond_0

    move-object v2, v0

    :goto_1
    return-object v2

    :cond_0
    move-object v0, v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    if-ne v1, p0, :cond_0

    move-object v2, v0

    :goto_1
    return-object v2

    :cond_0
    move-object v0, v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPublicId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    goto :goto_0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getHref()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return v0
.end method

.method public getXSLToken()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getXmlSpace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    return v0
.end method

.method public handlesNullPrefixes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextLitOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasTextLitOnly:Z

    return v0
.end method

.method public hasVariableDecl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-object p1

    :cond_1
    if-eq p1, p2, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-ne p1, v1, :cond_3

    if-eqz v2, :cond_2

    move-object v3, v2

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_5

    if-eqz v2, :cond_4

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v3, p1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_2
    move-object v3, p1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v4, p2

    check-cast v4, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v3, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v3, p1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v3, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object v2, p1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p1

    check-cast v3, Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    :cond_5
    move-object v2, v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_6
    if-nez v0, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    const/16 v4, 0x8

    const-string v5, "refChild was not found in insertBefore method!"

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public isCompiledTemplate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method needToCheckExclude()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public removeChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eq v2, p0, :cond_1

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne p1, v2, :cond_2

    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_1
    iput-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    iget-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_1
.end method

.method public replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eq v2, p0, :cond_1

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v2, p2, :cond_3

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :cond_3
    iput-object p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v2, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v1, p2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eq v4, p0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v1, p2

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v2, :cond_2

    iput-object v0, v2, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    if-ne v4, v1, :cond_3

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :cond_3
    iput-object p0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    iget-object v4, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v4, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    iput-object v3, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0
.end method

.method public resolvePrefixTables()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v9

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    invoke-direct {p0, v6, v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    :cond_1
    invoke-virtual {v9, v10}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-direct {v0, v6, v10, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNodeElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v7, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_5

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->needToCheckExclude()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, v5, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_4

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lorg/apache/xalan/templates/ElemTemplateElement;->excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v11

    if-eq v8, v11, :cond_6

    new-instance v1, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12, v8}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    :cond_6
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->addOrReplaceDecls(Lorg/apache/xalan/templates/XMLNSDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-nez v11, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v11}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixTable(Ljava/util/List;)V

    goto :goto_2
.end method

.method public runtimeInit(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    return-void
.end method

.method public setDOMBackPointer(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_DOMBackPointer:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setEndLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endLineNumber:I

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_endColumnNumber:I

    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_lineNumber:I

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_columnNumber:I

    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    return-void
.end method

.method setPrefixTable(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    return-void
.end method

.method public setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/xml/sax/helpers/NamespaceSupport;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    :cond_1
    invoke-virtual {p1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    new-instance v0, Lorg/apache/xalan/templates/XMLNSDecl;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/xalan/templates/XMLNSDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_declaredPrefixes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method

.method public setXmlSpace(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_defaultSpace:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->shouldStripWhiteSpace(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Element;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V

    return-void
.end method

.method unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_prefixTable:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getIsExcluded()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    return-void
.end method
