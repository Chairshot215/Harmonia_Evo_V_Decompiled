.class public Lcom/futuredial/vxx/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/futuredial/vxx/VBuilder;


# static fields
.field public static DEFAULT_CHARSET:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field public static sDefaultCharsetForQP:Ljava/lang/String;


# instance fields
.field private mCharsetFFWE:Ljava/lang/String;

.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

.field private mCurrentVNode:Lcom/futuredial/vxx/VNode;

.field private mNodeListPos:I

.field private mSourceCharset:Ljava/lang/String;

.field private mStrictLineBreakParsing:Z

.field private mTargetCharset:Ljava/lang/String;

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/futuredial/vxx/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "VDATABuilder"

    sput-object v0, Lcom/futuredial/vxx/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    .line 43
    const-string v0, "UTF-8"

    sput-object v0, Lcom/futuredial/vxx/VDataBuilder;->DEFAULT_CHARSET:Ljava/lang/String;

    .line 44
    const-string v0, "ISO-8859-1"

    sput-object v0, Lcom/futuredial/vxx/VDataBuilder;->sDefaultCharsetForQP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sourceCharset"
    .parameter "strCharsetFFWE"
    .parameter "strictLineBreakParsing"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCharsetFFWE:Ljava/lang/String;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    .line 91
    :goto_0
    iput-object p2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCharsetFFWE:Ljava/lang/String;

    .line 93
    iput-boolean p3, p0, Lcom/futuredial/vxx/VDataBuilder;->mStrictLineBreakParsing:Z

    .line 94
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/futuredial/vxx/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    iput-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "originalString"
    .parameter "targetCharset"

    .prologue
    .line 188
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCharsetFFWE:Ljava/lang/String;

    .line 192
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    .end local p1
    :cond_2
    :goto_0
    return-object p1

    .line 200
    .restart local p1
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 201
    .local v1, strBuffer:[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    .line 202
    .end local v1           #strBuffer:[B
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/futuredial/vxx/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode: charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "value"
    .parameter "targetCharset"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 212
    if-eqz p3, :cond_c

    .line 213
    const-string v19, "BASE64"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "B"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 215
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    .line 290
    .end local p1
    :goto_0
    return-object p1

    .line 218
    .restart local p1
    :cond_1
    const-string v19, "QUOTED-PRINTABLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 219
    const-string v19, "=\r\n "

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "= "

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "=\t"

    const-string v21, "\t"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 222
    .local v18, quotedPrintable:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/vxx/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 223
    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, lines:[Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v4, builder:Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_9

    aget-object v14, v3, v11

    .line 254
    .local v14, line:Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 255
    const/16 v19, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 257
    :cond_2
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 225
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #lines:[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 227
    .local v13, length:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v13, :cond_7

    .line 229
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 230
    .local v6, ch:C
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 231
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 233
    :cond_5
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v6, v0, :cond_6

    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    add-int/lit8 v19, v13, -0x1

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    .line 237
    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 238
    .local v17, nextCh:C
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 239
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 243
    .end local v17           #nextCh:C
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 246
    .end local v6           #ch:C
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, finalLine:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 248
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .restart local v15       #lines:[Ljava/lang/String;
    goto/16 :goto_1

    .line 261
    .end local v9           #finalLine:Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #length:I
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    :cond_9
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 268
    .local v5, bytes:[B
    :goto_5
    invoke-static {v5}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v5

    .line 275
    if-eqz p2, :cond_a

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_b

    .line 277
    :cond_a
    new-instance p1, Ljava/lang/String;

    .end local p1
    sget-object v19, Lcom/futuredial/vxx/VDataBuilder;->sDefaultCharsetForQP:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 283
    :catch_0
    move-exception v7

    .line 284
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Lcom/futuredial/vxx/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance p1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    .line 262
    .end local v5           #bytes:[B
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p1
    :catch_1
    move-exception v8

    .line 263
    .local v8, e1:Ljava/io/UnsupportedEncodingException;
    sget-object v19, Lcom/futuredial/vxx/VDataBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to encode: charset="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/vxx/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5       #bytes:[B
    goto :goto_5

    .line 281
    .end local v8           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_b
    :try_start_2
    new-instance p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 290
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v5           #bytes:[B
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #lines:[Ljava/lang/String;
    .end local v18           #quotedPrintable:Ljava/lang/String;
    .restart local p1
    :cond_c
    invoke-direct/range {p0 .. p2}, Lcom/futuredial/vxx/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 391
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 392
    .local v2, size:I
    if-le v2, v5, :cond_2

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .local v4, typeListB:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 395
    .local v3, type:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 398
    .local v1, len:I
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_1

    .line 399
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 405
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #len:I
    .end local v4           #typeListB:Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 401
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #len:I
    .restart local v4       #typeListB:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 402
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #len:I
    .end local v4           #typeListB:Ljava/lang/StringBuilder;
    :cond_2
    if-ne v2, v5, :cond_3

    .line 403
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 405
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method


# virtual methods
.method public DecodeCurField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 357
    const-string v3, ""

    .line 369
    :goto_0
    return-object v3

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v1, v3, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 362
    .local v1, paramMap:Landroid/content/ContentValues;
    const-string v3, "CHARSET"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/futuredial/vxx/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, targetCharset:Ljava/lang/String;
    const-string v3, "ENCODING"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, encoding:Ljava/lang/String;
    invoke-direct {p0, p1, v2, v0}, Lcom/futuredial/vxx/VDataBuilder;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public end()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public endProperty()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentVNode:Lcom/futuredial/vxx/VNode;

    iget-object v0, v0, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public endRecord()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/vxx/VNode;

    .line 132
    .local v0, endNode:Lcom/futuredial/vxx/VNode;
    const/4 v1, 0x0

    iput v1, v0, Lcom/futuredial/vxx/VNode;->parseStatus:I

    .line 133
    :cond_0
    iget v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_1

    .line 134
    iget v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    .line 135
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/vxx/VNode;

    iget v1, v1, Lcom/futuredial/vxx/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/vxx/VNode;

    iput-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentVNode:Lcom/futuredial/vxx/VNode;

    .line 139
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strEscSet"
    .parameter "bEscValid"
    .parameter "text"

    .prologue
    .line 295
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 299
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 301
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 302
    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_1

    .line 304
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 305
    .local v4, nextch:C
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 307
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 299
    .end local v4           #nextch:C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .restart local v4       #nextch:C
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 317
    .end local v4           #nextch:C
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    .end local v1           #ch:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 324
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local p3
    :cond_3
    return-object p3
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iput-object p1, v0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    :cond_0
    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    const-string v1, "ENCODING"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 181
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyValues(Ljava/lang/String;ZLjava/util/List;)V
    .locals 7
    .parameter "strEscSet"
    .parameter "bEscValid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 328
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 329
    :cond_0
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    .line 330
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v5, v5, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 331
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v5, v5, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    const-string v6, ""

    iput-object v6, v5, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    .line 351
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v2, v5, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 338
    .local v2, paramMap:Landroid/content/ContentValues;
    const-string v5, "CHARSET"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/futuredial/vxx/CharsetUtils;->nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, targetCharset:Ljava/lang/String;
    const-string v5, "ENCODING"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, encoding:Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 346
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v5, v5, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Lcom/futuredial/vxx/VDataBuilder;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6}, Lcom/futuredial/vxx/VDataBuilder;->maybeUnescapeText(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v6, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v6, v6, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/futuredial/vxx/VDataBuilder;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public propertyValues_MultiFiled(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "strEscSet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    .line 375
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v2, v2, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 376
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v2, v2, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    const-string v3, ""

    iput-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v2, v2, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v1           #value:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v3, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    iget-object v3, v3, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/futuredial/vxx/VDataBuilder;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/futuredial/vxx/PropertyNode;

    invoke-direct {v0}, Lcom/futuredial/vxx/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentPropNode:Lcom/futuredial/vxx/PropertyNode;

    .line 143
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 120
    new-instance v0, Lcom/futuredial/vxx/VNode;

    invoke-direct {v0}, Lcom/futuredial/vxx/VNode;-><init>()V

    .line 121
    .local v0, vnode:Lcom/futuredial/vxx/VNode;
    const/4 v1, 0x1

    iput v1, v0, Lcom/futuredial/vxx/VNode;->parseStatus:I

    .line 122
    iput-object p1, v0, Lcom/futuredial/vxx/VNode;->VName:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    .line 127
    iget-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/futuredial/vxx/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/vxx/VNode;

    iput-object v1, p0, Lcom/futuredial/vxx/VDataBuilder;->mCurrentVNode:Lcom/futuredial/vxx/VNode;

    .line 128
    return-void
.end method
