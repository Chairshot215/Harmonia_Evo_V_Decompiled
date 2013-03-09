.class Lcom/futuredial/atparser/Csam_g600pdu_sms;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 35
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1253
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 1255
    const/16 v30, 0x0

    .line 1365
    :goto_0
    return v30

    .line 1259
    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1260
    .local v4, content:Ljava/lang/String;
    move-object/from16 v16, v4

    .line 1261
    .local v16, orgStr:Ljava/lang/String;
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1262
    .local v5, contentLen:I
    const/16 v30, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1264
    .local v8, encodeType:Ljava/lang/String;
    const-string v30, "1"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "36"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_1

    const-string v30, "32"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 1266
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const-string v32, "0"

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const-string v32, "1"

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    :goto_1
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1277
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1278
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    mul-int/lit8 v30, v30, 0x8

    div-int/lit8 v10, v30, 0x7

    .line 1279
    .local v10, iUDLen:I
    const-string v19, "0891683108200105F051000B813185042446F70000FF"

    .line 1282
    .local v19, prefix:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v30

    if-eq v5, v0, :cond_3

    .line 1284
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v30

    div-int/lit8 v10, v30, 0x2

    .line 1285
    const-string v19, "0891683108200105F051000B813185042446F70008FF"

    .line 1288
    :cond_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "%02X"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1291
    .local v18, pduPartInHex:Ljava/lang/String;
    :try_start_0
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v26, t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 1293
    .local v20, s:I
    const/4 v6, 0x2

    .line 1296
    .local v6, e:I
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1297
    .local v25, sub:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v20, v20, 0x2

    .line 1299
    add-int/lit8 v6, v6, 0x2

    .line 1300
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 1302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v3, byteArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, nCount:I
    :goto_2
    if-ge v9, v14, :cond_5

    .line 1305
    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    const/16 v31, 0x10

    invoke-static/range {v30 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v29, v0

    .line 1306
    .local v29, x:B
    invoke-static/range {v29 .. v29}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1309
    .end local v29           #x:B
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1310
    .local v15, nLen:I
    new-array v0, v15, [B

    move-object/from16 v17, v0

    .line 1311
    .local v17, pdu:[B
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_6

    .line 1313
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Byte;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Byte;->byteValue()B

    move-result v30

    aput-byte v30, v17, v9

    .line 1311
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1318
    :cond_6
    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, lsmsID:Ljava/lang/Integer;
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .local v12, lsmsSliceInAll:Ljava/lang/Integer;
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1320
    .local v13, lsmsSubID:Ljava/lang/Integer;
    invoke-static/range {v17 .. v17}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->createFromPdu([B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    move-result-object v21

    .line 1322
    .local v21, sms:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v23

    .line 1323
    .local v23, smsNumber:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v22

    .line 1326
    .local v22, smsContent:Ljava/lang/String;
    const-string v24, ""

    .line 1327
    .local v24, smsTime:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getTimestampMillis()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_7

    .line 1329
    new-instance v27, Landroid/text/format/Time;

    const-string v30, "UTC"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v27, time:Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getTimestampMillis()J

    move-result-wide v30

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1331
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v24

    .line 1334
    .end local v27           #time:Landroid/text/format/Time;
    :cond_7
    const-string v30, "se sms"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "sms number:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "sms time"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "sms content"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual/range {v21 .. v21}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    move-result-object v28

    .line 1341
    .local v28, udhi:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    if-eqz v28, :cond_8

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 1342
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1343
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1344
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1345
    const-string v30, "long sms"

    const-string v31, "long sms:%d (%d/%d)"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v11, v32, v33

    const/16 v33, 0x1

    aput-object v13, v32, v33

    const/16 v33, 0x2

    aput-object v12, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1353
    .end local v3           #byteArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v6           #e:I
    .end local v9           #i:I
    .end local v11           #lsmsID:Ljava/lang/Integer;
    .end local v12           #lsmsSliceInAll:Ljava/lang/Integer;
    .end local v13           #lsmsSubID:Ljava/lang/Integer;
    .end local v14           #nCount:I
    .end local v15           #nLen:I
    .end local v17           #pdu:[B
    .end local v20           #s:I
    .end local v21           #sms:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .end local v22           #smsContent:Ljava/lang/String;
    .end local v23           #smsNumber:Ljava/lang/String;
    .end local v24           #smsTime:Ljava/lang/String;
    .end local v25           #sub:Ljava/lang/String;
    .end local v26           #t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #udhi:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    :catch_0
    move-exception v7

    .line 1354
    .local v7, e1:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1355
    const-string v30, "pdu sms"

    const-string v31, "err -> try utf8"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const-string v32, "0"

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    const-string v32, "1"

    invoke-direct/range {v31 .. v32}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Csam_g600pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v31, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
