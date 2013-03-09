.class public final Lorg/apache/xml/serializer/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final DEFAULT_MIME_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODINGS_FILE:Ljava/lang/String;

.field private static final _encodingTableKeyJava:Ljava/util/Hashtable;

.field private static final _encodingTableKeyMime:Ljava/util/Hashtable;

.field private static final _encodings:[Lorg/apache/xml/serializer/EncodingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Encodings.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-static {}, Lorg/apache/xml/serializer/Encodings;->loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v1, v1, v0

    iget-object p0, v1, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getEncodingInfo(Ljava/lang/String;)Lorg/apache/xml/serializer/EncodingInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_0

    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/EncodingInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v2}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    :cond_1
    return-object v0
.end method

.method public static getHighChar(Ljava/lang/String;)C
    .locals 4

    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_0

    sget-object v3, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xml/serializer/EncodingInfo;->getHighChar()C

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_4

    :try_start_0
    const-string v2, "file.encoding"

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v2, "Cp1252"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ISO8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "8859_1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "UTF-8"

    :goto_0
    if-eqz v0, :cond_2

    move-object p0, v0

    :goto_1
    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p0, "UTF-8"

    goto :goto_1

    :cond_3
    const-string p0, "UTF-8"
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string p0, "UTF-8"

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lorg/apache/xml/serializer/Encodings;->convertJava2MimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method static getWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/apache/xml/serializer/EncodingInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Lorg/apache/xml/serializer/Encodings;->_encodings:[Lorg/apache/xml/serializer/EncodingInfo;

    aget-object v4, v4, v0

    iget-object v2, v4, Lorg/apache/xml/serializer/EncodingInfo;->javaName:Ljava/lang/String;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v4

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method static isHighUTF16Surrogate(C)Z
    .locals 1

    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLowUTF16Surrogate(C)Z
    .locals 1

    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecognizedEncoding(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    if-nez v0, :cond_0

    sget-object v2, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/EncodingInfo;

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static lengthOfMimeNames(Ljava/lang/String;)I
    .locals 2

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static loadEncodingInfo()[Lorg/apache/xml/serializer/EncodingInfo;
    .locals 26

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serializer/SecuritySupport;->getInstance()Lorg/apache/xml/serializer/SecuritySupport;

    move-result-object v20

    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    sget-object v25, Lorg/apache/xml/serializer/Encodings;->ENCODINGS_FILE:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v18, Ljava/util/Properties;

    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    if-eqz v11, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->size()I

    move-result v22

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v13

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/apache/xml/serializer/Encodings;->lengthOfMimeNames(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v14

    if-nez v14, :cond_2

    move-object v15, v12

    const/4 v7, 0x0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v24

    move/from16 v0, v24

    int-to-char v7, v0

    :goto_1
    const/16 v24, 0x0

    :try_start_2
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    new-instance v21, Ljava/util/StringTokenizer;

    const-string v24, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Lorg/apache/xml/serializer/EncodingInfo;

    invoke-direct {v4, v15, v12, v7}, Lorg/apache/xml/serializer/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyMime:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    sget-object v24, Lorg/apache/xml/serializer/Encodings;->_encodingTableKeyJava:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Lorg/apache/xml/serializer/EncodingInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v19

    :catch_1
    move-exception v17

    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v24

    :catch_2
    move-exception v10

    new-instance v24, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v24
.end method

.method static toCodePoint(C)I
    .locals 1

    move v0, p0

    return v0
.end method

.method static toCodePoint(CC)I
    .locals 3

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    const v2, 0xdc00

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int v0, v1, v2

    return v0
.end method

.method private static toUpperCaseFast(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x61

    if-gt v6, v0, :cond_0

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_0

    add-int/lit8 v6, v0, -0x20

    int-to-char v0, v6

    const/4 v2, 0x1

    :cond_0
    aput-char v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_2
    move-object v5, p0

    goto :goto_1
.end method
