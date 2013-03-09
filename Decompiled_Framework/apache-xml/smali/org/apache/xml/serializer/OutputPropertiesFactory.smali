.class public final Lorg/apache/xml/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"


# static fields
.field private static final ACCESS_CONTROLLER_CLASS:Ljava/lang/Class; = null

.field private static final PROP_DIR:Ljava/lang/String; = null

.field private static final PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

#the value of this static final field might be set in the static constructor
.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I = 0x0

.field private static final S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

#the value of this static final field might be set in the static constructor
.field private static final S_XALAN_PREFIX_LEN:I = 0x0

.field private static final S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final S_XSLT_PREFIX_LEN:I

.field private static m_html_properties:Ljava/util/Properties;

.field private static m_synch_object:Ljava/lang/Integer;

.field private static m_text_properties:Ljava/util/Properties;

.field private static m_unknown_properties:Ljava/util/Properties;

.field private static m_xml_properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    const-string v0, "xslt.output."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    const-string v0, "org.apache.xslt."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->PROP_DIR:Ljava/lang/String;

    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    invoke-static {}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAccessControllerClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    const-string v2, "xslt.output."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "org.apache.xslt."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{http://xml.apache.org/xalan}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v2, "\\u003a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static final getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    if-nez v4, :cond_0

    const-string v1, "output_xml.properties"

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "xml"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    new-instance v4, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :cond_1
    :try_start_5
    const-string v4, "html"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    if-nez v4, :cond_2

    const-string v1, "output_html.properties"

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    :cond_2
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    goto :goto_0

    :cond_3
    const-string v4, "text"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    if-nez v4, :cond_4

    const-string v1, "output_text.properties"

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    goto :goto_0

    :cond_5
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    if-nez v4, :cond_6

    const-string v1, "output_unknown.properties"

    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    :cond_6
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private static loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v9, Ljava/util/Properties;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    if-eqz v12, :cond_5

    new-instance v12, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0

    :goto_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v9, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {v9}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Properties;

    invoke-virtual {v12}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v11, 0x0

    :try_start_2
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    :goto_2
    if-nez v11, :cond_3

    invoke-virtual {v9, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :cond_3
    const/4 v12, 0x1

    invoke-static {v5, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    :goto_3
    if-nez v8, :cond_a

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-ne v5, v7, :cond_4

    if-eq v11, v8, :cond_2

    :cond_4
    invoke-virtual {v9, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :try_start_4
    const-class v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_5
    if-nez p1, :cond_8

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v12

    :cond_8
    :try_start_6
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v14, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12

    :catch_1
    move-exception v10

    :goto_7
    if-nez p1, :cond_9

    throw v10

    :cond_9
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v14, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    const/4 v12, 0x0

    invoke-static {v8, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :catch_2
    move-exception v12

    goto :goto_2

    :catch_3
    move-exception v12

    goto :goto_3

    :cond_b
    return-object v9

    :catchall_1
    move-exception v12

    move-object v1, v2

    goto :goto_6

    :catch_4
    move-exception v10

    move-object v1, v2

    goto :goto_7

    :catch_5
    move-exception v3

    move-object v1, v2

    goto :goto_5
.end method
