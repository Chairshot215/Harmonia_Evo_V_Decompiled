.class public Lcom/futuredial/vxx/vmessage/VMsgParser;
.super Ljava/lang/Object;
.source "VMsgParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private AddVCardItemToVMsgItem(Lcom/futuredial/publicobj/Item;Lcom/futuredial/publicobj/Item;Z)V
    .locals 11
    .parameter "vcardItem"
    .parameter "vmsgItem"
    .parameter "bReceiver"

    .prologue
    .line 281
    new-instance v6, Lcom/futuredial/publicobj/Field;

    invoke-direct {v6}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 282
    .local v6, msgContactfield:Lcom/futuredial/publicobj/Field;
    const/4 v9, 0x3

    const-string v10, ""

    invoke-virtual {v6, v9, v10}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, bValueField:Z
    iget-object v9, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 287
    .local v1, enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 288
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 289
    .local v8, nfldID:Ljava/lang/Integer;
    iget-object v9, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 292
    .local v3, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, nCount:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 294
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    .line 295
    .local v2, field:Lcom/futuredial/publicobj/Field;
    iget-object v9, v2, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, v2, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x63

    if-gt v9, v10, :cond_2

    .line 292
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    :cond_2
    iget-object v9, v2, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x63

    if-le v9, v10, :cond_1

    iget-object v9, v2, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x3e7

    if-gt v9, v10, :cond_1

    .line 302
    iget-object v9, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 304
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 305
    .local v4, fieldNum:Lcom/futuredial/publicobj/Field;
    const/4 v9, 0x3

    iget-object v10, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 306
    invoke-virtual {v6, v4}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 307
    const/4 v0, 0x1

    goto :goto_1

    .line 313
    .end local v2           #field:Lcom/futuredial/publicobj/Field;
    .end local v3           #fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v4           #fieldNum:Lcom/futuredial/publicobj/Field;
    .end local v5           #j:I
    .end local v7           #nCount:I
    .end local v8           #nfldID:Ljava/lang/Integer;
    :cond_3
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {p2, v6}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 317
    :cond_4
    return-void
.end method

