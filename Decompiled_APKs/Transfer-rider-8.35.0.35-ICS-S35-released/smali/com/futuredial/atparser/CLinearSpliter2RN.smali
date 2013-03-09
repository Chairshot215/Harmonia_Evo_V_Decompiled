.class Lcom/futuredial/atparser/CLinearSpliter2RN;
.super Lcom/futuredial/atparser/CLinearSpliter1;
.source "CISpliter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/futuredial/atparser/CLinearSpliter1;-><init>()V

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
    .line 245
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 246
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 248
    const/4 v12, 0x0

    .line 291
    :goto_0
    return v12

    .line 250
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\n"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\r"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, cStr:Ljava/lang/String;
    sget-object v12, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, cElements:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 253
    .local v3, counter:I
    const/4 v9, 0x0

    .line 254
    .local v9, item:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v12, v1

    if-ge v5, v12, :cond_2

    .line 257
    iget-object v12, p0, Lcom/futuredial/atparser/CLinearSpliter2RN;->m_specialSlices:Ljava/util/ArrayList;

    sub-int v13, v5, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 260
    aget-object v11, v1, v5

    .line 262
    .local v11, temp:Ljava/lang/String;
    invoke-static {v11}, Lcom/futuredial/atparser/ParserHelper;->findLengthUnit(Ljava/lang/String;)I

    move-result v7

    .line 264
    .local v7, iLen:I
    aget-object v12, v1, v5

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 266
    .local v6, iIndex:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v10, v6, v12

    .line 268
    .local v10, start:I
    add-int v4, v10, v7

    .line 270
    .local v4, end:I
    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 272
    invoke-static {v9}, Lcom/futuredial/atparser/ParserHelper;->findComma(Ljava/lang/String;)I

    move-result v8

    .line 275
    .local v8, ilen:I
    add-int/2addr v3, v8

    .line 276
    add-int/2addr v5, v8

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/futuredial/atparser/ParserHelper;->PERCENT_SIGN:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 288
    .end local v4           #end:I
    .end local v6           #iIndex:I
    .end local v7           #iLen:I
    .end local v8           #ilen:I
    .end local v10           #start:I
    .end local v11           #temp:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    :cond_1
    aget-object v9, v1, v5

    goto :goto_2

    .line 291
    :cond_2
    const/4 v12, 0x1

    goto :goto_0
.end method
