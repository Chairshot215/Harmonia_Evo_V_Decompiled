.class public Lorg/apache/xalan/templates/ElemNumber;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;,
        Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;
    }
.end annotation


# static fields
.field private static final m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman; = null

.field static final serialVersionUID:J = 0x70aa9b8ab17ec4baL


# instance fields
.field private m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

.field private m_countMatchPattern:Lorg/apache/xpath/XPath;

.field private m_format_avt:Lorg/apache/xalan/templates/AVT;

.field private m_fromMatchPattern:Lorg/apache/xpath/XPath;

.field private m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

.field private m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

.field private m_level:I

.field private m_valueExpr:Lorg/apache/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-wide/16 v9, 0x1

    const/4 v0, 0x7

    new-array v7, v0, [Lorg/apache/xalan/transformer/DecimalToRoman;

    const/4 v8, 0x0

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x3e8

    const-string v3, "M"

    const-wide/16 v4, 0x384

    const-string v6, "CM"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x1f4

    const-string v3, "D"

    const-wide/16 v4, 0x190

    const-string v6, "CD"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x64

    const-string v3, "C"

    const-wide/16 v4, 0x5a

    const-string v6, "XC"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x32

    const-string v3, "L"

    const-wide/16 v4, 0x28

    const-string v6, "XL"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0xa

    const-string v3, "X"

    const-wide/16 v4, 0x9

    const-string v6, "IX"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-wide/16 v1, 0x5

    const-string v3, "V"

    const-wide/16 v4, 0x4

    const-string v6, "IV"

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/apache/xalan/transformer/DecimalToRoman;

    const-string v3, "I"

    const-string v6, "I"

    move-wide v1, v9

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/transformer/DecimalToRoman;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    aput-object v0, v7, v8

    sput-object v7, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    iput-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method private findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-wide/high16 v5, -0x10

    const/4 v4, -0x1

    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    :cond_0
    :goto_0
    if-eq v4, p4, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_2

    const/4 p4, -0x1

    :cond_1
    return p4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_1

    :cond_3
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v1

    if-ne v4, v1, :cond_4

    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result p4

    if-ne p4, v4, :cond_0

    move p4, v1

    goto :goto_0
.end method

.method private getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v14

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v13, v14, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    const/4 v4, 0x0

    const/4 v12, 0x0

    sparse-switch p3, :sswitch_data_0

    invoke-direct/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;

    move-result-object v5

    if-nez v5, :cond_e

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-nez v5, :cond_f

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v8, p4, v13

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_10

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v13, :cond_1

    const-string v13, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    :goto_4
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    if-nez v13, :cond_2

    const-string v13, "org.apache.xml.utils.res.XResources"

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/ElemNumber;->m_alphaCountTable:Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13, v11}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    invoke-virtual {v11}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_4

    :catchall_0
    move-exception v13

    invoke-static {v11}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v13

    :sswitch_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->long2roman(JZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    :sswitch_4
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "HA"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_3

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_5
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "HI"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_4

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "A"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_5

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_7
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ja"

    const-string v16, "JP"

    const-string v17, "I"

    invoke-direct/range {v14 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_6

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v13}, Lorg/apache/xalan/templates/ElemNumber;->int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_8
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "zh"

    const-string v16, "CN"

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_7

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_9
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "zh"

    const-string v16, "TW"

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_8

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_a
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "th"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_9

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_b
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "he"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_a

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_c
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "ka"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_b

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_d
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "el"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_c

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :sswitch_e
    const-string v13, "org.apache.xml.utils.res.XResources"

    new-instance v14, Ljava/util/Locale;

    const-string v15, "cy"

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lorg/apache/xml/utils/res/XResourceBundle;->loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;

    move-result-object v12

    if-eqz v7, :cond_d

    const-string v13, "traditional"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v12}, Lorg/apache/xalan/templates/ElemNumber;->tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const-string v13, "alphabet"

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v13, v3}, Lorg/apache/xalan/templates/ElemNumber;->int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V

    goto/16 :goto_4

    :cond_e
    const-wide/16 v13, 0x0

    invoke-virtual {v5, v13, v14}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_f
    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x49 -> :sswitch_2
        0x61 -> :sswitch_1
        0x69 -> :sswitch_3
        0x3b1 -> :sswitch_d
        0x430 -> :sswitch_e
        0x5d0 -> :sswitch_b
        0xe51 -> :sswitch_a
        0x10d0 -> :sswitch_c
        0x3042 -> :sswitch_4
        0x3044 -> :sswitch_5
        0x30a2 -> :sswitch_6
        0x30a4 -> :sswitch_7
        0x4e00 -> :sswitch_8
        0x58f9 -> :sswitch_9
    .end sparse-switch