.method private ParseVBody(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)Z
    .locals 24
    .parameter "objVxxConfig"
    .parameter "strVBody"
    .parameter "item"

    .prologue
    .line 216
    const/4 v4, 0x0

    .line 217
    .local v4, bRet:Z
    const-string v15, "Date:"

    .line 218
    .local v15, strDateTag:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 219
    .local v9, iDateBegin:I
    if-ltz v9, :cond_5

    .line 221
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    add-int v9, v9, v20

    .line 222
    const-string v20, "\n"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 223
    .local v10, iDateEnd:I
    if-lez v10, :cond_5

    .line 225
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/futuredial/vxx/VxxConfig;->bSmsHas_X_NOK_DT:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 227
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, strDate:Ljava/lang/String;
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, strDateTime:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v16, v20

    const/16 v21, 0x2e

    const/16 v22, 0x3a

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 230
    .local v14, strDateDMY:[Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v20, v16, v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 231
    .local v19, strTimeHMS:[Ljava/lang/String;
    const-string v17, ""

    .line 232
    .local v17, strFormatDate:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/futuredial/vxx/VxxConfig;->bSmsDateIsUTC:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 234
    const-string v20, "%04d%02d%02dT%02d%02d%02dZ"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x0

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x1

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    const/16 v23, 0x2

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 243
    :goto_0
    const/16 v20, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 246
    .end local v13           #strDate:Ljava/lang/String;
    .end local v14           #strDateDMY:[Ljava/lang/String;
    .end local v16           #strDateTime:[Ljava/lang/String;
    .end local v17           #strFormatDate:Ljava/lang/String;
    .end local v19           #strTimeHMS:[Ljava/lang/String;
    :cond_0
    const-string v20, "\nEND:VBODY"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 247
    .local v12, iVBodyEnd:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #iDateEnd:I
    .local v11, iDateEnd:I
    if-le v12, v10, :cond_4

    .line 249
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, strMsgContent:Ljava/lang/String;
    :try_start_0
    const-string v20, "UNICODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 253
    .local v6, bufMsgContent:[B
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v6

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 255
    aget-byte v20, v6, v8

    const/16 v21, 0x29

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    add-int/lit8 v20, v8, 0x1

    aget-byte v20, v6, v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 257
    const/16 v20, 0xa

    aput-byte v20, v6, v8

    .line 258
    add-int/lit8 v8, v8, 0x1

    const/16 v20, 0x0

    aput-byte v20, v6, v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 239
    .end local v6           #bufMsgContent:[B
    .end local v8           #i:I
    .end local v11           #iDateEnd:I
    .end local v12           #iVBodyEnd:I
    .end local v18           #strMsgContent:Ljava/lang/String;
    .restart local v10       #iDateEnd:I
    .restart local v13       #strDate:Ljava/lang/String;
    .restart local v14       #strDateDMY:[Ljava/lang/String;
    .restart local v16       #strDateTime:[Ljava/lang/String;
    .restart local v17       #strFormatDate:Ljava/lang/String;
    .restart local v19       #strTimeHMS:[Ljava/lang/String;
    :cond_2
    const-string v20, "%04d%02d%02dT%02d%02d%02d"

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x1

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const/16 v23, 0x0

    aget-object v23, v14, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x0

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x4

    const/16 v23, 0x1

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    const/16 v23, 0x2

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 261
    .end local v10           #iDateEnd:I
    .end local v13           #strDate:Ljava/lang/String;
    .end local v14           #strDateDMY:[Ljava/lang/String;
    .end local v16           #strDateTime:[Ljava/lang/String;
    .end local v17           #strFormatDate:Ljava/lang/String;
    .end local v19           #strTimeHMS:[Ljava/lang/String;
    .restart local v6       #bufMsgContent:[B
    .restart local v8       #i:I
    .restart local v11       #iDateEnd:I
    .restart local v12       #iVBodyEnd:I
    .restart local v18       #strMsgContent:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v18, Ljava/lang/String;

    .end local v18           #strMsgContent:Ljava/lang/String;
    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    const-string v22, "UNICODE"

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    .restart local v18       #strMsgContent:Ljava/lang/String;
    const/16 v20, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 272
    .end local v6           #bufMsgContent:[B
    .end local v8           #i:I
    .end local v18           #strMsgContent:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    .end local v11           #iDateEnd:I
    .end local v12           #iVBodyEnd:I
    :cond_5
    move v5, v4

    .line 276
    .end local v4           #bRet:Z
    .local v5, bRet:I
    :goto_2
    return v5

    .line 263
    .end local v5           #bRet:I
    .restart local v4       #bRet:Z
    .restart local v11       #iDateEnd:I
    .restart local v12       #iVBodyEnd:I
    :catch_0
    move-exception v7

    .line 265
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    const-string v20, "VMsgParser::ParseVBody"

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/4 v4, 0x0

    move v5, v4

    .line 267
    .restart local v5       #bRet:I
    goto :goto_2
.end method

.method private ParseVMsgBaseInfo(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)V
    .locals 12
    .parameter "objVxxConfig"
    .parameter "strVMsgBaseInfo"
    .parameter "item"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 119
    const-string v8, "\n"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, strBaseFields:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v8, v4

    if-ge v0, v8, :cond_9

    .line 122
    aget-object v8, v4, v0

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, iColonPos:I
    if-lez v1, :cond_0

    .line 125
    aget-object v8, v4, v0

    add-int/lit8 v2, v1, 0x1

    .end local v1           #iColonPos:I
    .local v2, iColonPos:I
    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, strTag:Ljava/lang/String;
    aget-object v8, v4, v0

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, strValue:Ljava/lang/String;
    iget-object v8, p1, Lcom/futuredial/vxx/VxxConfig;->hmVMsgTagToID:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 128
    .local v3, nID:Ljava/lang/Integer;
    if-eqz v3, :cond_8

    .line 130
    const-string v5, ""

    .line 131
    .local v5, strFieldValue:Ljava/lang/String;
    const-string v8, "X-IRMC-STATUS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 133
    const-string v8, "READ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .line 120
    .end local v2           #iColonPos:I
    .end local v3           #nID:Ljava/lang/Integer;
    .end local v5           #strFieldValue:Ljava/lang/String;
    .end local v6           #strTag:Ljava/lang/String;
    .end local v7           #strValue:Ljava/lang/String;
    .restart local v1       #iColonPos:I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    .restart local v3       #nID:Ljava/lang/Integer;
    .restart local v5       #strFieldValue:Ljava/lang/String;
    .restart local v6       #strTag:Ljava/lang/String;
    .restart local v7       #strValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 142
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_2
    const-string v8, "X-IRMC-BOX"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 144
    const-string v8, "OUTBOX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 146
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 148
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_3
    const-string v8, "INBOX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 152
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_4
    const-string v8, "DRAFT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 156
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_5
    const-string v8, "SENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 158
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 162
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto :goto_1

    .line 167
    .end local v1           #iColonPos:I
    .restart local v2       #iColonPos:I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p3, v8, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .end local v5           #strFieldValue:Ljava/lang/String;
    :cond_8
    move v1, v2

    .end local v2           #iColonPos:I
    .restart local v1       #iColonPos:I
    goto/16 :goto_1

    .line 208
    .end local v1           #iColonPos:I
    .end local v3           #nID:Ljava/lang/Integer;
    .end local v6           #strTag:Ljava/lang/String;
    .end local v7           #strValue:Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public ParseOneVMsg(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)Z
    .locals 27
    .parameter "objVxxConfig"
    .parameter "strVMsg"
    .parameter "item"

    .prologue
    .line 23
    const/4 v10, 0x1

    .line 25
    .local v10, bRet:Z
    const-string v20, "BEGIN:VMSG"

    .line 26
    .local v20, strBeginVMsg:Ljava/lang/String;
    const-string v18, "\nBEGIN:VCARD"

    .line 27
    .local v18, strBeginVCard:Ljava/lang/String;
    const-string v22, "\nEND:VCARD"

    .line 28
    .local v22, strEndVCard:Ljava/lang/String;
    const-string v19, "\nBEGIN:VENV"

    .line 29
    .local v19, strBeginVEnv:Ljava/lang/String;
    const-string v23, "\nEND:VENV"

    .line 30
    .local v23, strEndVEnv:Ljava/lang/String;
    const-string v17, "\nBEGIN:VBODY"

    .line 31
    .local v17, strBeginVBody:Ljava/lang/String;
    const-string v21, "\nEND:VBODY"

    .line 32
    .local v21, strEndVBody:Ljava/lang/String;
    const-string v24, "\nEND:VMSG"

    .line 34
    .local v24, strEndVMsg:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuffer;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v26, strbufVMsg:Ljava/lang/StringBuffer;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 36
    .local v13, iVCardBegin:I
    const/4 v14, -0x1

    .line 37
    .local v14, iVCardEnd:I
    if-lez v13, :cond_0

    .line 39
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 41
    :cond_0
    if-lez v14, :cond_1

    .line 43
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v14, v5

    .line 45
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 46
    .local v11, iVBodyBegin:I
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 47
    .local v15, iVEnvBegin:I
    :goto_0
    if-lez v13, :cond_6

    if-le v14, v13, :cond_6

    if-le v11, v14, :cond_6

    .line 49
    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, strVCard:Ljava/lang/String;
    new-instance v4, Lcom/futuredial/vxx/vcard/VCardParser;

    invoke-direct {v4}, Lcom/futuredial/vxx/vcard/VCardParser;-><init>()V

    .line 52
    .local v4, vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    new-instance v7, Lcom/futuredial/publicobj/Item;

    invoke-direct {v7}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 53
    .local v7, vcardItem:Lcom/futuredial/publicobj/Item;
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/futuredial/vxx/vcard/VCardParser;->ParseOneVCard(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    if-le v13, v15, :cond_5

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v7, v1, v5}, Lcom/futuredial/vxx/vmessage/VMsgParser;->AddVCardItemToVMsgItem(Lcom/futuredial/publicobj/Item;Lcom/futuredial/publicobj/Item;Z)V

    .line 58
    :cond_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 61
    const/4 v14, -0x1

    .line 62
    if-lez v13, :cond_3

    .line 64
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 66
    :cond_3
    if-lez v14, :cond_4

    .line 68
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v14, v5

    .line 70
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 71
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 72
    goto :goto_0

    .line 55
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 75
    .end local v4           #vcardParser:Lcom/futuredial/vxx/vcard/VCardParser;
    .end local v6           #strVCard:Ljava/lang/String;
    .end local v7           #vcardItem:Lcom/futuredial/publicobj/Item;
    :cond_6
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 76
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 77
    .local v12, iVBodyEnd:I
    if-lez v11, :cond_7

    if-le v12, v11, :cond_7

    .line 79
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v12, v5

    .line 80
    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 81
    .local v25, strVBody:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/futuredial/vxx/vmessage/VMsgParser;->ParseVBody(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)Z

    move-result v10

    .line 91
    .end local v25           #strVBody:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 92
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 93
    .local v16, iVEnvEnd:I
    if-lez v15, :cond_8

    move/from16 v0, v16

    if-le v0, v15, :cond_8

    .line 95
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    add-int v16, v16, v5

    .line 96
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 105
    :goto_3
    invoke-direct/range {p0 .. p3}, Lcom/futuredial/vxx/vmessage/VMsgParser;->ParseVMsgBaseInfo(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;)V

    .line 107
    return v10

    .line 87
    .end local v16           #iVEnvEnd:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 101
    .restart local v16       #iVEnvEnd:I
    :cond_8
    const/4 v10, 0x0

    goto :goto_3
.end method
