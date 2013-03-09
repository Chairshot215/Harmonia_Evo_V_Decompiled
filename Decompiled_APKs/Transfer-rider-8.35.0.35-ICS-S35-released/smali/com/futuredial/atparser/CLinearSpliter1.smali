.class Lcom/futuredial/atparser/CLinearSpliter1;
.super Ljava/lang/Object;
.source "CISpliter.java"

# interfaces
.implements Lcom/futuredial/atparser/CISpliter;


# instance fields
.field protected m_specialSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/CLinearSpliter1;->m_specialSlices:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method private indexOfData([Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .parameter "v"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 231
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public do_split(Ljava/lang/StringBuffer;Ljava/util/ArrayList;)Z
    .locals 17
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
    .line 167
    .local p2, saveto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 170
    const/4 v14, 0x0

    .line 220
    :goto_0
    return v14

    .line 172
    :cond_0
    const/4 v6, 0x0

    .line 174
    .local v6, item:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, v:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, counter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v14, v13

    if-ge v3, v14, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atparser/CLinearSpliter1;->m_specialSlices:Ljava/util/ArrayList;

    sub-int v15, v3, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 182
    aget-object v14, v13, v3

    const-string v15, "\""

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, temp:Ljava/lang/String;
    const-string v14, "^\\d+$"

    invoke-static {v14, v12}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 185
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, iLen:I
    aget-object v14, v13, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v14}, Lcom/futuredial/atparser/CLinearSpliter1;->indexOfData([Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 187
    .local v4, iIndex:I
    aget-object v14, v13, v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v4

    add-int/lit8 v9, v14, 0x1

    .line 189
    .local v9, start:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, subStr:Ljava/lang/String;
    const-string v14, "UTF-8"

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 192
    .local v10, subByte:[B
    new-array v7, v5, [B

    .line 193
    .local v7, itemArray:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v14, v7, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    new-instance v6, Ljava/lang/String;

    .end local v6           #item:Ljava/lang/String;
    const-string v14, "UTF-8"

    invoke-direct {v6, v7, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 195
    .restart local v6       #item:Ljava/lang/String;
    invoke-static {v6}, Lcom/futuredial/atparser/ParserHelper;->findComma(Ljava/lang/String;)I

    move-result v8

    .line 197
    .local v8, len:I
    add-int v14, v1, v8

    add-int/lit8 v1, v14, 0x1

    .line 198
    add-int v14, v3, v8

    add-int/lit8 v3, v14, 0x1

    .line 200
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 213
    .end local v4           #iIndex:I
    .end local v5           #iLen:I
    .end local v7           #itemArray:[B
    .end local v8           #len:I
    .end local v9           #start:I
    .end local v10           #subByte:[B
    .end local v11           #subStr:Ljava/lang/String;
    .end local v12           #temp:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .restart local v12       #temp:Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 210
    .end local v12           #temp:Ljava/lang/String;
    :cond_2
    aget-object v6, v13, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 216
    .end local v1           #counter:I
    .end local v3           #i:I
    .end local v6           #item:Ljava/lang/String;
    .end local v13           #v:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public set_para(Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter "para"

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, str:[Ljava/lang/String;
    array-length v1, v2

    .line 156
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 158
    iget-object v3, p0, Lcom/futuredial/atparser/CLinearSpliter1;->m_specialSlices:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method
