.class Lcom/futuredial/pim/G2Sms$ReadSms;
.super Ljava/lang/Object;
.source "G2Sms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/G2Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadSms"
.end annotation


# instance fields
.field private bNeedMoveNextUri:Z

.field private cursor:Landroid/database/Cursor;

.field private jsonObject_item:Lorg/json/JSONObject;

.field private mArrAddressTo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map_uri:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private projection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/pim/G2Sms;

.field uri_current:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/futuredial/pim/G2Sms;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 280
    iput-object p1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->this$0:Lcom/futuredial/pim/G2Sms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    .line 283
    iput-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    .line 284
    iput-boolean v3, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    .line 286
    iput-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    .line 287
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "locked"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->projection:[Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->mArrAddressTo:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/pim/G2Sms;Lcom/futuredial/pim/G2Sms$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Sms$ReadSms;-><init>(Lcom/futuredial/pim/G2Sms;)V

    return-void
.end method

.method private acquireSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "sms_id"

    .prologue
    .line 411
    const/4 v7, 0x0

    .line 412
    .local v7, address:Ljava/lang/String;
    const/16 v19, 0x0

    .line 413
    .local v19, thread_id:Ljava/lang/String;
    const/4 v15, 0x0

    .line 414
    .local v15, recipient_ids:Ljava/lang/String;
    const/16 v20, 0x0

    .line 416
    .local v20, uriPath:Ljava/lang/String;
    const-string v1, "G2Sms"

    const-string v3, "acquireSmsAddress START..."

    invoke-static {v1, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->mArrAddressTo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 419
    :try_start_0
    const-string v20, "content://sms"

    .line 420
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 421
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 491
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 425
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->this$0:Lcom/futuredial/pim/G2Sms;

    iget-object v1, v1, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 426
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 427
    const/4 v1, 0x0

    goto :goto_0

    .line 429
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const-string v1, "thread_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 432
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 435
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms/conversations/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/recipients"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 437
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 438
    if-nez v2, :cond_3

    .line 439
    const/4 v1, 0x0

    goto :goto_0

    .line 442
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->this$0:Lcom/futuredial/pim/G2Sms;

    iget-object v1, v1, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 443
    if-nez v9, :cond_4

    .line 444
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 448
    const-string v1, "recipient_ids"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 450
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_6
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 455
    const-string v20, "content://mms-sms/canonical-addresses"

    .line 456
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 457
    if-nez v2, :cond_7

    .line 458
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 460
    :cond_7
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 461
    .local v16, recipients:[Ljava/lang/String;
    move-object/from16 v8, v16

    .local v8, arr$:[Ljava/lang/String;
    array-length v13, v8

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_a

    aget-object v14, v8, v12

    .line 462
    .local v14, recipient:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->this$0:Lcom/futuredial/pim/G2Sms;

    iget-object v1, v1, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 463
    if-nez v9, :cond_8

    .line 464
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 467
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 468
    const-string v1, "address"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 469
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->mArrAddressTo:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 474
    .end local v14           #recipient:Ljava/lang/String;
    :cond_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v16           #recipients:[Ljava/lang/String;
    :cond_b
    :goto_2
    const-string v18, ""

    .line 481
    .local v18, temp:Ljava/lang/String;
    const-string v7, ""

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->mArrAddressTo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v17

    .line 483
    .local v17, size:I
    const/4 v11, 0x1

    .local v11, i:I
    :goto_3
    move/from16 v0, v17

    if-gt v11, v0, :cond_d

    .line 484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->mArrAddressTo:Ljava/util/Vector;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #temp:Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 485
    .restart local v18       #temp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    move/from16 v0, v17

    if-eq v11, v0, :cond_c

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 483
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 476
    .end local v11           #i:I
    .end local v17           #size:I
    .end local v18           #temp:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 477
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "G2Sms"

    const-string v3, "acquireSmsAddress Exception..."

    invoke-static {v1, v3}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 490
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #i:I
    .restart local v17       #size:I
    .restart local v18       #temp:Ljava/lang/String;
    :cond_d
    const-string v1, "G2Sms"

    const-string v3, "acquireSmsAddress END..."

    invoke-static {v1, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 491
    goto/16 :goto_0
.end method


# virtual methods
.method public InitRead()I
    .locals 5

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, nRet:I
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 301
    iget-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v3, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v3, Lcom/futuredial/pim/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v3, Lcom/futuredial/pim/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    iput-object p1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    .line 323
    invoke-virtual {p0}, Lcom/futuredial/pim/G2Sms$ReadSms;->readOneMessage()I

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public UnInitRead()I
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, nRet:I
    iget-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 315
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    .line 317
    :cond_0
    return v0
.end method

.method move_next_uri()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 390
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 391
    .local v0, bValue:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v4, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bValue:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 392
    .restart local v0       #bValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    sget-object v2, Lcom/futuredial/pim/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    .line 406
    :goto_0
    return v1

    .line 396
    :cond_0
    iget-object v3, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v4, Lcom/futuredial/pim/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bValue:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 397
    .restart local v0       #bValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    sget-object v2, Lcom/futuredial/pim/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    goto :goto_0

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    sget-object v4, Lcom/futuredial/pim/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bValue:Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 402
    .restart local v0       #bValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    sget-object v2, Lcom/futuredial/pim/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 406
    goto :goto_0
.end method

.method public readOneMessage()I
    .locals 19

    .prologue
    .line 333
    const/4 v9, 0x0

    .line 334
    .local v9, nRet:I
    const/4 v10, 0x0

    .line 335
    .local v10, smsUri:Landroid/net/Uri;
    const-string v18, ""

    .line 338
    .local v18, value:Ljava/lang/String;
    const/4 v7, 0x0

    .line 339
    .local v7, bOver:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 342
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/pim/G2Sms$ReadSms;->move_next_uri()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->this$0:Lcom/futuredial/pim/G2Sms;

    iget-object v1, v1, Lcom/futuredial/pim/G2Sms;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->projection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->map_uri:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->uri_current:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    :cond_0
    :goto_1
    if-eqz v7, :cond_5

    const/4 v1, 0x0

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 382
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_1
    :goto_2
    return v1

    .line 348
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v8

    .line 377
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "G2Sms"

    const-string v2, "readStorage(), Exception"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    const/4 v9, 0x1

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 382
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    move v1, v9

    .line 386
    goto :goto_2

    .line 351
    :cond_4
    const/4 v7, 0x1

    .line 352
    goto :goto_1

    .line 361
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, str_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "2"

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, str_ID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "address"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, str_address:Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7

    .line 366
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/futuredial/pim/G2Sms$ReadSms;->acquireSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 367
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "3"

    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "date"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 369
    .local v14, str_date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "5"

    invoke-virtual {v1, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "body"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 371
    .local v13, str_body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "7"

    invoke-virtual {v1, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "read"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 373
    .local v16, str_read:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    const-string v3, "locked"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, str_locked:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->jsonObject_item:Lorg/json/JSONObject;

    const-string v2, "8"

    invoke-virtual {v1, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 382
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 381
    .end local v11           #str_ID:Ljava/lang/String;
    .end local v12           #str_address:Ljava/lang/String;
    .end local v13           #str_body:Ljava/lang/String;
    .end local v14           #str_date:Ljava/lang/String;
    .end local v15           #str_locked:Ljava/lang/String;
    .end local v16           #str_read:Ljava/lang/String;
    .end local v17           #str_type:Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 382
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->bNeedMoveNextUri:Z

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/futuredial/pim/G2Sms$ReadSms;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method
