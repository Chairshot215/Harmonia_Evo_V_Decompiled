.class Lcom/futuredial/atparser/Cmoto_z6c_cal_repeat;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method

.method private moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "_startDate"
    .parameter "_weekMap"

    .prologue
    const/4 v11, 0x7

    .line 606
    move-object v9, p1

    .line 607
    .local v9, startDate:Ljava/lang/String;
    move-object v7, p2

    .line 609
    .local v7, mask:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 610
    .local v5, iMask:I
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v10, "MM-dd-yyyy"

    invoke-direct {v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 611
    .local v4, f:Ljava/text/SimpleDateFormat;
    const/4 v8, 0x0

    .line 614
    .local v8, maskValue:I
    :try_start_0
    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 615
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 616
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 617
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 618
    .local v2, dayOfWeek:I
    const/4 v6, 0x0

    .line 620
    .local v6, iType:I
    packed-switch v2, :pswitch_data_0

    .line 645
    :goto_0
    if-lez v5, :cond_8

    .line 647
    const/16 v10, 0x40

    if-lt v5, v10, :cond_2

    .line 649
    add-int/lit8 v5, v5, -0x40

    .line 650
    move v6, v2

    .line 683
    :cond_0
    :goto_1
    if-le v6, v11, :cond_1

    .line 685
    add-int/lit8 v6, v6, -0x7

    .line 688
    :cond_1
    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 691
    :pswitch_0
    or-int/lit8 v8, v8, 0x1

    .line 692
    goto :goto_0

    .line 623
    :pswitch_1
    const/4 v8, 0x1

    .line 624
    goto :goto_0

    .line 626
    :pswitch_2
    const/4 v8, 0x2

    .line 627
    goto :goto_0

    .line 629
    :pswitch_3
    const/4 v8, 0x4

    .line 630
    goto :goto_0

    .line 632
    :pswitch_4
    const/16 v8, 0x8

    .line 633
    goto :goto_0

    .line 635
    :pswitch_5
    const/16 v8, 0x10

    .line 636
    goto :goto_0

    .line 638
    :pswitch_6
    const/16 v8, 0x20

    .line 639
    goto :goto_0

    .line 641
    :pswitch_7
    const/16 v8, 0x40

    goto :goto_0

    .line 652
    :cond_2
    const/16 v10, 0x20

    if-lt v5, v10, :cond_3

    .line 654
    add-int/lit8 v5, v5, -0x20

    .line 655
    add-int/lit8 v6, v2, 0x1

    goto :goto_1

    .line 657
    :cond_3
    const/16 v10, 0x10

    if-lt v5, v10, :cond_4

    .line 659
    add-int/lit8 v5, v5, -0x10

    .line 660
    add-int/lit8 v6, v2, 0x2

    goto :goto_1

    .line 662
    :cond_4
    const/16 v10, 0x8

    if-lt v5, v10, :cond_5

    .line 664
    add-int/lit8 v5, v5, -0x8

    .line 665
    add-int/lit8 v6, v2, 0x3

    goto :goto_1

    .line 667
    :cond_5
    const/4 v10, 0x4

    if-lt v5, v10, :cond_6

    .line 669
    add-int/lit8 v5, v5, -0x4

    .line 670
    add-int/lit8 v6, v2, 0x4

    goto :goto_1

    .line 672
    :cond_6
    const/4 v10, 0x2

    if-lt v5, v10, :cond_7

    .line 674
    add-int/lit8 v5, v5, -0x2

    .line 675
    add-int/lit8 v6, v2, 0x5

    goto :goto_1

    .line 677
    :cond_7
    const/4 v10, 0x1

    if-lt v5, v10, :cond_0

    .line 679
    add-int/lit8 v5, v5, -0x1

    .line 680
    add-int/lit8 v6, v2, 0x6

    goto :goto_1

    .line 694
    :pswitch_8
    or-int/lit8 v8, v8, 0x2

    .line 695
    goto :goto_0

    .line 697
    :pswitch_9
    or-int/lit8 v8, v8, 0x4

    .line 698
    goto :goto_0

    .line 700
    :pswitch_a
    or-int/lit8 v8, v8, 0x8

    .line 701
    goto :goto_0

    .line 703
    :pswitch_b
    or-int/lit8 v8, v8, 0x10

    .line 704
    goto :goto_0

    .line 706
    :pswitch_c
    or-int/lit8 v8, v8, 0x20

    .line 707
    goto :goto_0

    .line 709
    :pswitch_d
    or-int/lit8 v8, v8, 0x40

    goto :goto_0

    .line 714
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #dayOfWeek:I
    .end local v6           #iType:I
    :catch_0
    move-exception v3

    .line 716
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 717
    const/4 v10, 0x0

    .line 720
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

    .line 620
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

    .line 688
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


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 19
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
    .line 550
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    const/16 v17, 0x0

    .line 601
    :goto_0
    return v17

    .line 551
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 552
    .local v11, startDate:Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 553
    .local v7, recuType:I
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 554
    .local v10, sInteval:Ljava/lang/String;
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 555
    .local v9, sBitmask:Ljava/lang/String;
    const-string v12, "0"

    .line 557
    .local v12, val:Ljava/lang/String;
    new-instance v8, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v8}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 560
    .local v8, rpt:Lcom/futuredial/atparser/FieldValue;
    new-instance v4, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v10}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 561
    .local v4, inteval:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    packed-switch v7, :pswitch_data_0

    .line 599
    :cond_1
    :goto_1
    iput-object v12, v8, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cmoto_z6c_cal_repeat;->m_result:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    const/16 v17, 0x1

    goto :goto_0

    .line 566
    :pswitch_0
    const-string v12, "0"

    goto :goto_1

    .line 568
    :pswitch_1
    const-string v12, "1"

    .line 569
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-lez v17, :cond_1

    .line 570
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/futuredial/atparser/Cmoto_z6c_cal_repeat;->moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 571
    .local v3, iMask1:I
    new-instance v14, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 572
    .local v14, weekmask1:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 576
    .end local v3           #iMask1:I
    .end local v14           #weekmask1:Lcom/futuredial/publicobj/Field;
    :pswitch_2
    const-string v12, "2"

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lcom/futuredial/atparser/Cmoto_z6c_cal_repeat;->moto_cal_week_map(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 578
    .local v2, iMask:I
    new-instance v13, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 579
    .local v13, weekmask:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 582
    .end local v2           #iMask:I
    .end local v13           #weekmask:Lcom/futuredial/publicobj/Field;
    :pswitch_3
    new-instance v5, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 583
    .local v5, modate:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    const-string v12, "3"

    goto/16 :goto_1

    .line 586
    .end local v5           #modate:Lcom/futuredial/publicobj/Field;
    :pswitch_4
    new-instance v6, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 587
    .local v6, moday:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v12, "3"

    goto/16 :goto_1

    .line 590
    .end local v6           #moday:Lcom/futuredial/publicobj/Field;
    :pswitch_5
    new-instance v15, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 591
    .local v15, yodate:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v12, "4"

    goto/16 :goto_1

    .line 594
    .end local v15           #yodate:Lcom/futuredial/publicobj/Field;
    :pswitch_6
    new-instance v16, Lcom/futuredial/publicobj/Field;

    const/16 v17, 0xd8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "1"

    invoke-direct/range {v16 .. v18}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 595
    .local v16, yoday:Lcom/futuredial/publicobj/Field;
    iget-object v0, v8, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    const-string v12, "4"

    goto/16 :goto_1

    .line 563
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
