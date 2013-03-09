.class public Lorg/apache/xalan/templates/FuncFormatNumb;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncFormatNumb.java"


# static fields
.field static final serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    :cond_1
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v16

    check-cast v16, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v15

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0xa4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_0

    const-string v17, "ER_CURRENCY_SIGN_ILLEGAL"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg2()Lorg/apache/xpath/Expression;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v5, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {v15, v14}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v17, "WG_NO_DECIMALFORMAT_DECLARATION"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncFormatNumb;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v8

    :goto_0
    if-nez v9, :cond_4

    :try_start_1
    new-instance v17, Lorg/apache/xml/utils/QName;

    const-string v18, ""

    invoke-direct/range {v17 .. v18}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v8, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    :goto_1
    new-instance v17, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v8, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v17

    :cond_1
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {v9, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v8, v9

    :goto_3
    const-string v17, "ER_MALFORMED_FORMAT_STRING"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v17, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_2

    :cond_2
    :try_start_4
    new-instance v7, Ljava/text/DecimalFormatSymbols;

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v17, "Infinity"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    const-string v17, "NaN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-virtual {v8, v7}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    if-eqz v13, :cond_3

    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    move-object v6, v7

    goto :goto_1

    :catch_1
    move-exception v10

    goto :goto_3

    :catch_2
    move-exception v10

    move-object v6, v7

    move-object v8, v9

    goto :goto_3

    :catch_3
    move-exception v10

    move-object v6, v7

    goto :goto_3

    :cond_4
    move-object v8, v9

    goto :goto_1

    :cond_5
    move-object v9, v8

    goto :goto_0
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_TWO_OR_THREE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v3, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void
.end method
