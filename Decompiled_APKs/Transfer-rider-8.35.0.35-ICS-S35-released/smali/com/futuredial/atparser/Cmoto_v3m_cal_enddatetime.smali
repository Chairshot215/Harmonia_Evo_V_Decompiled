.class Lcom/futuredial/atparser/Cmoto_v3m_cal_enddatetime;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 22
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
    .line 504
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 505
    const/4 v15, 0x0

    .line 539
    :goto_0
    return v15

    .line 507
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 508
    .local v13, time:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 509
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 510
    .local v6, hour:I
    const/4 v15, 0x3

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 513
    .local v9, minu:I
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 514
    .local v1, date:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    .line 515
    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 516
    .local v10, month:I
    const/4 v15, 0x3

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 517
    .local v4, day:I
    const/4 v15, 0x6

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 519
    .local v14, year:I
    const-string v15, "%04d%02d%02dT%02d%02d00"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, datetime:Ljava/lang/String;
    :try_start_0
    const-string v15, "%04d-%02d-%02d %02d:%02d:00"

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 525
    .local v12, strStartDT:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 527
    .local v11, startDT:Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/32 v20, 0xea60

    mul-long v18, v18, v20

    add-long v7, v16, v18

    .line 528
    .local v7, lTime:J
    invoke-virtual {v11, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 529
    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 530
    const-string v15, "-"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ":"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const-string v16, " "

    const-string v17, "T"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 537
    .end local v2           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v7           #lTime:J
    .end local v11           #startDT:Ljava/util/Date;
    .end local v12           #strStartDT:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/atparser/Cmoto_v3m_cal_enddatetime;->m_result:Ljava/util/ArrayList;

    new-instance v16, Lcom/futuredial/atparser/FieldValue;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v5

    .line 534
    .local v5, e:Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method
