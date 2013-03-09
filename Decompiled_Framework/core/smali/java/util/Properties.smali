.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT properties (comment?, entry*) >    <!ATTLIST properties version CDATA #FIXED \"1.0\" >    <!ELEMENT comment (#PCDATA) >    <!ELEMENT entry (#PCDATA) >    <!ATTLIST entry key CDATA #REQUIRED >"

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field private transient builder:Ljavax/xml/parsers/DocumentBuilder;

.field protected defaults:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    return-void
.end method

.method private dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x20

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "\\ "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v4, "\\#!=:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    if-eqz p3, :cond_2

    if-ne v0, v5, :cond_2

    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-lt v0, v5, :cond_3

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\u"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_4

    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private listToAppendable(Ljava/lang/Appendable;)V
    .locals 8

    if-nez p1, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "out == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    :goto_1
    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_2

    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private selectProperties(Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Hashtable",
            "<TK;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v3, p1, p2}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_2

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    :goto_1
    return-object p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_1
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/Properties;->listToAppendable(Ljava/lang/Appendable;)V

    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    :cond_0
    const/4 v11, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x28

    :try_start_1
    move/from16 v0, v19

    new-array v4, v0, [C

    const/4 v14, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v15, v14

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_15

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_15

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_2
    int-to-char v13, v8

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v12

    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_5

    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v14, v15, 0x1

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v15

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    move v15, v14

    goto :goto_0

    :cond_5
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_4

    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Invalid Unicode sequence: illegal character"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_6
    move v15, v14

    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    const/4 v11, 0x0

    sparse-switch v13, :sswitch_data_0

    :cond_8
    :goto_1
    const/4 v7, 0x0

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    move v10, v15

    const/4 v11, 0x0

    :cond_9
    add-int/lit8 v14, v15, 0x1

    aput-char v13, v4, v15

    move v15, v14

    goto/16 :goto_0

    :sswitch_0
    const/4 v11, 0x3

    goto/16 :goto_0

    :sswitch_1
    const/4 v11, 0x5

    goto/16 :goto_0

    :sswitch_2
    const/16 v13, 0x8

    goto :goto_1

    :sswitch_3
    const/16 v13, 0xc

    goto :goto_1

    :sswitch_4
    const/16 v13, 0xa

    goto :goto_1

    :sswitch_5
    const/16 v13, 0xd

    goto :goto_1

    :sswitch_6
    const/16 v13, 0x9

    goto :goto_1

    :sswitch_7
    const/4 v11, 0x2

    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_0

    :cond_a
    sparse-switch v13, :sswitch_data_1

    :cond_b
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_c

    const/4 v11, 0x5

    :cond_c
    if-eqz v15, :cond_1

    if-eq v15, v10, :cond_1

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_1

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_13

    const/4 v11, 0x4

    goto/16 :goto_0

    :sswitch_8
    if-eqz v7, :cond_b

    :cond_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    int-to-char v13, v8

    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_1

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v13, v0, :cond_d

    goto/16 :goto_0

    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    const/4 v11, 0x5

    goto/16 :goto_0

    :cond_e
    :sswitch_a
    const/4 v11, 0x0

    const/4 v7, 0x1

    if-gtz v15, :cond_f

    if-nez v15, :cond_11

    if-nez v10, :cond_11

    :cond_f
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_10

    move v10, v15

    :cond_10
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const/4 v10, -0x1

    const/4 v14, 0x0

    move v15, v14

    goto/16 :goto_0

    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_12

    move v10, v15

    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_b

    const/4 v11, 0x0

    move v10, v15

    goto/16 :goto_0

    :cond_13
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_14

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    if-lez v15, :cond_16

    move v10, v15

    :cond_16
    if-ltz v10, :cond_18

    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_17

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_18
    monitor-exit p0

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_0
    :try_start_1
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v9, :cond_1

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    :try_start_2
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    iput-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$1;

    invoke-direct {v10, p0}, Ljava/util/Properties$1;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v10, Ljava/util/Properties$2;

    invoke-direct {v10, p0}, Ljava/util/Properties$2;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    iget-object v9, p0, Ljava/util/Properties;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v9, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v9, "entry"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v9, "key"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_7
    throw v1

    :catch_2
    move-exception v1

    new-instance v9, Ljava/util/InvalidPropertiesFormatException;

    invoke-direct {v9, v1}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v4}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Ljava/util/Properties;->dumpString(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/util/Properties;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    goto/16 :goto_0

    :cond_3
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;->selectProperties(Ljava/util/Hashtable;Z)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
