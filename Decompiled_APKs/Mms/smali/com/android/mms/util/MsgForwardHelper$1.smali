.class final Lcom/android/mms/util/MsgForwardHelper$1;
.super Ljava/lang/Object;
.source "MsgForwardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/MsgForwardHelper;->sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;[Landroid/telephony/SmsMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arySMSMsg:[Landroid/telephony/SmsMessage;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dests:[Ljava/lang/String;


# direct methods
.method constructor <init>([Landroid/telephony/SmsMessage;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    iput-object p2, p0, Lcom/android/mms/util/MsgForwardHelper$1;->val$dests:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/util/MsgForwardHelper$1;->val$ctx:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 366
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 368
    .local v6, failed:Ljava/lang/Boolean;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-gtz v20, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v18, Ljava/lang/String;

    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .line 374
    .local v18, strMsgBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    .local v2, arr$:[Landroid/telephony/SmsMessage;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v13, v2, v8

    .line 375
    .local v13, msgSMS:Landroid/telephony/SmsMessage;
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, body:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 380
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 374
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 386
    .end local v3           #body:Ljava/lang/String;
    .end local v13           #msgSMS:Landroid/telephony/SmsMessage;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$dests:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 387
    const-string v20, "MsgForwardHelper"

    const-string v21, "Line1 number is equal to forward number, stop forwarding."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 448
    .end local v2           #arr$:[Landroid/telephony/SmsMessage;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v18           #strMsgBody:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 449
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 451
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 456
    goto :goto_0

    .line 390
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #arr$:[Landroid/telephony/SmsMessage;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v18       #strMsgBody:Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$dests:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 391
    const-string v20, "MsgForwardHelper"

    const-string v21, "Sender number is equal to forward number, stop forwarding."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 452
    .end local v2           #arr$:[Landroid/telephony/SmsMessage;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v18           #strMsgBody:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 453
    .local v5, e:Lcom/google/android/mms/MmsException;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 456
    goto/16 :goto_0

    .line 396
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #arr$:[Landroid/telephony/SmsMessage;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v18       #strMsgBody:Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0902ae

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "((\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?(([0-9][0-9\\- \\.][0-9\\- \\.]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))|(((?<!\\d)[0-9])[0-9]?[\\-\\. ]([0-9]+|([0-9\\-\\. ]+(([ ][0-9]+((?=\\s)|\\b))|([\\.\\-][0-9]+)))))|((?<![ ])[0-9]+)))|([0-9]{5,})"

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, forwardPatternString:Ljava/lang/String;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 398
    .local v15, phonePattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 399
    .local v12, matcher:Ljava/util/regex/Matcher;
    const/4 v11, 0x0

    .line 400
    .local v11, matchCount:I
    :cond_6
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 401
    add-int/lit8 v11, v11, 0x1

    .line 402
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v11, v0, :cond_6

    .line 403
    const-string v20, "MsgForwardHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Forward count: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " >= Forward threshold: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", stop forwarding."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 454
    .end local v2           #arr$:[Landroid/telephony/SmsMessage;
    .end local v7           #forwardPatternString:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v11           #matchCount:I
    .end local v12           #matcher:Ljava/util/regex/Matcher;
    .end local v15           #phonePattern:Ljava/util/regex/Pattern;
    .end local v18           #strMsgBody:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 455
    .local v5, e:Ljava/lang/Exception;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 411
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #arr$:[Landroid/telephony/SmsMessage;
    .restart local v7       #forwardPatternString:Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #matchCount:I
    .restart local v12       #matcher:Ljava/util/regex/Matcher;
    .restart local v15       #phonePattern:Ljava/util/regex/Pattern;
    .restart local v18       #strMsgBody:Ljava/lang/String;
    :cond_7
    const/16 v19, 0x0

    .line 412
    .local v19, strVcard:Ljava/lang/String;
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v16, sbData:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    array-length v10, v2

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_9

    aget-object v17, v2, v8

    .line 414
    .local v17, sms:Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 415
    .local v4, data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 416
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 419
    .end local v4           #data:Ljava/lang/String;
    .end local v17           #sms:Landroid/telephony/SmsMessage;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 422
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v9, it:Landroid/content/Intent;
    const-string v20, "dest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$dests:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v20, "threadId"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 427
    const-string v20, "msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v20, "vcard"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v20

    if-lez v20, :cond_d

    .line 436
    const-string v20, "priority"

    const-string v21, "high"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 443
    const-string v20, "callback"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getCallBackNumber()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    :cond_b
    new-instance v14, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v9}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 447
    .local v14, msgSender:Lcom/android/mms/transaction/MessageSender;
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-interface {v14, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    goto/16 :goto_0

    .line 430
    .end local v14           #msgSender:Lcom/android/mms/transaction/MessageSender;
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0902ae

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/MsgForwardHelper$1;->val$arySMSMsg:[Landroid/telephony/SmsMessage;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 431
    const-string v20, "msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 438
    :cond_d
    const-string v20, "priority"

    const-string v21, "normal"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4
.end method
