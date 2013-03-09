.class public Lorg/apache/xalan/templates/AVT;
.super Ljava/lang/Object;
.source "AVT.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field private static final INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final USE_OBJECT_POOL:Z = false

.field static final serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_parts:Ljava/util/Vector;

.field private m_rawName:Ljava/lang/String;

.field private m_simpleString:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, "{}\"\'"

    const/4 v14, 0x1

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v13, 0x2

    if-ge v7, v13, :cond_1

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-nez v13, :cond_0

    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v2, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v13, 0x6

    invoke-direct {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    new-instance v5, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v13, 0x6

    invoke-direct {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    :try_start_0
    new-instance v13, Ljava/util/Vector;

    add-int/lit8 v14, v7, 0x1

    invoke-direct {v13, v14}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v6, :cond_6

    move-object v10, v6

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sparse-switch v13, :sswitch_data_0

    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    :try_start_1
    const-string v13, "WG_ATTR_TEMPLATE"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_5
    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    const/4 v2, 0x0

    const/4 v5, 0x0

    throw v13

    :sswitch_1
    :try_start_3
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v13, "{"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :goto_3
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sparse-switch v13, :sswitch_data_1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :sswitch_2
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    move-object v8, v6

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :sswitch_3
    const-string v13, "ER_NO_CURLYBRACE"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    goto :goto_3

    :sswitch_4
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    invoke-virtual {v5}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v13, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartXPath;

    invoke-direct {v14, v12}, Lorg/apache/xalan/templates/AVTPartXPath;-><init>(Lorg/apache/xpath/XPath;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_3

    goto/16 :goto_2

    :catch_0
    move-exception v4

    :try_start_4
    const-string v13, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p3, v14, v15

    const/4 v15, 0x1

    aput-object p5, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v13, "}"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_c
    :try_start_5
    const-string v13, "WG_FOUND_CURLYBRACE"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v13, "}"

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v9

    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :cond_d
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v9

    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private final getBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 4

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitAVT(Lorg/apache/xalan/templates/AVT;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AVTPart;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVTPart;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    invoke-virtual {v4, p1, v0, p2, p3}, Lorg/apache/xalan/templates/AVTPart;->evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 4

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xalan/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.method public isContextInsensitive()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimple()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-void
.end method
