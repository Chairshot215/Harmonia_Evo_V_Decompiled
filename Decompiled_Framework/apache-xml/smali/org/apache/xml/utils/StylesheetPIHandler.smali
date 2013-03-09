.class public Lorg/apache/xml/utils/StylesheetPIHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetPIHandler.java"


# instance fields
.field m_baseID:Ljava/lang/String;

.field m_charset:Ljava/lang/String;

.field m_media:Ljava/lang/String;

.field m_stylesheets:Ljava/util/Vector;

.field m_title:Ljava/lang/String;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet()Ljavax/xml/transform/Source;
    .locals 4

    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/Source;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-object v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v13, "xml-stylesheet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, " \t=\n"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v10, ""

    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_16

    if-nez v4, :cond_3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    :cond_1
    move-object v6, v10

    const-string v13, "type"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_5
    const-string v13, "href"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_7
    move-object v3, v10

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_4
    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v13, :cond_9

    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    iget-object v14, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-interface {v13, v3, v14}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v7

    goto/16 :goto_0

    :cond_9
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-static {v3, v13}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljavax/xml/transform/sax/SAXSource;

    new-instance v13, Lorg/xml/sax/InputSource;

    invoke-direct {v13, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v13}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    new-instance v13, Lorg/xml/sax/SAXException;

    invoke-direct {v13, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v13

    :cond_a
    const-string v13, "title"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_c
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    :cond_d
    const-string v13, "media"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_e
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_f
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_10
    const-string v13, "charset"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_11
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_12
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    const-string v13, "alternate"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    :goto_8
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_15

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "\t"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    :cond_14
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_15
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "yes"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    :cond_16
    if-eqz v12, :cond_18

    const-string v13, "text/xsl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    const-string v13, "text/xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    const-string v13, "application/xml+xslt"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_17
    if-eqz v3, :cond_18

    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    if-eqz v13, :cond_19

    if-eqz v5, :cond_18

    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    :cond_18
    :goto_9
    return-void

    :cond_19
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    if-eqz v13, :cond_1a

    if-eqz v2, :cond_18

    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_1a
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    if-eqz v13, :cond_1b

    if-eqz v9, :cond_18

    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_1b
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setBaseId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/utils/StopParseException;

    invoke-direct {v0}, Lorg/apache/xml/utils/StopParseException;-><init>()V

    throw v0
.end method
