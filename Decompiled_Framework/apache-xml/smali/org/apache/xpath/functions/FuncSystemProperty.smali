.class public Lorg/apache/xpath/functions/FuncSystemProperty;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSystemProperty.java"


# static fields
.field static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"

.field static final serialVersionUID:J = 0x3346d5380b84c043L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x3a

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v5, ""

    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    const-string v9, "org/apache/xalan/res/XSLTInfo.properties"

    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/functions/FuncSystemProperty;->loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V

    if-lez v2, :cond_4

    if-ltz v2, :cond_1

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-gez v2, :cond_2

    move-object v5, v1

    :goto_1
    const-string v9, "http://www.w3.org/XSL/Transform"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    invoke-virtual {v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v9, "WG_PROPERTY_NOT_SUPPORTED"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_2
    return-object v9

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v9, "WG_DONT_DO_ANYTHING_WITH_NS"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v11

    aput-object v1, v10, v12

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v9, "WG_SECURITY_EXCEPTION"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    const-string v9, "WG_SECURITY_EXCEPTION"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, p1, v9, v10}, Lorg/apache/xpath/functions/FuncSystemProperty;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_2

    :cond_5
    const-string v9, "version"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    :try_start_2
    new-instance v9, Lorg/apache/xpath/objects/XString;

    const-string v10, "1.0"

    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-direct {v9, v6}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public loadPropertyFile(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lorg/apache/xpath/functions/SecuritySupport;->getInstance()Lorg/apache/xpath/functions/SecuritySupport;

    move-result-object v3

    invoke-static {}, Lorg/apache/xpath/functions/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/apache/xpath/functions/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v4, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v4, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
