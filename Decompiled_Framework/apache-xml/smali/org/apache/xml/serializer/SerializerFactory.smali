.class public final Lorg/apache/xml/serializer/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field private static m_formats:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/SerializerFactory;->m_formats:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;
    .locals 15

    :try_start_0
    const-string v10, "method"

    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v11, "ER_FACTORY_PROPERTY_MISSING"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "method"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v10, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v10, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v10

    :cond_0
    :try_start_1
    const-string v10, "{http://xml.apache.org/xalan}content-handler"

    invoke-virtual {p0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5

    const-string v10, "{http://xml.apache.org/xalan}content-handler"

    invoke-virtual {v5, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v10, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v11, "ER_FACTORY_PROPERTY_MISSING"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "{http://xml.apache.org/xalan}content-handler"

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v10, 0x1

    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    instance-of v10, v7, Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xml/serializer/Serializer;

    invoke-interface {v8, p0}, Lorg/apache/xml/serializer/Serializer;->setOutputFormat(Ljava/util/Properties;)V

    :goto_0
    return-object v8

    :cond_2
    instance-of v10, v7, Lorg/xml/sax/ContentHandler;

    if-eqz v10, :cond_3

    sget-object v0, Lorg/apache/xml/serializer/SerializerConstants;->DEFAULT_SAX_SERIALIZER:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v0, v3, v10}, Lorg/apache/xml/serializer/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/serializer/SerializationHandler;

    check-cast v7, Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v9, p0}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    move-object v8, v9

    goto :goto_0

    :cond_3
    new-instance v10, Ljava/lang/Exception;

    sget-object v11, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v12, "ER_SERIALIZER_NOT_CONTENTHANDLER"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