.end method

.method private getNumberFormatter(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/text/DecimalFormat;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    const/4 v3, 0x0

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v12, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "name"

    aput-object v10, v9, v11

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v10}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    invoke-virtual {v7, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/text/DecimalFormat;

    move-object v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    invoke-virtual {v3, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v3, v11}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    goto :goto_1
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4

    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .locals 2

    if-eqz p2, :cond_7

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    :cond_7
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_2
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_5
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    :cond_6
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    :cond_7
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/templates/ElemNumber;->getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-wide/high16 v3, -0x10

    invoke-virtual {p1, p4}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-eq v1, p4, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    return p4

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    :cond_2
    invoke-interface {v0, p4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p4

    goto :goto_0
.end method

.method formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v9

    :try_start_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v6, 0x1

    const/16 v5, 0x31

    const/16 v17, 0x0

    const/4 v11, 0x0

    const-string v16, "."

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    move/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v13

    :goto_0
    if-nez v13, :cond_0

    const-string v13, "1"

    :cond_0
    new-instance v12, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;-><init>(Lorg/apache/xalan/templates/ElemNumber;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_1
    :goto_2
    if-eqz v11, :cond_8

    if-eqz v15, :cond_8

    invoke-virtual {v9, v11}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :cond_2
    :goto_3
    aget-wide v7, p2, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Lorg/apache/xalan/templates/ElemNumber;->getFormattedNumber(Lorg/apache/xalan/transformer/TransformerImpl;ICIJLorg/apache/xml/utils/FastStringBuffer;)V

    const/4 v15, 0x0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v11, v10

    :goto_4
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextIsSep()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    if-nez v15, :cond_6

    move-object/from16 v16, v11

    :cond_6
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_7
    move-object/from16 v17, v10

    :goto_5
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    :cond_8
    if-eqz v16, :cond_2

    if-nez v15, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v2

    :cond_9
    :goto_6
    :try_start_1
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->isLetterOrDigitAhead()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_6

    :cond_a
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :cond_b
    :goto_7
    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v12}, Lorg/apache/xalan/templates/ElemNumber$NumberFormatStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v9}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    invoke-static {v9}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-object v19
.end method

.method public getCount()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v3

    if-nez v4, :cond_0

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :pswitch_1
    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    :goto_1
    new-instance v4, Lorg/apache/xpath/XPath;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber$MyPrefixResolver;-><init>(Lorg/apache/xalan/templates/ElemNumber;Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTM;IZ)V

    goto :goto_1

    :pswitch_2
    new-instance v4, Lorg/apache/xpath/XPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_0

    :pswitch_3
    new-instance v4, Lorg/apache/xpath/XPath;

    const-string v5, "text()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_0

    :pswitch_4
    new-instance v4, Lorg/apache/xpath/XPath;

    const-string v5, "comment()"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_0

    :pswitch_5
    new-instance v4, Lorg/apache/xpath/XPath;

    const-string v5, "/"

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto :goto_0

    :pswitch_6
    new-instance v4, Lorg/apache/xpath/XPath;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v9

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getCountString(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getCountersTable()Lorg/apache/xalan/transformer/CountersTable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v15, v14, v0, v1}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v15

    const-wide/high16 v17, 0x3fe0

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "NaN"

    :goto_0
    return-object v15

    :cond_0
    const-wide/16 v15, 0x0

    cmpg-double v15, v8, v15

    if-gez v15, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "-Infinity"

    goto :goto_0

    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "Infinity"

    goto :goto_0

    :cond_2
    const-wide/16 v15, 0x0

    cmpl-double v15, v8, v15

    if-nez v15, :cond_3

    const-string v15, "0"

    goto :goto_0

    :cond_3
    double-to-long v4, v8

    const/4 v15, 0x1

    new-array v12, v15, [J

    const/4 v15, 0x0

    aput-wide v4, v12, v15

    :cond_4
    :goto_1
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, Lorg/apache/xalan/templates/ElemNumber;->formatNumberList(Lorg/apache/xalan/transformer/TransformerImpl;[JI)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_5
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v15, 0x1

    new-array v12, v15, [J

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v7, v14, v0, v1}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v12, v15

    goto :goto_1

    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Lorg/apache/xalan/templates/ElemNumber;->getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    if-ltz v11, :cond_4

    add-int/lit8 v15, v11, 0x1

    new-array v12, v15, [J

    move v10, v11

    :goto_3
    if-ltz v10, :cond_4

    invoke-virtual {v3, v10}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    move-result v13

    sub-int v15, v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v7, v14, v0, v13}, Lorg/apache/xalan/transformer/CountersTable;->countNode(Lorg/apache/xpath/XPathContext;Lorg/apache/xalan/templates/ElemNumber;I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v12, v15

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    :cond_8
    const-string v15, ""

    goto/16 :goto_0
.end method

.method public getFormat()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getFrom()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getGroupingSeparator()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getGroupingSize()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLetterValue()Lorg/apache/xalan/templates/AVT;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return v0
.end method

.method getLocale(Lorg/apache/xalan/transformer/TransformerImpl;I)Ljava/util/Locale;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, v8, p2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {v7, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v8, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string v4, "WG_LOCALE_NOT_FOUND"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v6, v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_0
.end method

.method getMatchingAncestors(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xml/utils/NodeVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-wide/high16 v5, -0x10

    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    :goto_0
    const/4 v3, -0x1

    if-eq v3, p2, :cond_0

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    if-nez v1, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Programmers error! countMatchPattern should never be null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3

    invoke-virtual {v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    if-nez p3, :cond_0

    :cond_3
    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result p2

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "number"

    return-object v0
.end method

.method public getPreviousNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-wide/high16 v8, -0x10

    const/4 v7, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    const/4 v5, 0x3

    iget v6, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v5, v6, :cond_7

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    :cond_0
    if-eq v7, p2, :cond_3

    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result v4

    if-ne v7, v4, :cond_4

    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v4

    if-eq v7, v4, :cond_6

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v4}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-nez v5, :cond_2

    :cond_1
    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_6

    :cond_2
    const/4 p2, -0x1

    :cond_3
    :goto_0
    return p2

    :cond_4
    move v0, v4

    :cond_5
    :goto_1
    if-eq v7, v0, :cond_6

    invoke-interface {v2, v4}, Lorg/apache/xml/dtm/DTM;->getLastChild(I)I

    move-result v0

    if-eq v7, v0, :cond_5

    move v4, v0

    goto :goto_1

    :cond_6
    move p2, v4

    if-eq v7, p2, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_7
    if-eq v7, p2, :cond_3

    invoke-interface {v2, p2}, Lorg/apache/xml/dtm/DTM;->getPreviousSibling(I)I

    move-result p2

    if-eq v7, p2, :cond_7

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v5

    cmpl-double v5, v5, v8

    if-eqz v5, :cond_7

    goto :goto_0
.end method

.method public getTargetNode(Lorg/apache/xpath/XPathContext;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemNumber;->getCountMatchPattern(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/XPath;

    move-result-object v3

    const/4 v0, 0x3

    iget v1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findPrecedingOrAncestorOrSelf(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    :goto_0
    return v6

    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/ElemNumber;->findAncestor(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/XPath;Lorg/apache/xpath/XPath;ILorg/apache/xalan/templates/ElemNumber;)I

    move-result v6

    goto :goto_0
.end method

.method public getValue()Lorg/apache/xpath/XPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method getZeroString()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method protected int2alphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 11

    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v7

    new-array v8, v7, [C

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v9, v7, -0x1

    if-ge v5, v9, :cond_0

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p3, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v10

    aput-char v10, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v5}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v10

    aput-char v10, v8, v9

    const/16 v9, 0x64

    new-array v0, v9, [C

    array-length v9, v0

    add-int/lit8 v1, v9, -0x1

    const/4 v6, 0x1

    const-wide/16 v3, 0x0

    move v2, v1

    :goto_1
    if-eqz v6, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    if-ne v6, v9, :cond_3

    :cond_1
    add-int/lit8 v9, v7, -0x1

    int-to-long v3, v9

    :goto_2
    add-long v9, p1, v3

    long-to-int v9, v9

    rem-int v6, v9, v7

    int-to-long v9, v7

    div-long/2addr p1, v9

    if-nez v6, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-nez v9, :cond_4

    move v1, v2

    :cond_2
    add-int/lit8 v9, v1, 0x1

    array-length v10, v0

    sub-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p4, v0, v9, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void

    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v2, -0x1

    aget-char v9, v8, v6

    aput-char v9, v0, v2

    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    move v2, v1

    goto :goto_1
.end method

.method protected int2singlealphaCount(JLorg/apache/xml/utils/res/CharArrayWrapper;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p3}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v0

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/Character;

    long-to-int v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p3, v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected long2roman(JZ)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemNumber;->getZeroString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    const-wide/16 v2, 0xf9f

    cmp-long v2, p1, v2

    if-gtz v2, :cond_4

    :cond_1
    :goto_1
    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    sub-long/2addr p1, v2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/xalan/templates/ElemNumber;->m_romanConvertTable:[Lorg/apache/xalan/transformer/DecimalToRoman;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    sub-long/2addr p1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    cmp-long v2, p1, v4

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_4
    const-string v1, "#error"

    goto :goto_0
.end method

.method public setCount(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_countMatchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public setFormat(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_format_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setFrom(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_fromMatchPattern:Lorg/apache/xpath/XPath;

    return-void
.end method

.method public setGroupingSeparator(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSeparator_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setGroupingSize(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_groupingSize_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setLetterValue(Lorg/apache/xalan/templates/AVT;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_lettervalue_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_level:I

    return-void
.end method

.method public setValue(Lorg/apache/xpath/XPath;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/ElemNumber;->m_valueExpr:Lorg/apache/xpath/XPath;

    return-void
.end method

.method protected tradAlphaCount(JLorg/apache/xml/utils/res/XResourceBundle;)Ljava/lang/String;
    .locals 26

    const-wide v22, 0x7fffffffffffffffL

    cmp-long v22, p1, v22

    if-lez v22, :cond_0

    const-string v22, "ER_NUMBER_TOO_BIG"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemNumber;->error(Ljava/lang/String;)V

    const-string v22, "#error"

    :goto_0
    return-object v22

    :cond_0
    const/16 v18, 0x0

    const/4 v11, 0x1

    const/16 v22, 0x64

    move/from16 v0, v22

    new-array v3, v0, [C

    const/4 v4, 0x0

    const-string v22, "numberGroups"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/res/IntArrayWrapper;

    const-string v22, "tables"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/StringArrayWrapper;

    move-object/from16 v19, v22

    check-cast v19, Lorg/apache/xml/utils/res/StringArrayWrapper;

    const-string v22, "numbering"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v22, "multiplicative-additive"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "multiplierOrder"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v22, "multiplier"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/LongArrayWrapper;

    move-object/from16 v15, v22

    check-cast v15, Lorg/apache/xml/utils/res/LongArrayWrapper;

    const-string v22, "zero"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_1

    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-gez v22, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_3

    :cond_2
    :goto_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_11

    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, p1, v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_f

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-gez v22, :cond_7

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    if-nez v22, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_4
    :goto_4
    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    goto :goto_2

    :cond_5
    add-int/lit8 v22, v4, -0x1

    aget-char v22, v3, v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    add-int/lit8 v5, v4, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v22

    aput-char v22, v3, v4

    move v4, v5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    cmp-long v22, p1, v22

    if-ltz v22, :cond_4

    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    div-long v12, p1, v22

    invoke-virtual {v15, v8}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLong(I)J

    move-result-wide v22

    rem-long p1, p1, v22

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v7}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_a

    const/4 v11, 0x1

    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, v12, v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gtz v22, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v18, v0

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v2}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_9

    add-int/lit8 v22, v9, 0x1

    invoke-virtual {v2, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    const/16 v22, 0x0

    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    long-to-int v0, v12

    move/from16 v22, v0

    invoke-virtual {v7, v10}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v23

    div-int v11, v22, v23

    if-nez v11, :cond_b

    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_b

    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_b
    const-string v22, "multiplierChar"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    check-cast v22, Lorg/apache/xml/utils/res/CharArrayWrapper;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v16

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    const-string v22, "precedes"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    add-int/lit8 v5, v4, 0x1

    aput-char v16, v3, v4

    add-int/lit8 v4, v5, 0x1

    aget-char v22, v18, v11

    aput-char v22, v3, v5

    goto :goto_7

    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_d

    invoke-virtual {v15}, Lorg/apache/xml/utils/res/LongArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_d

    :goto_8
    add-int/lit8 v5, v4, 0x1

    aput-char v16, v3, v4

    move v4, v5

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v4, 0x1

    aget-char v22, v18, v11

    aput-char v22, v3, v4

    move v4, v5

    goto :goto_8

    :cond_e
    const-string v22, "#error"

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/res/StringArrayWrapper;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/XResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xml/utils/res/CharArrayWrapper;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [C

    move-object/from16 v18, v0

    const/4 v9, 0x0

    :goto_9
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_10

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_10
    const/16 v22, 0x0

    add-int/lit8 v23, v9, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/res/CharArrayWrapper;->getChar(I)C

    move-result v23

    aput-char v23, v18, v22

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v23

    div-int v11, v22, v23

    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/res/IntArrayWrapper;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    rem-long p1, p1, v22

    if-nez v11, :cond_12

    const-wide/16 v22, 0x0

    cmp-long v22, p1, v22

    if-nez v22, :cond_12

    :cond_11
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_13

    add-int/lit8 v5, v4, 0x1

    aget-char v22, v18, v11

    aput-char v22, v3, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v5

    goto/16 :goto_3

    :cond_13
    const-string v22, "#error"

    goto/16 :goto_0
.end method
