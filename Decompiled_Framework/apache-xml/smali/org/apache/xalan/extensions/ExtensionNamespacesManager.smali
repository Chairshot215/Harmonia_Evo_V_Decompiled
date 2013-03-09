.class public Lorg/apache/xalan/extensions/ExtensionNamespacesManager;
.super Ljava/lang/Object;
.source "ExtensionNamespacesManager.java"


# instance fields
.field private m_extensions:Ljava/util/Vector;

.field private m_predefExtensions:Ljava/util/Vector;

.field private m_unregisteredExtensions:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-direct {p0}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->setPredefinedNamespaces()V

    return-void
.end method

.method private setPredefinedNamespaces()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "http://xml.apache.org/xalan/java"

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    const-string v1, "javapackage"

    const-string v2, ""

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xslt/java"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xsl.lotus.com/java"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xalan"

    const-string v0, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    const-string v1, "javaclass"

    const-string v2, "org.apache.xalan.lib.Extensions"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xslt"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xalan/redirect"

    const-string v2, "org.apache.xalan.lib.Redirect"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xalan/PipeDocument"

    const-string v2, "org.apache.xalan.lib.PipeDocument"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://xml.apache.org/xalan/sql"

    const-string v2, "org.apache.xalan.lib.sql.XConnection"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/common"

    const-string v2, "org.apache.xalan.lib.ExsltCommon"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/math"

    const-string v2, "org.apache.xalan.lib.ExsltMath"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/sets"

    const-string v2, "org.apache.xalan.lib.ExsltSets"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/dates-and-times"

    const-string v2, "org.apache.xalan.lib.ExsltDatetime"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/dynamic"

    const-string v2, "org.apache.xalan.lib.ExsltDynamic"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v3, "http://exslt.org/strings"

    const-string v2, "org.apache.xalan.lib.ExsltStrings"

    iget-object v4, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v0, v6}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .locals 1

    invoke-virtual {p0, p1, p1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v0

    return-object v0
.end method

.method public defineJavaNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;
    .locals 12

    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    move-object v0, p2

    const-string v4, "class:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/apache/xalan/extensions/ExtensionHandler;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v4, "org.apache.xalan.extensions.ExtensionHandlerJavaClass"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "javaclass"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    const-string v4, "org.apache.xalan.extensions.ExtensionHandlerJavaPackage"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v6, "javapackage"

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-direct {v3, p1, v4, v5}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getExtensions()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    return-object v0
.end method

.method public namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public registerExtension(Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    iget-object v2, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_predefExtensions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerExtension(Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->namespaceIndex(Ljava/lang/String;Ljava/util/Vector;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerUnregisteredNamespaces()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_unregisteredExtensions:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->defineJavaNamespace(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionNamespaceSupport;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->m_extensions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
