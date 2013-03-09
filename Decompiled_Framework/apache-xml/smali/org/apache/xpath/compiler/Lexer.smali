.class Lorg/apache/xpath/compiler/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final TARGETEXTRA:I = 0x2710


# instance fields
.field private m_compiler:Lorg/apache/xpath/compiler/Compiler;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_patternMap:[I

.field private m_patternMapSize:I

.field m_processor:Lorg/apache/xpath/compiler/XPathParser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    iput-object p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    iput-object p3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    return-void
.end method

.method private final addToTokenQueue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private getTokenQueuePosFromMap(I)I
    .locals 2

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    aget v0, v1, p1

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x2710

    :cond_0
    return v0
.end method

.method private mapNSTokens(Ljava/lang/String;III)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v1, ""

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v4, :cond_3

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "xmlns"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-direct {p0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v4, -0x1

    return v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v5, "ER_PREFIX_MUST_RESOLVE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private mapPatternElemPos(IZZ)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v0, v3

    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v3, v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit16 v5, v5, -0x2710

    aput v5, v3, v4

    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v5, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v5

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    sub-int v2, v5, v2

    add-int/lit16 v2, v2, 0x2710

    aput v2, v3, v4

    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    const/4 p2, 0x0

    :cond_3
    return p2
.end method

.method private recordTokenString(Ljava/util/Vector;)V
    .locals 5

    const/4 v4, 0x1

    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v2, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    const-string v2, "#comment"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "#text"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x24 -> :sswitch_4
        0x406 -> :sswitch_0
        0x407 -> :sswitch_1
        0x408 -> :sswitch_5
        0x409 -> :sswitch_2
    .end sparse-switch
.end method

.method private final resetTokenMark(I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    if-lez p1, :cond_1

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    iput p1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v5, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v1, v5}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v3, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    :goto_1
    return-void

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_1
.end method


# virtual methods
.method final getKeywordToken(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method tokenize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    move-object/from16 v0, p1

    iput-object v0, v11, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    const/4 v11, 0x0

    iput v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x1f4

    if-ge v11, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    :goto_0
    mul-int/lit8 v3, v11, 0x5

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    new-instance v12, Lorg/apache/xpath/compiler/OpMapVector;

    const/16 v13, 0x9c4

    const/4 v14, 0x1

    invoke-direct {v12, v3, v13, v14}, Lorg/apache/xpath/compiler/OpMapVector;-><init>(III)V

    iput-object v12, v11, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, -0x1

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_1b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_2
    const/4 v11, -0x1

    if-ne v11, v10, :cond_1a

    move v10, v2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v11, 0x1f4

    goto :goto_0

    :sswitch_0
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v5, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v11, -0x1

    if-eq v11, v9, :cond_4

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    :cond_3
    :goto_4
    move v10, v2

    add-int/lit8 v2, v2, 0x1

    :goto_5
    if-ge v2, v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0x22

    if-eq v1, v11, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/16 v11, 0x22

    if-ne v1, v11, :cond_6

    if-ge v2, v7, :cond_6

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    const/4 v10, -0x1

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EXPECTED_DOUBLE_QUOTE"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_1
    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    const/4 v5, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v11, -0x1

    if-eq v11, v9, :cond_8

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    :cond_7
    :goto_6
    move v10, v2

    add-int/lit8 v2, v2, 0x1

    :goto_7
    if-ge v2, v7, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0x27

    if-eq v1, v11, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const/16 v11, 0x27

    if-ne v1, v11, :cond_a

    if-ge v2, v7, :cond_a

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    const/4 v10, -0x1

    goto/16 :goto_3

    :cond_a
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EXPECTED_SINGLE_QUOTE"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_2
    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    const/4 v5, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v11, -0x1

    if-eq v11, v9, :cond_b

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    :goto_8
    const/4 v10, -0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_3
    const/4 v4, 0x1

    :sswitch_4
    const/16 v11, 0x2d

    if-ne v11, v1, :cond_d

    if-nez v5, :cond_c

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    :cond_c
    const/4 v5, 0x0

    :cond_d
    :sswitch_5
    const/4 v11, -0x1

    if-eq v10, v11, :cond_14

    const/4 v5, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v11, -0x1

    if-eq v11, v9, :cond_13

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    :goto_9
    const/4 v10, -0x1

    :cond_e
    :goto_a
    if-nez v8, :cond_10

    const/16 v11, 0x7c

    if-ne v11, v1, :cond_10

    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    :cond_f
    const/4 v6, 0x1

    :cond_10
    const/16 v11, 0x29

    if-eq v11, v1, :cond_11

    const/16 v11, 0x5d

    if-ne v11, v1, :cond_16

    :cond_11
    add-int/lit8 v8, v8, -0x1

    :cond_12
    :goto_b
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    const/16 v11, 0x2f

    if-ne v11, v1, :cond_15

    if-eqz v6, :cond_15

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    goto :goto_a

    :cond_15
    const/16 v11, 0x2a

    if-ne v11, v1, :cond_e

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v4, 0x0

    goto :goto_a

    :cond_16
    const/16 v11, 0x28

    if-eq v11, v1, :cond_17

    const/16 v11, 0x5b

    if-ne v11, v1, :cond_12

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :sswitch_6
    if-lez v2, :cond_0

    add-int/lit8 v11, v2, -0x1

    if-ne v9, v11, :cond_19

    const/4 v11, -0x1

    if-eq v10, v11, :cond_18

    add-int/lit8 v11, v2, -0x1

    if-ge v10, v11, :cond_18

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :cond_18
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x1

    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    move v9, v2

    goto/16 :goto_2

    :cond_1a
    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    goto/16 :goto_3

    :cond_1b
    const/4 v11, -0x1

    if-eq v10, v11, :cond_1d

    const/4 v5, 0x0

    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    const/4 v11, -0x1

    if-ne v11, v9, :cond_1c

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v11, :cond_1f

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v11}, Lorg/apache/xml/utils/PrefixResolver;->handlesNullPrefixes()Z

    move-result v11

    if-eqz v11, :cond_1f

    :cond_1c
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v7}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    :cond_1d
    :goto_c
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v11}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v11

    if-nez v11, :cond_20

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EMPTY_EXPRESSION"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_d
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v12, 0x0

    iput v12, v11, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    return-void

    :cond_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_c

    :cond_20
    if-eqz p2, :cond_1e

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_5
        0x22 -> :sswitch_0
        0x24 -> :sswitch_5
        0x27 -> :sswitch_1
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_5
        0x2c -> :sswitch_5
        0x2d -> :sswitch_4
        0x2f -> :sswitch_5
        0x3a -> :sswitch_6
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x40 -> :sswitch_3
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x7c -> :sswitch_5
    .end sparse-switch
.end method
