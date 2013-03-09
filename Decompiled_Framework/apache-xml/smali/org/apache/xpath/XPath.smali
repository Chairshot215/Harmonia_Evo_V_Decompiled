.class public Lorg/apache/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field public static final MATCH:I = 0x1

.field public static final MATCH_SCORE_NODETEST:D = -0.5

.field public static final MATCH_SCORE_NONE:D = -Infinity

.field public static final MATCH_SCORE_NSWILD:D = -0.25

.field public static final MATCH_SCORE_OTHER:D = 0.5

.field public static final MATCH_SCORE_QNAME:D = 0.0

.field public static final SELECT:I = 0x0

.field static final serialVersionUID:J = 0x372f57bff437e299L


# instance fields
.field private transient m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

.field private m_mainExp:Lorg/apache/xpath/Expression;

.field m_patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    if-nez p5, :cond_0

    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    if-nez p4, :cond_2

    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    :goto_0
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    if-eqz p2, :cond_1

    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz v3, :cond_1

    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_1
    return-void

    :cond_2
    if-ne v5, p4, :cond_3

    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lorg/apache/xpath/compiler/FunctionTable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    iput-object p6, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    if-nez p5, :cond_0

    new-instance p5, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    new-instance v2, Lorg/apache/xpath/compiler/XPathParser;

    invoke-direct {v2, p5, p2}, Lorg/apache/xpath/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    new-instance v0, Lorg/apache/xpath/compiler/Compiler;

    iget-object v3, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v3}, Lorg/apache/xpath/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/compiler/FunctionTable;)V

    if-nez p4, :cond_2

    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    :goto_0
    invoke-virtual {v0, v7}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    if-eqz p2, :cond_1

    instance-of v3, p2, Lorg/apache/xpath/ExpressionNode;

    if-eqz v3, :cond_1

    check-cast p2, Lorg/apache/xpath/ExpressionNode;

    invoke-virtual {v1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_1
    return-void

    :cond_2
    if-ne v5, p4, :cond_3

    invoke-virtual {v2, v0, p1, p3}, Lorg/apache/xpath/compiler/XPathParser;->initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_CANNOT_DEAL_XPATH_TYPE"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPath;->setExpression(Lorg/apache/xpath/Expression;)V

    invoke-direct {p0}, Lorg/apache/xpath/XPath;->initFunctionTable()V

    return-void
.end method

.method private initFunctionTable()V
    .locals 1

    new-instance v0, Lorg/apache/xpath/compiler/FunctionTable;

    invoke-direct {v0}, Lorg/apache/xpath/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPath;->m_funcTable:Lorg/apache/xpath/compiler/FunctionTable;

    return-void
.end method


# virtual methods
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

.method public bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    :try_start_0
    iget-object v4, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    :goto_0
    return v4

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v4, :cond_1

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "ER_XPATH_ERROR"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_1

    :cond_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v4, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v4}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v5, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    :goto_0
    return-object v4

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_0

    :cond_0
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v5

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    instance-of v5, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v5, :cond_1

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "ER_XPATH_ERROR"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lorg/apache/xpath/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v5

    invoke-direct {v3, v2, v5, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_0

    :cond_4
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Lorg/w3c/dom/Node;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    throw v1
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_patternString:Ljava/lang/String;

    return-object v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    invoke-virtual {v0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPath;->m_mainExp:Lorg/apache/xpath/Expression;

    return-void
.end method

.method public warn(Lorg/apache/xpath/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p3, p4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v3, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method
