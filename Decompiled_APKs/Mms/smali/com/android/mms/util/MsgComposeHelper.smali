.class Lcom/android/mms/util/MsgComposeHelper;
.super Ljava/lang/Object;
.source "MsgForwardReceiver.java"


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "SEND_"

.field public static final MMS_URI:Landroid/net/Uri; = null

.field public static final SMS_URI:Landroid/net/Uri; = null

.field public static final STR_MMS_URI:Ljava/lang/String; = "content://mms"

.field public static final STR_SMS_URI:Ljava/lang/String; = "content://sms"

.field private static final TAG:Ljava/lang/String; = "MsgComposeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 552
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MsgComposeHelper;->SMS_URI:Landroid/net/Uri;

    .line 553
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MsgComposeHelper;->MMS_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSendMMS(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z
    .locals 26
    .parameter "ctx"
    .parameter "itCompose"
    .parameter "aryAddress"

    .prologue
    .line 425
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 426
    :cond_0
    const/16 v16, 0x0

    .line 508
    :goto_0
    return v16

    .line 429
    :cond_1
    const-string v4, "cs_timestamp"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 430
    .local v6, nTimestamp:J
    const/4 v9, 0x0

    .line 432
    .local v9, aryImgData:[B
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    const/high16 v8, 0x4040

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_6

    .line 433
    const-string v4, "img_data_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 435
    .local v18, image_path:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 437
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v10, composefile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 439
    .local v14, filelength:I
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 440
    .local v15, fin:Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 441
    .local v22, totalread:I
    new-array v9, v14, [B

    .line 442
    :goto_1
    move/from16 v0, v22

    if-ge v0, v14, :cond_2

    .line 443
    sub-int v4, v14, v22

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    .line 444
    .local v11, count:I
    const/4 v4, -0x1

    if-ne v11, v4, :cond_5

    .line 449
    .end local v11           #count:I
    :cond_2
    const-string v4, "MsgComposeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " file length ="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v4, "MsgComposeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " read image data length  = "

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v10           #composefile:Ljava/io/File;
    .end local v14           #filelength:I
    .end local v15           #fin:Ljava/io/FileInputStream;
    .end local v22           #totalread:I
    :goto_2
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v12, deletedfile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 460
    const-string v4, "MsgComposeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Delete file name :"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v12           #deletedfile:Ljava/io/File;
    .end local v18           #image_path:Ljava/lang/String;
    :cond_3
    :goto_3
    const-string v4, "cs_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, strCSID:Ljava/lang/String;
    const-string v4, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 471
    .local v21, subjectStr:Ljava/lang/String;
    const-string v4, "sms_body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 473
    .local v20, strMsgBody:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v6, v7, v4}, Lcom/android/mms/util/MsgComposeHelper;->saveToFile(Landroid/content/Context;[BJI)Landroid/net/Uri;

    move-result-object v23

    .line 474
    .local v23, uriFile:Landroid/net/Uri;
    if-nez v23, :cond_9

    .line 475
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_7

    .line 476
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 447
    .end local v5           #strCSID:Ljava/lang/String;
    .end local v20           #strMsgBody:Ljava/lang/String;
    .end local v21           #subjectStr:Ljava/lang/String;
    .end local v23           #uriFile:Landroid/net/Uri;
    .restart local v10       #composefile:Ljava/io/File;
    .restart local v11       #count:I
    .restart local v14       #filelength:I
    .restart local v15       #fin:Ljava/io/FileInputStream;
    .restart local v18       #image_path:Ljava/lang/String;
    .restart local v22       #totalread:I
    :cond_5
    add-int v22, v22, v11

    .line 448
    goto/16 :goto_1

    .line 453
    .end local v10           #composefile:Ljava/io/File;
    .end local v11           #count:I
    .end local v14           #filelength:I
    .end local v15           #fin:Ljava/io/FileInputStream;
    .end local v22           #totalread:I
    :catch_0
    move-exception v13

    .line 454
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "MsgComposeHelper"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 466
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #image_path:Ljava/lang/String;
    :cond_6
    const-string v4, "img_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v9

    goto :goto_3

    .line 479
    .restart local v5       #strCSID:Ljava/lang/String;
    .restart local v20       #strMsgBody:Ljava/lang/String;
    .restart local v21       #subjectStr:Ljava/lang/String;
    .restart local v23       #uriFile:Landroid/net/Uri;
    :cond_7
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v19, listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_8

    .line 481
    aget-object v4, p2, v17

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 484
    :cond_8
    const/16 v16, 0x0

    .line 486
    .local v16, flag:Z
    new-instance v3, Lcom/android/mms/util/ForwardMMSHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/mms/util/ForwardMMSHelper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 487
    .local v3, helperMMS:Lcom/android/mms/util/ForwardMMSHelper;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/util/ForwardMMSHelper;->createTextMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    :try_start_1
    invoke-virtual {v3}, Lcom/android/mms/util/ForwardMMSHelper;->updateTemporaryMmsMessage()Z

    .line 492
    invoke-virtual {v3}, Lcom/android/mms/util/ForwardMMSHelper;->sendMMSAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 495
    :catch_1
    move-exception v13

    .line 496
    .restart local v13       #e:Ljava/lang/Exception;
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 501
    .end local v3           #helperMMS:Lcom/android/mms/util/ForwardMMSHelper;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #flag:Z
    .end local v17           #i:I
    .end local v19           #listDest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    const-string v4, "image/jpeg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    new-instance v3, Lcom/android/mms/util/SendMMSHelper;

    invoke-direct {v3}, Lcom/android/mms/util/SendMMSHelper;-><init>()V

    .local v3, helperMMS:Lcom/android/mms/util/SendMMSHelper;
    move-object/from16 v4, p0

    move-object/from16 v8, p1

    .line 506
    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/SendMMSHelper;->SendMMS(Landroid/content/Context;Ljava/lang/String;JLandroid/content/Intent;)Z

    .line 508
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public static autoSendSMS(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .parameter "ctx"
    .parameter "dests"
    .parameter "strMsgBody"
    .parameter "strCSID"
    .parameter "nTimestamp"

    .prologue
    .line 393
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    .line 397
    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/android/mms/util/MsgComposeHelper;->sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static composeMessage(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 18
    .parameter "ctx"
    .parameter "it"

    .prologue
    .line 334
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 335
    :cond_0
    const/4 v3, 0x0

    .line 385
    :goto_0
    return v3

    .line 338
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 339
    .local v13, strAction:Ljava/lang/String;
    const-string v3, "com.android.mms.composemsg.autosend"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 340
    const/4 v3, 0x0

    goto :goto_0

    .line 343
    :cond_2
    const-string v3, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 344
    .local v14, strAddress:Ljava/lang/String;
    const-string v3, "sms_body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, strMsgBody:Ljava/lang/String;
    const-string v3, "subject"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, strSubject:Ljava/lang/String;
    const-string v3, "cs_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, strCSID:Ljava/lang/String;
    const-string v3, "cs_timestamp"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 348
    .local v7, nTimestamp:J
    const/4 v11, 0x0

    .line 349
    .local v11, image_path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 350
    .local v10, aryImgData:[B
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x4040

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 352
    const-string v3, "img_data_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 353
    const-string v3, "MsgComposeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " image data path  = "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_1
    const-string v3, "MsgComposeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "composeMessage() address: "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v9, 0x0

    .line 362
    .local v9, aryAddress:[Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    const-string v3, ";"

    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSRecipientNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 366
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/mms/ui/RecipientList;->getRecipientListFromArray(Landroid/content/Context;[Ljava/lang/String;)Lcom/android/mms/ui/RecipientList;

    move-result-object v12

    .line 367
    .local v12, listRecipient:Lcom/android/mms/ui/RecipientList;
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->hasInvalidRecipient()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 368
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->deleteAllInvalidRecipient()V

    .line 370
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    const/high16 v4, 0x4040

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 371
    invoke-static {v15, v11, v9}, Lcom/android/mms/util/MsgComposeHelper;->isSendByMMS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 373
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/mms/util/MsgComposeHelper;->autoSendMMS(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 357
    .end local v9           #aryAddress:[Ljava/lang/String;
    .end local v12           #listRecipient:Lcom/android/mms/ui/RecipientList;
    :cond_5
    const-string v3, "img_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    .line 376
    .restart local v9       #aryAddress:[Ljava/lang/String;
    .restart local v12       #listRecipient:Lcom/android/mms/ui/RecipientList;
    :cond_6
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/util/MsgComposeHelper;->autoSendSMS(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    goto/16 :goto_0

    .line 381
    :cond_7
    invoke-static {v15, v10, v9}, Lcom/android/mms/util/MsgComposeHelper;->isSendByMMS(Ljava/lang/String;[B[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 382
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/mms/util/MsgComposeHelper;->autoSendMMS(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 385
    :cond_8
    invoke-virtual {v12}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/util/MsgComposeHelper;->autoSendSMS(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v3

    goto/16 :goto_0
.end method

.method private static isSendByMMS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "strSubject"
    .parameter "image_path"
    .parameter "aryAddress"

    .prologue
    const/4 v1, 0x1

    .line 531
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v1

    .line 535
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    if-eqz p2, :cond_2

    .line 540
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 541
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 547
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSendByMMS(Ljava/lang/String;[B[Ljava/lang/String;)Z
    .locals 3
    .parameter "strSubject"
    .parameter "aryImgData"
    .parameter "aryAddress"

    .prologue
    const/4 v1, 0x1

    .line 512
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 516
    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-gtz v2, :cond_0

    .line 520
    :cond_2
    if-eqz p2, :cond_3

    .line 521
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 522
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    .end local v0           #i:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saveToFile(Landroid/content/Context;Ljava/lang/String;JI)Landroid/net/Uri;
    .locals 13
    .parameter "ctx"
    .parameter "strFileName"
    .parameter "nTimeStamp"
    .parameter "nIdxImg"

    .prologue
    .line 610
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 611
    :cond_0
    const/4 v11, 0x0

    .line 643
    :goto_0
    return-object v11

    .line 614
    :cond_1
    const/16 v11, 0x1f40

    new-array v0, v11, [B

    .line 616
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 617
    .local v4, iptStream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 620
    .local v6, optStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "SEND_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 621
    .local v10, strPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, fileIpt:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v3, fileOpt:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 626
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    .end local v4           #iptStream:Ljava/io/FileInputStream;
    .local v5, iptStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 629
    .end local v6           #optStream:Ljava/io/FileOutputStream;
    .local v7, optStream:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .local v8, size:I
    :goto_1
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    .line 630
    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 638
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7           #optStream:Ljava/io/FileOutputStream;
    .restart local v6       #optStream:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 639
    .end local v2           #fileIpt:Ljava/io/File;
    .end local v3           #fileOpt:Ljava/io/File;
    .end local v5           #iptStream:Ljava/io/FileInputStream;
    .end local v8           #size:I
    .end local v10           #strPath:Ljava/lang/String;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #iptStream:Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 640
    .local v9, str:Ljava/lang/String;
    const-string v11, "MsgComposeHelper"

    const-string v12, "IOException caught while closing stream"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    const/4 v11, 0x0

    goto :goto_0

    .line 633
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #iptStream:Ljava/io/FileInputStream;
    .end local v6           #optStream:Ljava/io/FileOutputStream;
    .end local v9           #str:Ljava/lang/String;
    .restart local v2       #fileIpt:Ljava/io/File;
    .restart local v3       #fileOpt:Ljava/io/File;
    .restart local v5       #iptStream:Ljava/io/FileInputStream;
    .restart local v7       #optStream:Ljava/io/FileOutputStream;
    .restart local v8       #size:I
    .restart local v10       #strPath:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 634
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 635
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 636
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    goto :goto_0

    .line 638
    .end local v2           #fileIpt:Ljava/io/File;
    .end local v3           #fileOpt:Ljava/io/File;
    .end local v5           #iptStream:Ljava/io/FileInputStream;
    .end local v7           #optStream:Ljava/io/FileOutputStream;
    .end local v8           #size:I
    .end local v10           #strPath:Ljava/lang/String;
    .restart local v4       #iptStream:Ljava/io/FileInputStream;
    .restart local v6       #optStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v4           #iptStream:Ljava/io/FileInputStream;
    .restart local v2       #fileIpt:Ljava/io/File;
    .restart local v3       #fileOpt:Ljava/io/File;
    .restart local v5       #iptStream:Ljava/io/FileInputStream;
    .restart local v10       #strPath:Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #iptStream:Ljava/io/FileInputStream;
    .restart local v4       #iptStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static saveToFile(Landroid/content/Context;[BJI)Landroid/net/Uri;
    .locals 9
    .parameter "ctx"
    .parameter "aryImgData"
    .parameter "nTimeStamp"
    .parameter "nIdxImg"

    .prologue
    const/4 v6, 0x0

    .line 585
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v7, p1

    if-gtz v7, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v6

    .line 589
    :cond_1
    const/4 v2, 0x0

    .line 591
    .local v2, optStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SEND_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, strPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, fileImg:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 594
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v2           #optStream:Ljava/io/FileOutputStream;
    .local v3, optStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :try_start_1
    array-length v8, p1

    invoke-virtual {v3, p1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 597
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 598
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 599
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 601
    .end local v1           #fileImg:Ljava/io/File;
    .end local v3           #optStream:Ljava/io/FileOutputStream;
    .end local v5           #strPath:Ljava/lang/String;
    .restart local v2       #optStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, str:Ljava/lang/String;
    const-string v7, "MsgComposeHelper"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #optStream:Ljava/io/FileOutputStream;
    .end local v4           #str:Ljava/lang/String;
    .restart local v1       #fileImg:Ljava/io/File;
    .restart local v3       #optStream:Ljava/io/FileOutputStream;
    .restart local v5       #strPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #optStream:Ljava/io/FileOutputStream;
    .restart local v2       #optStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "ctx"
    .parameter "dests"
    .parameter "strMsgBody"
    .parameter "strCSID"
    .parameter "nTimestamp"

    .prologue
    .line 402
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/util/MsgComposeHelper$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/util/MsgComposeHelper$1;-><init>([Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 422
    return-void
.end method

.method public static updateMsgDB(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JI)I
    .locals 7
    .parameter "ctx"
    .parameter "nCSID"
    .parameter "uri"
    .parameter "nTimeStamp"
    .parameter "nMsgID"

    .prologue
    const/4 v6, 0x0

    .line 556
    if-nez p0, :cond_0

    .line 557
    const/4 v4, -0x1

    .line 569
    :goto_0
    return v4

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 561
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cs_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {v1, p2, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 565
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "cs_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v4, "cs_timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    int-to-long v4, p5

    invoke-static {p2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 569
    .local v0, Newuri:Landroid/net/Uri;
    invoke-virtual {v1, v0, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
