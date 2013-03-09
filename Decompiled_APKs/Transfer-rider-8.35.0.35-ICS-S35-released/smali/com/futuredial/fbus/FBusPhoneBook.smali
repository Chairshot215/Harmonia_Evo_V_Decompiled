.class public Lcom/futuredial/fbus/FBusPhoneBook;
.super Ljava/lang/Object;
.source "FBusPhoneBook.java"

# interfaces
.implements Lcom/futuredial/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;,
        Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;,
        Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;
    }
.end annotation


# static fields
.field public static final CALCU_TOKEN:I = 0x100

.field public static final DERR_SUCCESS:I = 0x0

.field public static final DERR_UNKNOWN:I = 0x1

.field public static final LogTag:Ljava/lang/String; = "FBusPhoneBook"

.field public static final MODULE_CALENDAR:I = 0x1

.field public static final MODULE_MESSAGE:I = 0x2

.field public static final MODULE_PHONEBOOK:I


# instance fields
.field private fbusConfig:Lcom/futuredial/fbus/FBusConfig;

.field private m_iCapacity:I

.field private m_iEntryNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {v0}, Lcom/futuredial/fbus/FBusConfig;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusPhoneBook;->fbusConfig:Lcom/futuredial/fbus/FBusConfig;

    .line 35
    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook;->m_iCapacity:I

    .line 36
    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook;->m_iEntryNum:I

    .line 37
    return-void
.end method

