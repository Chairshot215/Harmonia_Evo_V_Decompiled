.class Lcom/futuredial/atparser/CSAMD900SMSSpliter;
.super Ljava/lang/Object;
.source "CISpliter.java"

# interfaces
.implements Lcom/futuredial/atparser/CISpliter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter "atdata"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 481
    .local v7, result:Z
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 482
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 484
    :cond_0
    const/4 v13, 0x0

    .line 527
    :goto_0
    return v13

    .line 487
    :cond_1
    const-string v13, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 488
    .local v2, iIndex:I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, s1:Ljava/lang/String;
    sget-object v13, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 490
    .local v3, lastComma:I
    invoke-static {v8}, Lcom/futuredial/atparser/ParserHelper;->parseByRex(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 491
    .local v12, subStr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v13, v12

    if-ge v1, v13, :cond_2

    .line 493
    aget-object v13, v12, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 497
    .local v9, s2:Ljava/lang/String;
    const/4 v10, 0x0

    .line 498
    .local v10, strPart1:Ljava/lang/String;
    const/4 v11, 0x0

    .line 502
    .local v11, strPart2:Ljava/lang/String;
    const-string v13, "(.*?),\\d,\\d"

    const/16 v14, 0x20

    invoke-static {v13, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 503
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 504
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 506
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v4

    .line 507
    .local v4, matchResult:Ljava/util/regex/MatchResult;
    const/4 v13, 0x1

    invoke-interface {v4, v13}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 508
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    const-string v11, "0"

    .line 510
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v4           #matchResult:Ljava/util/regex/MatchResult;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v14, 0xd

    if-ge v13, v14, :cond_4

    .line 526
    const/4 v13, 0x3

    const-string v14, "\"***\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 527
    :cond_4
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "para"

    .prologue
    .line 534
    return-void
.end method
