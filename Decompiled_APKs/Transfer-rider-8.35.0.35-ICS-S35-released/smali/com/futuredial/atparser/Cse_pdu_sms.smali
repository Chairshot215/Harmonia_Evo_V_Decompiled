.class Lcom/futuredial/atparser/Cse_pdu_sms;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 30
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
    .line 1140
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1142
    const/16 v26, 0x0

    .line 1241
    :goto_0
    return v26

    .line 1146
    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1147
    .local v4, content:Ljava/lang/String;
    move-object v12, v4

    .line 1150
    .local v12, orgStr:Ljava/lang/String;
    const-string v26, "\r\n"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1152
    .local v8, ipos:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v0, v8, :cond_1

    .line 1154
    const/16 v26, 0x0

    goto :goto_0

    .line 1157
    :cond_1
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 1158
    .local v24, unusefulLen:Ljava/lang/String;
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1160
    .local v14, pduPartInHex:Ljava/lang/String;
    const-string v26, "\r\n"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1163
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v21, t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1165
    .local v15, s:I
    const/4 v5, 0x2

    .line 1168
    .local v5, e:I
    :cond_2
    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1169
    .local v20, sub:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    add-int/lit8 v15, v15, 0x2

    .line 1171
    add-int/lit8 v5, v5, 0x2

    .line 1172
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v15, v0, :cond_2

    .line 1174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v3, byteArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_3

    .line 1177
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 1178
    .local v25, x:B
    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1181
    .end local v25           #x:B
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v13, v0, [B

    .line 1182
    .local v13, pdu:[B
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_4

    .line 1184
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Byte;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Byte;->byteValue()B

    move-result v26

    aput-byte v26, v13, v7

    .line 1182
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1188
    :cond_4
    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, lsmsID:Ljava/lang/Integer;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .local v10, lsmsSliceInAll:Ljava/lang/Integer;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1190
    .local v11, lsmsSubID:Ljava/lang/Integer;
    :try_start_0
    invoke-static {v13}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->createFromPdu([B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    move-result-object v16

    .line 1192
    .local v16, sms:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 1193
    .local v18, smsNumber:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v17

    .line 1194
    .local v17, smsContent:Ljava/lang/String;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_6

    .line 1196
    :cond_5
    const-string v26, "se sms"

    const-string v27, "sms content null or blank"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v17, " "

    .line 1201
    :cond_6
    const-string v19, ""

    .line 1202
    .local v19, smsTime:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getTimestampMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    .line 1204
    new-instance v22, Landroid/text/format/Time;

    const-string v26, "UTC"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v22, time:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getTimestampMillis()J

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1206
    invoke-virtual/range {v22 .. v22}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v19

    .line 1209
    .end local v22           #time:Landroid/text/format/Time;
    :cond_7
    const-string v26, "se sms"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sms number:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\nsms time:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\nsms content:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-virtual/range {v16 .. v16}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    move-result-object v23

    .line 1216
    .local v23, udhi:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 1217
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1218
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1219
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1220
    const-string v26, "long sms"

    const-string v27, "long sms:%d (%d/%d)"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v9, v28, v29

    const/16 v29, 0x1

    aput-object v11, v28, v29

    const/16 v29, 0x2

    aput-object v10, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cse_pdu_sms;->m_result:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    new-instance v27, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v16           #sms:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    .end local v17           #smsContent:Ljava/lang/String;
    .end local v18           #smsNumber:Ljava/lang/String;
    .end local v19           #smsTime:Ljava/lang/String;
    .end local v23           #udhi:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    :goto_3
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 1237
    :catch_0
    move-exception v6

    .line 1238
    .local v6, e1:Ljava/lang/Exception;
    const-string v26, "pdu sms"

    const-string v27, "err"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
