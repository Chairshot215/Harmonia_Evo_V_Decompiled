.class Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat_v3xx;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "_startDate"
    .parameter "_weekMap"

    .prologue
    const/4 v11, 0x7

    .line 230
    move-object v9, p1

    .line 231
    .local v9, startDate:Ljava/lang/String;
    move-object v7, p2

    .line 233
    .local v7, mask:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 234
    .local v5, iMask:I
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v10, "MM-dd-yyyy"

    invoke-direct {v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, f:Ljava/text/SimpleDateFormat;
    const/4 v8, 0x0

    .line 238
    .local v8, maskValue:I
    :try_start_0
    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 239
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 240
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 241
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 242
    .local v2, dayOfWeek:I
    const/4 v6, 0x0

    .line 244
    .local v6, iType:I
    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_0
    if-lez v5, :cond_8

    .line 271
    const/16 v10, 0x40

    if-lt v5, v10, :cond_2

    .line 273
    add-int/lit8 v5, v5, -0x40

    .line 274
    move v6, v2

    .line 307
    :cond_0
    :goto_1
    if-le v6, v11, :cond_1

    .line 309
    add-int/lit8 v6, v6, -0x7

    .line 312
    :cond_1
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 315
    :pswitch_0
    or-int/lit8 v8, v8, 0x1

    .line 316
    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v8, 0x1

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
    const/4 v8, 0x2

    .line 251
    goto :goto_0

    .line 253
    :pswitch_3
    const/4 v8, 0x4

    .line 254
    goto :goto_0

    .line 256
    :pswitch_4
    const/16 v8, 0x8

    .line 257
    goto :goto_0

    .line 259
    :pswitch_5
    const/16 v8, 0x10

    .line 260
    goto :goto_0

    .line 262
    :pswitch_6
    const/16 v8, 0x20

    .line 263
    goto :goto_0

    .line 265
    :pswitch_7
    const/16 v8, 0x40

    goto :goto_0

    .line 276
    :cond_2
    const/16 v10, 0x20

    if-lt v5, v10, :cond_3

    .line 278
    add-int/lit8 v5, v5, -0x20

    .line 279
    add-int/lit8 v6, v2, 0x1

    goto :goto_1

    .line 281
    :cond_3
    const/16 v10, 0x10

    if-lt v5, v10, :cond_4

    .line 283
    add-int/lit8 v5, v5, -0x10

    .line 284
    add-int/lit8 v6, v2, 0x2

    goto :goto_1

    .line 286
    :cond_4
    const/16 v10, 0x8

    if-lt v5, v10, :cond_5

    .line 288
    add-int/lit8 v5, v5, -0x8

    .line 289
    add-int/lit8 v6, v2, 0x3

    goto :goto_1

    .line 291
    :cond_5
    const/4 v10, 0x4

    if-lt v5, v10, :cond_6

    .line 293
    add-int/lit8 v5, v5, -0x4

    .line 294
    add-int/lit8 v6, v2, 0x4

    goto :goto_1

    .line 296
    :cond_6
    const/4 v10, 0x2

    if-lt v5, v10, :cond_7

    .line 298
    add-int/lit8 v5, v5, -0x2

    .line 299
    add-int/lit8 v6, v2, 0x5

    goto :goto_1

    .line 301
    :cond_7
    const/4 v10, 0x1

    if-lt v5, v10, :cond_0

    .line 303
    add-int/lit8 v5, v5, -0x1

    .line 304
    add-int/lit8 v6, v2, 0x6

    goto :goto_1

    .line 318
    :pswitch_8
    or-int/lit8 v8, v8, 0x2

    .line 319
    goto :goto_0

    .line 321
    :pswitch_9
    or-int/lit8 v8, v8, 0x4

    .line 322
    goto :goto_0

    .line 324
    :pswitch_a
    or-int/lit8 v8, v8, 0x8

    .line 325
    goto :goto_0

    .line 327
    :pswitch_b
    or-int/lit8 v8, v8, 0x10

    .line 328
    goto :goto_0

    .line 330
    :pswitch_c
    or-int/lit8 v8, v8, 0x20

    .line 331
    goto :goto_0

    .line 333
    :pswitch_d
    or-int/lit8 v8, v8, 0x40

    goto :goto_0

    .line 357
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #dayOfWeek:I
    .end local v6           #iType:I
    :catch_0
    move-exception v3

    .line 359
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 360
    const/4 v10, 0x0

    .line 363
    .end local v3           #e:Ljava/text/ParseException;
    :goto_2
    return v10

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v1       #date:Ljava/util/Date;
    .restart local v2       #dayOfWeek:I
    .restart local v6       #iType:I
    :cond_8
    move v10, v8

    goto :goto_2

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 312
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public procValue(Ljava/util/ArrayList;)Z
    .locals 16
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
    .line 369
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x4

    if-ge v14, v15, :cond_0

    const/4 v14, 0x0

    .line 419
    :goto_0
    return v14

    .line 370
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 371
    .local v9, startDate:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xa

    if-ge v14, v15, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    .line 372
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 373
    .local v5, recuType:I
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 374
    .local v8, sInteval:Ljava/lang/String;
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 376
    .local v7, sBitmask:Ljava/lang/String;
    const-string v10, "0"

    .line 377
    .local v10, val:Ljava/lang/String;
    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 380
    .local v6, rpt:Lcom/futuredial/atparser/FieldValue;
    new-instance v2, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v2, v14, v8}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 381
    .local v2, inteval:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    packed-switch v5, :pswitch_data_0

    .line 417
    :goto_1
    iput-object v10, v6, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat_v3xx;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const/4 v14, 0x1

    goto :goto_0

    .line 385
    :pswitch_0
    const-string v10, "0"

    goto :goto_1

    .line 387
    :pswitch_1
    const-string v10, "1"

    goto :goto_1

    .line 389
    :pswitch_2
    const-string v10, "2"

    .line 390
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/futuredial/atparser/Cmoto_p2k_cal_repeat_v3xx;->moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, iMask:I
    new-instance v11, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 392
    .local v11, weekmask:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    .end local v1           #iMask:I
    .end local v11           #weekmask:Lcom/futuredial/publicobj/Field;
    :pswitch_3
    const-string v10, "3"

    .line 396
    new-instance v4, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "1"

    invoke-direct {v4, v14, v15}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 397
    .local v4, moday:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    .end local v4           #moday:Lcom/futuredial/publicobj/Field;
    :pswitch_4
    const-string v10, "3"

    .line 403
    new-instance v3, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v3, v14, v15}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 404
    .local v3, modate:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    .end local v3           #modate:Lcom/futuredial/publicobj/Field;
    :pswitch_5
    const-string v10, "4"

    .line 408
    new-instance v13, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "1"

    invoke-direct {v13, v14, v15}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 409
    .local v13, yoday:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 412
    .end local v13           #yoday:Lcom/futuredial/publicobj/Field;
    :pswitch_6
    const-string v10, "4"

    .line 413
    new-instance v12, Lcom/futuredial/publicobj/Field;

    const/16 v14, 0xd8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v12, v14, v15}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 414
    .local v12, yodate:Lcom/futuredial/publicobj/Field;
    iget-object v14, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
