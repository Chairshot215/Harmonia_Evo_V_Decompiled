.class public Lorg/apache/xpath/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "XPathException.java"


# static fields
.field static final serialVersionUID:J = 0x3b2b2be100e6764bL


# instance fields
.field protected m_exception:Ljava/lang/Exception;

.field m_styleNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/XPathException;->setStylesheetNode(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

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

.method public getMessage()Ljava/lang/String;
    .locals 6

    invoke-super {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    instance-of v5, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v5, :cond_3

    move-object v4, v0

    check-cast v4, Ljavax/xml/transform/TransformerException;

    move-object v3, v0

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-ne v3, v0, :cond_0

    :cond_2
    if-eqz v1, :cond_4

    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, ""

    goto :goto_1
.end method

.method public getStylesheetNode()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-object v0
.end method

.method public getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathException;->getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/Node;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v1, v4, :cond_1

    if-eqz v0, :cond_1

    const-string v4, "---------"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_2

    move-object v3, v0

    check-cast v3, Ljavax/xml/transform/TransformerException;

    move-object v2, v0

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-ne v2, v0, :cond_3

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 11

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p1, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    const-class v7, Ljava/lang/Throwable;

    const-string v8, "getCause"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    :goto_2
    const/16 v6, 0xa

    if-ge v2, v6, :cond_1

    if-eqz v1, :cond_1

    const-string v6, "---------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    instance-of v6, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v6, :cond_2

    move-object v5, v1

    check-cast v5, Ljavax/xml/transform/TransformerException;

    move-object v4, v1

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-ne v4, v1, :cond_3

    const/4 v1, 0x0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v6, "Could not print stack trace..."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public setStylesheetNode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method