.method private ParseOneContact([BLcom/futuredial/fbus/FBusConfig;Lcom/futuredial/publicobj/Item;)I
    .locals 28
    .parameter "buffer"
    .parameter "fbusConfig"
    .parameter "item"

    .prologue
    .line 548
    const/16 v19, -0x1

    .line 550
    .local v19, iRet:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1d

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 552
    const/4 v3, 0x0

    .line 554
    .local v3, addField:Lcom/futuredial/publicobj/Field;
    const/16 v24, 0x12

    aget-byte v24, p1, v24

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    const/16 v25, 0x13

    aget-byte v25, p1, v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    move/from16 v0, v25

    rem-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 556
    const/16 v24, 0x1b

    aget-byte v24, p1, v24

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v9, v0, 0x100

    .line 557
    .local v9, fieldCount:I
    const/4 v8, 0x0

    .line 558
    .local v8, fieldActualCount:I
    const/16 v11, 0x1c

    .line 559
    .local v11, iCursor:I
    const/16 v11, 0x1c

    :cond_0
    :goto_0
    add-int/lit8 v24, v11, 0x5

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 561
    new-instance v5, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1, v11}, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;-><init>(Lcom/futuredial/fbus/FBusPhoneBook;[BI)V

    .line 562
    .local v5, baseFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->m_iFieldLen:I
    invoke-static {v5}, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->access$000(Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;)I

    move-result v24

    add-int v24, v24, v11

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 657
    .end local v5           #baseFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 659
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 662
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v11, v0, :cond_3

    .line 664
    const/16 v19, -0x2

    .line 674
    .end local v3           #addField:Lcom/futuredial/publicobj/Field;
    .end local v8           #fieldActualCount:I
    .end local v9           #fieldCount:I
    .end local v11           #iCursor:I
    :cond_3
    return v19

    .line 566
    .restart local v3       #addField:Lcom/futuredial/publicobj/Field;
    .restart local v5       #baseFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;
    .restart local v8       #fieldActualCount:I
    .restart local v9       #fieldCount:I
    .restart local v11       #iCursor:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 567
    move v15, v11

    .line 568
    .local v15, iFieldBegin:I
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->m_iFieldLen:I
    invoke-static {v5}, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->access$000(Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;)I

    move-result v24

    add-int v11, v11, v24

    .line 570
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->m_iFieldType:I
    invoke-static {v5}, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->access$100(Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/fbus/FBusConfig;->GetFieldType(I)I

    move-result v17

    .line 572
    .local v17, iFieldType:I
    const/16 v16, 0x0

    .line 573
    .local v16, iFieldID:I
    const/4 v12, 0x0

    .line 574
    .local v12, iDataBeingPos:I
    const/4 v13, 0x0

    .line 575
    .local v13, iDataLen:I
    const-string v22, ""

    .line 576
    .local v22, strEncodingType:Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 578
    new-instance v21, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;-><init>(Lcom/futuredial/fbus/FBusPhoneBook;[BI)V

    .line 579
    .local v21, numFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iNumType:I
    invoke-static/range {v21 .. v21}, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->access$200(Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/fbus/FBusConfig;->GetCfgPBField(II)Lcom/futuredial/fbus/FBusConfig$CfgPBField;

    move-result-object v6

    .line 580
    .local v6, cfgPBField:Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    if-eqz v6, :cond_0

    .line 584
    invoke-virtual {v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetPimID()I

    move-result v16

    .line 585
    invoke-virtual {v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetEncodingType()Ljava/lang/String;

    move-result-object v22

    .line 586
    add-int/lit8 v12, v15, 0xa

    .line 587
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iDataLen:I
    invoke-static/range {v21 .. v21}, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->access$300(Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;)I

    move-result v13

    .line 603
    .end local v6           #cfgPBField:Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    .end local v21           #numFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;
    :cond_5
    :goto_2
    if-lez v16, :cond_0

    if-lez v12, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 605
    const-string v23, ""

    .line 606
    .local v23, strFieldContent:Ljava/lang/String;
    const-string v24, "xwstring"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_a

    if-lez v13, :cond_a

    .line 610
    const/16 v24, 0x2

    move/from16 v0, v24

    if-le v13, v0, :cond_6

    :try_start_0
    rem-int/lit8 v24, v13, 0x2

    if-nez v24, :cond_6

    add-int v24, v12, v13

    add-int/lit8 v24, v24, -0x1

    aget-byte v24, p1, v24

    if-nez v24, :cond_6

    add-int v24, v12, v13

    add-int/lit8 v24, v24, -0x2

    aget-byte v24, p1, v24

    if-nez v24, :cond_6

    .line 612
    add-int/lit8 v13, v13, -0x2

    .line 614
    :cond_6
    new-instance v23, Ljava/lang/String;

    .end local v23           #strFieldContent:Ljava/lang/String;
    const-string v24, "UNICODE"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v12, v13, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .restart local v23       #strFieldContent:Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 634
    const/16 v24, 0x7ee

    move/from16 v0, v16

    move/from16 v1, v24

    if-lt v0, v1, :cond_b

    const/16 v24, 0x7f6

    move/from16 v0, v16

    move/from16 v1, v24

    if-gt v0, v1, :cond_b

    .line 636
    if-nez v3, :cond_8

    .line 638
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #addField:Lcom/futuredial/publicobj/Field;
    invoke-direct {v3}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 639
    .restart local v3       #addField:Lcom/futuredial/publicobj/Field;
    const/16 v24, 0x13ee

    const-string v25, ""

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 641
    :cond_8
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 642
    .local v4, addProperty:Lcom/futuredial/publicobj/Field;
    move/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 643
    invoke-virtual {v3, v4}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 589
    .end local v4           #addProperty:Lcom/futuredial/publicobj/Field;
    .end local v23           #strFieldContent:Ljava/lang/String;
    :cond_9
    const/16 v24, 0x2

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 591
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->m_iFieldType:I
    invoke-static {v5}, Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;->access$100(Lcom/futuredial/fbus/FBusPhoneBook$PBBaseFieldInfo;)I

    move-result v24

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/fbus/FBusConfig;->GetCfgPBField(II)Lcom/futuredial/fbus/FBusConfig$CfgPBField;

    move-result-object v6

    .line 592
    .restart local v6       #cfgPBField:Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    if-eqz v6, :cond_0

    .line 596
    new-instance v10, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;

    invoke-virtual {v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetHeadLen()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v10, v0, v1, v15, v2}, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;-><init>(Lcom/futuredial/fbus/FBusPhoneBook;[BII)V

    .line 597
    .local v10, generlaFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;
    invoke-virtual {v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetPimID()I

    move-result v16

    .line 598
    invoke-virtual {v6}, Lcom/futuredial/fbus/FBusConfig$CfgPBField;->GetEncodingType()Ljava/lang/String;

    move-result-object v22

    .line 599
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldHeadLen:I
    invoke-static {v10}, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->access$400(Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;)I

    move-result v24

    add-int v12, v15, v24

    .line 600
    #getter for: Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iDataLen:I
    invoke-static {v10}, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->access$500(Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;)I

    move-result v13

    goto/16 :goto_2

    .line 616
    .end local v6           #cfgPBField:Lcom/futuredial/fbus/FBusConfig$CfgPBField;
    .end local v10           #generlaFieldInfo:Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;
    :catch_0
    move-exception v7

    .line 618
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    const-string v24, "FBusPhoneBook::ParseOneContact"

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    const/16 v19, -0x2

    .line 620
    goto/16 :goto_1

    .line 623
    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v23       #strFieldContent:Ljava/lang/String;
    :cond_a
    const-string v24, "datetime6byte"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_7

    .line 625
    aget-byte v24, p1, v12

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    add-int/lit8 v25, v12, 0x1

    aget-byte v25, p1, v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    move/from16 v0, v25

    rem-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    add-int v20, v24, v25

    .line 627
    .local v20, iYear:I
    add-int/lit8 v24, v12, 0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    .line 628
    .local v18, iMonth:I
    add-int/lit8 v24, v12, 0x3

    aget-byte v24, p1, v24

    move/from16 v0, v24

    add-int/lit16 v0, v0, 0x100

    move/from16 v24, v0

    move/from16 v0, v24

    rem-int/lit16 v14, v0, 0x100

    .line 629
    .local v14, iDay:I
    const-string v24, "%04d%02d%02dT000000"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    .line 647
    .end local v14           #iDay:I
    .end local v18           #iMonth:I
    .end local v20           #iYear:I
    :cond_b
    const/16 v24, 0xbdc

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const-string v24, "wv:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_c

    .line 649
    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 651
    :cond_c
    move-object/from16 v0, p3

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private getBytes([C)[B
    .locals 4
    .parameter "chars"

    .prologue
    .line 710
    const-string v3, "UNICODE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 711
    .local v2, cs:Ljava/nio/charset/Charset;
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 712
    .local v1, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 713
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 714
    invoke-virtual {v2, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 715
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method private getChars([B)[C
    .locals 4
    .parameter "bytes"

    .prologue
    .line 720
    const-string v3, "UNICODE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 721
    .local v2, cs:Ljava/nio/charset/Charset;
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 722
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 723
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 724
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 725
    .local v1, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 787
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, iRet:I
    iget-object v1, p0, Lcom/futuredial/fbus/FBusPhoneBook;->fbusConfig:Lcom/futuredial/fbus/FBusConfig;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/futuredial/fbus/FBusConfig;->LoadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    const-string v1, "FBusPhoneBook"

    const-string v2, "Fail in loading fbus config for parsing phone book"

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v0, 0x1

    .line 763
    :cond_0
    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, iRet:I
    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 3
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 768
    const/4 v0, 0x1

    .line 769
    .local v0, iRet:I
    new-instance v1, Lcom/futuredial/publicobj/Item;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 770
    .local v1, item:Lcom/futuredial/publicobj/Item;
    iget-object v2, p0, Lcom/futuredial/fbus/FBusPhoneBook;->fbusConfig:Lcom/futuredial/fbus/FBusConfig;

    invoke-direct {p0, p2, v2, v1}, Lcom/futuredial/fbus/FBusPhoneBook;->ParseOneContact([BLcom/futuredial/fbus/FBusConfig;Lcom/futuredial/publicobj/Item;)I

    move-result v2

    if-lez v2, :cond_0

    .line 772
    const/4 v0, 0x0

    .line 773
    invoke-virtual {p4, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 775
    :cond_0
    return v0
.end method
