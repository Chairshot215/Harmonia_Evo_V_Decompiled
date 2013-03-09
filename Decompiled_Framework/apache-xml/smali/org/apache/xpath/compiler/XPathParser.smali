.class public Lorg/apache/xpath/compiler/XPathParser;
.super Ljava/lang/Object;
.source "XPathParser.java"


# static fields
.field public static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "CONTINUE_AFTER_FATAL_ERROR"

.field protected static final FILTER_MATCH_FAILED:I = 0x0

.field protected static final FILTER_MATCH_PREDICATES:I = 0x2

.field protected static final FILTER_MATCH_PRIMARY:I = 0x1


# instance fields
.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_ops:Lorg/apache/xpath/compiler/OpMap;

.field m_queueMark:I

.field m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field transient m_token:Ljava/lang/String;

.field transient m_tokenChar:C


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    iput-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private final consumeExpected(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    :cond_0
    const-string v0, "ER_EXPECTED_BUT_FOUND"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    const-string v1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final consumeExpected(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    :cond_0
    const-string v0, "ER_EXPECTED_BUT_FOUND"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    const-string v1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getTokenRelative(I)Ljava/lang/String;
    .locals 3

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int v0, v2, p1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final lookahead(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, p2, -0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private final lookbehind(CI)Z
    .locals 8

    const/16 v5, 0x7c

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v7, p2, 0x1

    sub-int v2, v6, v7

    if-ltz v2, :cond_4

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, v6, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v6, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_3

    if-nez v3, :cond_1

    move v0, v5

    :goto_0
    if-ne v0, v5, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_2
    if-ne v0, p1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final lookbehindHasToken(I)Z
    .locals 7

    const/16 v3, 0x7c

    const/4 v1, 0x0

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, p1

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, v4, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v3

    :goto_0
    if-ne v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final nextToken()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iput-char v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_0
.end method

.method private final prevToken()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    iput-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_0
.end method


# virtual methods
.method protected AbbreviatedNodeTestStep(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v9, 0x2f

    const/4 v6, 0x2

    const/4 v8, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v1, -0x1

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x33

    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_0
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v8, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_1
    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_1

    :cond_0
    const-string v4, "::"

    invoke-direct {p0, v4, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "attribute"

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0x33

    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    :goto_2
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    const-string v4, "child"

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v0, 0x35

    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    const-string v4, "ER_AXES_NOT_ALLOWED"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p1, :cond_4

    const-string v4, "ER_EXPECTED_STEP_PATTERN"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/16 v0, 0x34

    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v0, 0x35

    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, -0x1

    if-le v1, v4, :cond_7

    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/16 v5, 0x34

    invoke-virtual {v4, v1, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v3

    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method protected AdditiveExpr(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-ne v4, p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xb

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method protected AndExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "and"

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_0
    return-void
.end method

.method protected Argument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1a

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected AxisName()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getAxisName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "ER_ILLEGAL_AXIS_NAME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    return v0
.end method

.method protected Basis()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const-string v2, "::"

    invoke-direct {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AxisName()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void

    :cond_0
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x27

    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_0
.end method

.method protected BooleanExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v2, 0x12

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, v1

    if-ne v0, v4, :cond_0

    const-string v2, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected EqualityExpr(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v6, 0x3d

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-ne v4, p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v6, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    return p1

    :cond_2
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method protected Expr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    return-void
.end method

.method protected FilterExpr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v4, 0x5b

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PrimaryExpr()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/16 v3, 0x1c

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected FunctionCall()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v9, 0x2c

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x29

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v4, 0x3a

    invoke-virtual {p0, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x4

    const/16 v4, 0x18

    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_0
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :cond_0
    :goto_1
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Argument()V

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->getFunctionToken(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    const-string v4, "ER_COULDNOT_FIND_FUNCTION"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x3

    const/16 v4, 0x19

    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    invoke-virtual {v2, v4, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    move v2, v3

    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected IdKeyPattern()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    return-void
.end method

.method protected Literal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v8, 0x27

    const/16 v6, 0x22

    const/4 v7, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    iget-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v6, :cond_0

    if-eq v1, v6, :cond_1

    :cond_0
    if-ne v0, v8, :cond_2

    if-ne v1, v8, :cond_2

    :cond_1
    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v4, v5, -0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    new-instance v3, Lorg/apache/xpath/objects/XString;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v5, v3, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v7, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_0
    return-void

    :cond_2
    const-string v5, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected LocationPath()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v6, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1c

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x32

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x23

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    const-string v2, "ER_EXPECTED_LOC_PATH"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v6, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "ER_EXPECTED_LOC_PATH_AT_END_EXPR"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected LocationPathPattern()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v10, 0x34

    const/4 v9, 0x2

    const/16 v6, 0x2f

    const/4 v7, 0x4

    const/4 v8, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/16 v5, 0x28

    invoke-virtual {p0, v5, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "key"

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->IdKeyPattern()V

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_0
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x40a

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/4 v4, 0x2

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    const/16 v5, 0x7c

    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativePathPattern()V

    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v8, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v7, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void

    :cond_3
    const/16 v5, 0x35

    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v6, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v4, 0x2

    :goto_3
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x23

    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_1

    :cond_5
    const/16 v5, 0x32

    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    goto :goto_1

    :cond_7
    if-ne v4, v9, :cond_2

    const-string v5, "ER_EXPECTED_REL_PATH_PATTERN"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected MultiplicativeExpr(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnaryExpr()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xc

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    return p1

    :cond_2
    const-string v2, "div"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xd

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "mod"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xe

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "quo"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0xf

    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0
.end method

.method protected NCName()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method protected NodeTest(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v8, 0x2a

    const/16 v7, 0x29

    const/16 v4, 0x28

    const/4 v6, -0x3

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getNodeType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "ER_UNKNOWN_NODETYPE"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    const/16 v2, 0x408

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :goto_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ER_EXPECTED_NODE_TEST"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ER_EXPECTED_NODE_TEST"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected Number()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v7, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gt v3, v5, :cond_0

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v4, 0x45

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v5, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    const-string v3, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    new-instance v4, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v4, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v7, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    goto :goto_0
.end method

.method protected NumberExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected OrExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "or"

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_0
    return-void
.end method

.method protected PathExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FilterExpr()I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v5, :cond_3

    move v1, v3

    :goto_0
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    if-nez v1, :cond_0

    const/16 v4, 0x1c

    invoke-virtual {p0, v2, v5, v4}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ER_EXPECTED_REL_LOC_PATH"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPath()V

    goto :goto_1
.end method

.method protected Pattern()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPathPattern()V

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected Predicate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PredicateExpr()V

    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :cond_0
    return-void
.end method

.method protected PredicateExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1d

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected PrimaryExpr()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v6, 0x28

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v2, 0x15

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x16

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->QName()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v2, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x17

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/16 v2, 0x2e

    iget-char v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/16 v2, 0x1b

    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Number()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v6, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected QName()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v4, 0x3a

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_0
.end method

.method protected RelationalExpr(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v6, 0x3d

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    if-ne v5, p1, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x6

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 v2, 0x7

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    :goto_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int v0, v2, p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_4
    const/16 v2, 0x9

    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_2
.end method

.method protected RelativeLocationPath()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :goto_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ER_EXPECTED_LOC_STEP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected RelativePathPattern()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    :goto_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected Step()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v9, 0x2a

    const/4 v2, 0x0

    const/16 v8, 0x409

    const/4 v7, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v9}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    invoke-virtual {v4, v5, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    :cond_0
    const-string v4, "."

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ER_PREDICATE_ILLEGAL_SYNTAX"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v7, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_0
    move v2, v3

    :cond_2
    :goto_1
    return v2

    :cond_3
    const-string v4, ".."

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x2d

    invoke-virtual {p0, v7, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x5f

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Basis()V

    :goto_2
    const/16 v2, 0x5b

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_2

    const-string v3, "ER_EXPECTED_LOC_STEP"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected StepPattern(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AbbreviatedNodeTestStep(Z)Z

    move-result v0

    return v0
.end method

.method protected StringExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected UnaryExpr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v0, 0x0

    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnionExpr()V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_1
    return-void
.end method

.method protected UnionExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PathExpr()V

    const/16 v3, 0x7c

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x14

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    :cond_1
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    if-nez v0, :cond_0

    :cond_2
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method appendOp(II)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v0, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v2, v0, p1

    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected dumpRemainingTokenQueue()Ljava/lang/String;
    .locals 7

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v5

    if-ge v1, v5, :cond_1

    const-string v0, "\n Remaining tokens: ("

    :goto_0
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    throw v2
.end method

.method errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    new-instance v2, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    :cond_0
    throw v2
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method final getFunctionToken(Ljava/lang/String;)I
    .locals 5

    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {v4, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    new-instance v1, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v1, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    invoke-virtual {v1, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/16 v3, 0x1e

    invoke-virtual {v2, v4, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Pattern()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v0, ""

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "ER_EXTRA_ILLEGAL_TOKENS"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->shrink()V

    return-void
.end method

.method public initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    new-instance v2, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v2, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    invoke-virtual {v2, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v1, ""

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "ER_EXTRA_ILLEGAL_TOKENS"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xpath/XPathProcessorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->shrink()V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-virtual {v0}, Lorg/apache/xpath/XPathProcessorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "/.."

    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    goto :goto_1

    :cond_3
    throw v0
.end method

.method insertOp(III)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v3, v0, p2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, p1, p3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v3, v1, p2

    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method final lookahead(CI)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int v1, v4, p2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v4

    if-gt v1, v4, :cond_2

    if-lez v1, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v4, v4, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorHandler(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method final tokenIs(C)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-char v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final tokenIs(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljavax/xml/transform/TransformerException;

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
