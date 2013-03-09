.class public Lorg/apache/xalan/transformer/SerializerSwitcher;
.super Ljava/lang/Object;
.source "SerializerSwitcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/xml/serializer/Serializer;)Lorg/apache/xml/serializer/Serializer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v2, p3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const-string v8, "html"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "method"

    invoke-static {v8, p2}, Lorg/apache/xalan/transformer/SerializerSwitcher;->getOutputPropertyNoDefault(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    move-object v5, p2

    new-instance v0, Lorg/apache/xalan/templates/OutputProperties;

    const-string v8, "html"

    invoke-direct {v0, v8}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v5, v8}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v6

    invoke-interface {p3}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    :cond_2
    :goto_1
    move-object v2, v6

    :cond_3
    move-object v3, v2

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v6, v4}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_1
.end method

.method public static switchSerializerIfHTML(Lorg/apache/xalan/transformer/TransformerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    const-string v9, "html"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "method"

    invoke-virtual {p0, v9}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputPropertyNoDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/transformer/TransformerImpl;->getOutputFormat()Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v6

    new-instance v2, Lorg/apache/xalan/templates/OutputProperties;

    const-string v9, "html"

    invoke-direct {v2, v9}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v2, v6, v9}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    invoke-virtual {v2}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->getWriter()Ljava/io/Writer;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v7, v8}, Lorg/apache/xml/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    :cond_3
    :goto_1
    invoke-interface {v7}, Lorg/apache/xml/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v9, Ljavax/xml/transform/TransformerException;

    invoke-direct {v9, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_4
    :try_start_1
    invoke-interface {v4}, Lorg/apache/xml/serializer/Serializer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v7, v5}, Lorg/apache/xml/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
