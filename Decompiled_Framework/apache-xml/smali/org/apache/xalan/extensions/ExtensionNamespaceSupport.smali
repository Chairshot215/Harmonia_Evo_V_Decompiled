.class public Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
.super Ljava/lang/Object;
.source "ExtensionNamespaceSupport.java"


# instance fields
.field m_args:[Ljava/lang/Object;

.field m_handlerClass:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_sig:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Class;

    iput-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    :cond_1
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public launch()Lorg/apache/xalan/extensions/ExtensionHandler;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_handlerClass:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_sig:[Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    iget-object v6, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/extensions/ExtensionHandler;

    return-object v4

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->m_args:[Ljava/lang/Object;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    aget-object v1, v2, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance v6, Ljavax/xml/transform/TransformerException;

    const-string v7, "ExtensionHandler constructor not found"

    invoke-direct {v6, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v6, Ljavax/xml/transform/TransformerException;

    invoke-direct {v6, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
