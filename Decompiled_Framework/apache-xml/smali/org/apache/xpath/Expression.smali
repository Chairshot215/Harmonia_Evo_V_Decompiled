.class public abstract Lorg/apache/xpath/Expression;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/XPathVisitable;


# static fields
.field static final serialVersionUID:J = 0x7d9a61c8dacacd6L


# instance fields
.field private m_parent:Lorg/apache/xpath/ExpressionNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v0
.end method

.method public asIteratorRaw(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v1
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    return v1
.end method

.method public assertion(ZLjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    return v0
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract deepEquals(Lorg/apache/xpath/Expression;)Z
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method public abstract execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "exprAddChild method not implemented!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public exprGetNumChildren()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .locals 2

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can not parent an expression to itself!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getColumnNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getExpressionOwner()Lorg/apache/xpath/ExpressionNode;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNodesetExpr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final isSameClass(Lorg/apache/xpath/Expression;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStableNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method public xstr(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method
