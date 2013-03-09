.class public Lorg/apache/xalan/extensions/ExpressionVisitor;
.super Lorg/apache/xpath/XPathVisitor;
.source "ExpressionVisitor.java"


# instance fields
.field private m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-void
.end method


# virtual methods
.method public visitFunction(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/functions/Function;)Z
    .locals 5

    instance-of v3, p2, Lorg/apache/xpath/functions/FuncExtFunction;

    if-eqz v3, :cond_1

    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunction;

    invoke-virtual {p2}, Lorg/apache/xpath/functions/FuncExtFunction;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    instance-of v3, p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    if-eqz v3, :cond_0

    check-cast p2, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    invoke-virtual {p2}, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3, v2}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExpressionVisitor;->m_sroot:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    goto :goto_0
.end method
