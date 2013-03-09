.class public Lcom/futuredial/rim/RIMParser;
.super Ljava/lang/Object;
.source "RIMParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "RIMParser"

.field private static final Long_Invalid_Time:J = 0xffffffffL

.field private static moduleID:I


# instance fields
.field private newStrArray:[Ljava/lang/String;

.field private oldStrArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/futuredial/rim/RIMParser;->moduleID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x1f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u20ac"

    aput-object v4, v3, v5

    const-string v4, "\u0081"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "\u201a"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "\u0192"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u201a\u201a"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "\u2026"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "\u2020"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "\u2021"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "\u02c6"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "\u2030"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "\u0160"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "\u2039"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "\u0152"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "\u008d"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "\u017d"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "\u008f"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "\u0090"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "\'"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "\'"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "\""

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "\""

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "\u00b7"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "\u2013"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "\u2014"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "\u02dc"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "\u2122"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "\u0161"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "\u203a"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "\u0153"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "\u009d"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "\u017e"

    aput-object v5, v3, v4

    const-string v4, "\u0178"

    aput-object v4, v3, v7

    iput-object v3, p0, Lcom/futuredial/rim/RIMParser;->newStrArray:[Ljava/lang/String;

    .line 37
    new-array v3, v8, [Ljava/lang/String;

    iput-object v3, p0, Lcom/futuredial/rim/RIMParser;->oldStrArray:[Ljava/lang/String;

    .line 41
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [B

    .line 42
    .local v2, oldChar:[B
    const/4 v1, 0x0

    .local v1, i:B
    :goto_0
    if-gt v1, v7, :cond_0

    .line 43
    const/4 v3, 0x0

    add-int/lit16 v4, v1, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 44
    iget-object v3, p0, Lcom/futuredial/rim/RIMParser;->oldStrArray:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO8859-1"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_0

    .line 47
    .end local v1           #i:B
    .end local v2           #oldChar:[B
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 51
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    return-void
.end method

.method private ParseBookMark([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 11
    .parameter "recvBuffer"
    .parameter "iRecvBufLen"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1044
    const/4 v3, 0x0

    .line 1045
    .local v3, iRet:I
    new-instance v6, Lcom/futuredial/publicobj/Item;

    invoke-direct {v6}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1049
    .local v6, item:Lcom/futuredial/publicobj/Item;
    const/16 v2, 0xe

    .line 1051
    .local v2, iPos:I
    const/16 v9, 0x10

    if-le v9, p2, :cond_0

    const/16 v3, 0x2712

    .line 1102
    .end local v3           #iRet:I
    :goto_0
    return v3

    .line 1054
    .restart local v3       #iRet:I
    :cond_0
    const/16 v9, 0xf

    :try_start_0
    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    aget-byte v10, p1, v2

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 1055
    .local v1, iFieldLen:I
    add-int/lit8 v2, v2, 0x2

    .line 1056
    add-int/lit8 v9, v1, 0x10

    if-lt v9, p2, :cond_1

    .line 1058
    const/16 v3, 0x2712

    goto :goto_0

    .line 1061
    :cond_1
    sget v9, Lcom/futuredial/rim/RIMParser;->moduleID:I

    const/16 v10, 0x26

    if-ne v9, v10, :cond_2

    const/4 v9, 0x7

    :goto_1
    add-int/lit8 v2, v9, 0x10

    .line 1062
    if-lt v2, p2, :cond_3

    const/16 v3, 0x2712

    goto :goto_0

    .line 1061
    :cond_2
    const/16 v9, 0x8

    goto :goto_1

    .line 1066
    :cond_3
    add-int/lit8 v9, v2, -0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    aget-byte v9, p1, v2

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-ge v2, p2, :cond_5

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    aget-byte v9, p1, v2

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x2

    if-ge v2, p2, :cond_9

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, p1, v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    aget-byte v9, p1, v2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1070
    :cond_6
    add-int/lit8 v9, v2, 0x2

    if-le v9, p2, :cond_7

    const/16 v3, 0x2712

    goto :goto_0

    .line 1071
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 1072
    aget-byte v9, p1, v2

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v4, v9, v10

    .line 1073
    .local v4, iTitleLen:I
    add-int/lit8 v2, v2, 0x2

    .line 1074
    add-int v9, v2, v4

    if-le v9, p2, :cond_8

    const/16 v3, 0x2712

    goto :goto_0

    .line 1075
    :cond_8
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, p1, v2, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1077
    .local v7, strTitle:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v6, v9, v7}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 1080
    .end local v4           #iTitleLen:I
    .end local v7           #strTitle:Ljava/lang/String;
    :cond_9
    add-int/lit8 v2, v1, 0x13

    .line 1081
    if-lt v2, p2, :cond_a

    const/16 v3, 0x2712

    goto/16 :goto_0

    .line 1082
    :cond_a
    aget-byte v9, p1, v2

    const/16 v10, 0x12

    if-ne v9, v10, :cond_d

    .line 1084
    add-int/lit8 v9, v2, 0x2

    if-le v9, p2, :cond_b

    const/16 v3, 0x2712

    goto/16 :goto_0

    .line 1085
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 1086
    aget-byte v9, p1, v2

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 1087
    .local v5, iUrlLen:I
    add-int/lit8 v2, v2, 0x2

    .line 1088
    add-int v9, v2, v5

    if-le v9, p2, :cond_c

    const/16 v3, 0x2712

    goto/16 :goto_0

    .line 1089
    :cond_c
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, p1, v2, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1091
    .local v8, strUrl:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v6, v9, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v5           #iUrlLen:I
    .end local v8           #strUrl:Ljava/lang/String;
    :cond_d
    invoke-virtual {p3, v6}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto/16 :goto_0

    .line 1094
    .end local v1           #iFieldLen:I
    :catch_0
    move-exception v0

    .line 1096
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1097
    const/16 v3, 0x2719

    goto/16 :goto_0
.end method

.method private ParseCalendar([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 33
    .parameter "recvBuffer"
    .parameter "iRecvBufLen"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 369
    const/16 v16, 0x0

    .line 371
    .local v16, iRet:I
    const/16 v17, 0x0

    .line 373
    .local v17, isUniCode:Z
    new-instance v18, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v18 .. v18}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 374
    .local v18, item:Lcom/futuredial/publicobj/Item;
    const/16 v14, 0xe

    .line 376
    .local v14, iPos:I
    :goto_0
    add-int/lit8 v27, v14, 0x2

    move/from16 v0, v27

    move/from16 v1, p2

    if-ge v0, v1, :cond_c

    .line 378
    const/16 v17, 0x0

    .line 381
    add-int/lit8 v27, v14, 0x1

    aget-byte v27, p1, v27

    shl-int/lit8 v27, v27, 0x8

    const v28, 0xff00

    and-int v27, v27, v28

    aget-byte v28, p1, v14

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    or-int v12, v27, v28

    .line 382
    .local v12, iFieldLen:I
    add-int/lit8 v14, v14, 0x2

    .line 383
    add-int v27, v14, v12

    move/from16 v0, v27

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 385
    const/16 v27, 0x2712

    .line 566
    .end local v12           #iFieldLen:I
    :goto_1
    return v27

    .line 388
    .restart local v12       #iFieldLen:I
    :cond_0
    add-int/lit8 v15, v14, 0x1

    .end local v14           #iPos:I
    .local v15, iPos:I
    aget-byte v27, p1, v14

    move/from16 v0, v27

    and-int/lit16 v13, v0, 0xff

    .line 389
    .local v13, iFieldType:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v13, v0, :cond_1

    .line 391
    xor-int/lit16 v13, v13, 0x80

    .line 392
    const/16 v17, 0x1

    .line 395
    :cond_1
    const/4 v11, 0x0

    .line 397
    .local v11, iCurFieldID:I
    sparse-switch v13, :sswitch_data_0

    .line 560
    :cond_2
    :goto_2
    :sswitch_0
    add-int v14, v15, v12

    .line 561
    .end local v15           #iPos:I
    .restart local v14       #iPos:I
    goto :goto_0

    .line 403
    .end local v14           #iPos:I
    .restart local v15       #iPos:I
    :sswitch_1
    const-string v23, ""

    .line 406
    .local v23, strFieldContent:Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 408
    :try_start_0
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 409
    .local v26, unicodeType:I
    add-int/lit8 v6, v15, 0x1

    .line 410
    .local v6, dataBegin:I
    add-int/lit8 v7, v12, -0x1

    .line 412
    .local v7, dataLen:I
    if-nez v26, :cond_4

    .line 414
    new-instance v24, Ljava/lang/String;

    const-string v27, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v6, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v23           #strFieldContent:Ljava/lang/String;
    .local v24, strFieldContent:Ljava/lang/String;
    move-object/from16 v23, v24

    .line 441
    .end local v6           #dataBegin:I
    .end local v7           #dataLen:I
    .end local v24           #strFieldContent:Ljava/lang/String;
    .end local v26           #unicodeType:I
    .restart local v23       #strFieldContent:Ljava/lang/String;
    :goto_3
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v13, v0, :cond_7

    .line 443
    const/16 v11, 0xb

    .line 444
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0xff

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    const/16 v27, 0x0

    const/16 v28, 0xff

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 457
    :cond_3
    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_2

    .line 415
    .restart local v6       #dataBegin:I
    .restart local v7       #dataLen:I
    .restart local v26       #unicodeType:I
    :cond_4
    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 423
    :try_start_1
    new-instance v24, Ljava/lang/String;

    const-string v27, "UNICODE"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v6, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v23           #strFieldContent:Ljava/lang/String;
    .restart local v24       #strFieldContent:Ljava/lang/String;
    move-object/from16 v23, v24

    .end local v24           #strFieldContent:Ljava/lang/String;
    .restart local v23       #strFieldContent:Ljava/lang/String;
    goto :goto_3

    .line 426
    :cond_5
    new-instance v24, Ljava/lang/String;

    const-string v27, "UNICODE"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v6, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v23           #strFieldContent:Ljava/lang/String;
    .restart local v24       #strFieldContent:Ljava/lang/String;
    move-object/from16 v23, v24

    .end local v24           #strFieldContent:Ljava/lang/String;
    .restart local v23       #strFieldContent:Ljava/lang/String;
    goto :goto_3

    .line 430
    .end local v6           #dataBegin:I
    .end local v7           #dataLen:I
    .end local v26           #unicodeType:I
    :cond_6
    new-instance v24, Ljava/lang/String;

    add-int/lit8 v27, v12, -0x1

    const-string v28, "ISO8859-1"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v15, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    .end local v23           #strFieldContent:Ljava/lang/String;
    .restart local v24       #strFieldContent:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/futuredial/rim/RIMParser;->ReplaceEAsciiChar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v23

    .end local v24           #strFieldContent:Ljava/lang/String;
    .restart local v23       #strFieldContent:Ljava/lang/String;
    goto :goto_3

    .line 435
    :catch_0
    move-exception v10

    .line 437
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    :goto_5
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 438
    const/16 v27, 0x2719

    move v14, v15

    .end local v15           #iPos:I
    .restart local v14       #iPos:I
    goto/16 :goto_1

    .line 446
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .end local v14           #iPos:I
    .restart local v15       #iPos:I
    :cond_7
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v13, v0, :cond_8

    .line 448
    const/16 v11, 0xd

    .line 449
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0xff

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    const/16 v27, 0x0

    const/16 v28, 0xff

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    .line 451
    :cond_8
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v13, v0, :cond_3

    .line 453
    const/16 v11, 0xc

    .line 454
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x1f4

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    const/16 v27, 0x0

    const/16 v28, 0x1f4

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4

    .line 464
    .end local v23           #strFieldContent:Ljava/lang/String;
    :sswitch_2
    add-int/lit8 v27, v15, 0x3

    aget-byte v27, p1, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x18

    shl-long v27, v27, v29

    const-wide v29, 0xff000000L

    and-long v27, v27, v29

    add-int/lit8 v29, v15, 0x2

    aget-byte v29, p1, v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    const/16 v31, 0x10

    shl-long v29, v29, v31

    const-wide/32 v31, 0xff0000

    and-long v29, v29, v31

    or-long v27, v27, v29

    add-int/lit8 v29, v15, 0x1

    aget-byte v29, p1, v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    const/16 v31, 0x8

    shl-long v29, v29, v31

    const-wide/32 v31, 0xff00

    and-long v29, v29, v31

    or-long v27, v27, v29

    aget-byte v29, p1, v15

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    const-wide/16 v31, 0xff

    and-long v29, v29, v31

    or-long v19, v27, v29

    .line 469
    .local v19, lRemind:J
    const-wide v27, 0xffffffffL

    cmp-long v27, v19, v27

    if-nez v27, :cond_9

    const/16 v27, 0x5

    move/from16 v0, v27

    if-eq v13, v0, :cond_2

    .line 473
    :cond_9
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 482
    .local v9, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 483
    .local v8, date:Ljava/util/Date;
    const-wide v27, -0x20253b59800L

    const-wide/32 v29, 0xea60

    mul-long v29, v29, v19

    add-long v27, v27, v29

    const-wide/32 v29, -0x1b77400

    sub-long v21, v27, v29

    .line 484
    .local v21, lTime:J
    move-wide/from16 v0, v21

    invoke-virtual {v8, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 485
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 486
    .local v25, strTime:Ljava/lang/String;
    const-string v27, "-"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    const-string v28, ":"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    const-string v28, " "

    const-string v29, "T"

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 488
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v13, v0, :cond_a

    .line 490
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 491
    .local v4, alarmField:Lcom/futuredial/publicobj/Field;
    const/16 v27, 0xc9

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 492
    new-instance v5, Lcom/futuredial/publicobj/Field;

    invoke-direct {v5}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 493
    .local v5, alarmTimeField:Lcom/futuredial/publicobj/Field;
    const/16 v27, 0x69

    move/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 494
    invoke-virtual {v4, v5}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 495
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_2

    .line 497
    .end local v4           #alarmField:Lcom/futuredial/publicobj/Field;
    .end local v5           #alarmTimeField:Lcom/futuredial/publicobj/Field;
    :cond_a
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ne v13, v0, :cond_b

    .line 499
    const/16 v27, 0x65

    move-object/from16 v0, v18

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 501
    :cond_b
    const/16 v27, 0x7

    move/from16 v0, v27

    if-ne v13, v0, :cond_2

    .line 503
    const/16 v27, 0x66

    move-object/from16 v0, v18

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 513
    .end local v8           #date:Ljava/util/Date;
    .end local v9           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v19           #lRemind:J
    .end local v21           #lTime:J
    .end local v25           #strTime:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v12, v2}, Lcom/futuredial/rim/RIMParser;->ParseRecurRule([BIILcom/futuredial/publicobj/Item;)I

    move-result v16

    if-eqz v16, :cond_2

    move v14, v15

    .end local v15           #iPos:I
    .restart local v14       #iPos:I
    move/from16 v27, v16

    .line 515
    goto/16 :goto_1

    .line 563
    .end local v11           #iCurFieldID:I
    .end local v12           #iFieldLen:I
    .end local v13           #iFieldType:I
    :cond_c
    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 564
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    move/from16 v27, v16

    .line 566
    goto/16 :goto_1

    .line 435
    .end local v14           #iPos:I
    .restart local v11       #iCurFieldID:I
    .restart local v12       #iFieldLen:I
    .restart local v13       #iFieldType:I
    .restart local v15       #iPos:I
    .restart local v24       #strFieldContent:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object/from16 v23, v24

    .end local v24           #strFieldContent:Ljava/lang/String;
    .restart local v23       #strFieldContent:Ljava/lang/String;
    goto/16 :goto_5

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_3
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x12 -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x28 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private ParsePhoneBook([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 36
    .parameter "recvBuffer"
    .parameter "iRecvBufLen"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 59
    const/16 v24, 0x0

    .line 61
    .local v24, iRet:I
    const/4 v10, 0x0

    .line 62
    .local v10, bHasName:Z
    const/4 v11, 0x0

    .line 63
    .local v11, bMail1:Z
    const/4 v12, 0x0

    .line 64
    .local v12, bMail2:Z
    const/4 v13, 0x0

    .line 65
    .local v13, bMail3:Z
    const/16 v25, 0x1

    .line 66
    .local v25, isSupport:Z
    const/16 v26, 0x0

    .line 68
    .local v26, isUniCode:Z
    new-instance v5, Lcom/futuredial/publicobj/Field;

    invoke-direct {v5}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 69
    .local v5, addHomeField:Lcom/futuredial/publicobj/Field;
    const/16 v32, 0x13ec

    const-string v33, ""

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 70
    const/4 v14, 0x0

    .line 72
    .local v14, bValidHomeAdd:Z
    new-instance v7, Lcom/futuredial/publicobj/Field;

    invoke-direct {v7}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 73
    .local v7, addWorkField:Lcom/futuredial/publicobj/Field;
    const/16 v32, 0x13ed

    const-string v33, ""

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 74
    const/4 v15, 0x0

    .line 76
    .local v15, bValidWorkAdd:Z
    const/4 v8, 0x0

    .line 77
    .local v8, bGroup:Z
    const/4 v9, 0x0

    .line 79
    .local v9, bHasGroupMember:Z
    new-instance v27, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v27 .. v27}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 80
    .local v27, item:Lcom/futuredial/publicobj/Item;
    const/16 v22, 0xe

    .line 83
    .local v22, iPos:I
    :goto_0
    add-int/lit8 v32, v22, 0x2

    move/from16 v0, v32

    move/from16 v1, p2

    if-ge v0, v1, :cond_e

    .line 85
    const/16 v25, 0x1

    .line 86
    const/16 v26, 0x0

    .line 88
    add-int/lit8 v32, v22, 0x1

    aget-byte v32, p1, v32

    shl-int/lit8 v32, v32, 0x8

    const v33, 0xff00

    and-int v32, v32, v33

    aget-byte v33, p1, v22

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    or-int v20, v32, v33

    .line 89
    .local v20, iFieldLen:I
    add-int/lit8 v22, v22, 0x2

    .line 90
    add-int v32, v22, v20

    move/from16 v0, v32

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 92
    const/16 v24, 0x2712

    .line 364
    .end local v20           #iFieldLen:I
    .end local v24           #iRet:I
    :goto_1
    return v24

    .line 95
    .restart local v20       #iFieldLen:I
    .restart local v24       #iRet:I
    :cond_0
    add-int/lit8 v23, v22, 0x1

    .end local v22           #iPos:I
    .local v23, iPos:I
    aget-byte v32, p1, v22

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 96
    .local v21, iFieldType:I
    const/16 v32, 0x80

    move/from16 v0, v21

    move/from16 v1, v32

    if-lt v0, v1, :cond_1

    .line 98
    move/from16 v0, v21

    xor-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    .line 99
    const/16 v26, 0x1

    .line 102
    :cond_1
    const/16 v19, 0x0

    .line 103
    .local v19, iCurFieldID:I
    packed-switch v21, :pswitch_data_0

    .line 269
    :pswitch_0
    const/16 v25, 0x0

    .line 273
    :goto_2
    if-eqz v25, :cond_4

    .line 275
    const-string v29, ""

    .line 279
    .local v29, strFieldContent:Ljava/lang/String;
    if-eqz v26, :cond_b

    .line 281
    :try_start_0
    aget-byte v32, p1, v23

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 282
    .local v31, unicodeType:I
    add-int/lit8 v16, v23, 0x1

    .line 283
    .local v16, dataBegin:I
    add-int/lit8 v17, v20, -0x1

    .line 285
    .local v17, dataLen:I
    if-nez v31, :cond_9

    .line 287
    new-instance v30, Ljava/lang/String;

    const-string v32, "UTF-8"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v29           #strFieldContent:Ljava/lang/String;
    .local v30, strFieldContent:Ljava/lang/String;
    move-object/from16 v29, v30

    .line 314
    .end local v16           #dataBegin:I
    .end local v17           #dataLen:I
    .end local v30           #strFieldContent:Ljava/lang/String;
    .end local v31           #unicodeType:I
    .restart local v29       #strFieldContent:Ljava/lang/String;
    :goto_3
    const/16 v32, 0x52

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    const/16 v32, 0x53

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 317
    :cond_2
    const-string v32, "/"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 318
    .local v28, strDateArray:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3

    .line 320
    const-string v32, "%04d%02d%02dT000000"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x2

    aget-object v35, v28, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const/16 v35, 0x1

    aget-object v35, v28, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    const/16 v35, 0x0

    aget-object v35, v28, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 324
    .end local v28           #strDateArray:[Ljava/lang/String;
    :cond_3
    const/16 v32, 0x7da

    move/from16 v0, v32

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    const/16 v32, 0x7e0

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 327
    const/4 v15, 0x1

    .line 328
    new-instance v6, Lcom/futuredial/publicobj/Field;

    invoke-direct {v6}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 329
    .local v6, addProperty:Lcom/futuredial/publicobj/Field;
    move/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 330
    invoke-virtual {v7, v6}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 345
    .end local v6           #addProperty:Lcom/futuredial/publicobj/Field;
    .end local v29           #strFieldContent:Ljava/lang/String;
    :cond_4
    :goto_4
    add-int v22, v23, v20

    .line 346
    .end local v23           #iPos:I
    .restart local v22       #iPos:I
    goto/16 :goto_0

    .line 106
    .end local v22           #iPos:I
    .restart local v23       #iPos:I
    :pswitch_1
    if-eqz v10, :cond_5

    .line 108
    const/16 v19, 0x2

    .line 114
    :goto_5
    const/4 v10, 0x1

    .line 115
    goto/16 :goto_2

    .line 112
    :cond_5
    const/16 v19, 0x1

    goto :goto_5

    .line 117
    :pswitch_2
    const/16 v19, 0xfa5

    .line 118
    goto/16 :goto_2

    .line 120
    :pswitch_3
    const/16 v19, 0xfa1

    .line 121
    goto/16 :goto_2

    .line 123
    :pswitch_4
    const/16 v19, 0xfc1

    .line 124
    goto/16 :goto_2

    .line 126
    :pswitch_5
    if-nez v11, :cond_6

    .line 128
    const/16 v19, 0x3e8

    .line 129
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 131
    :cond_6
    if-nez v12, :cond_7

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_7

    .line 133
    const/16 v19, 0x3e9

    .line 134
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 136
    :cond_7
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v12, v0, :cond_8

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_8

    if-nez v13, :cond_8

    .line 138
    const/16 v19, 0x3ea

    .line 139
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 143
    :cond_8
    const/16 v25, 0x0

    .line 145
    goto/16 :goto_2

    .line 147
    :pswitch_6
    const/16 v19, 0x64

    .line 148
    goto/16 :goto_2

    .line 150
    :pswitch_7
    const/16 v19, 0x65

    .line 151
    goto/16 :goto_2

    .line 153
    :pswitch_8
    const/16 v19, 0x66

    .line 154
    goto/16 :goto_2

    .line 156
    :pswitch_9
    const/16 v19, 0x67

    .line 157
    goto/16 :goto_2

    .line 159
    :pswitch_a
    const/16 v19, 0x68

    .line 160
    goto/16 :goto_2

    .line 162
    :pswitch_b
    const/16 v19, 0x69

    .line 163
    goto/16 :goto_2

    .line 165
    :pswitch_c
    const/16 v19, 0x6a

    .line 166
    goto/16 :goto_2

    .line 168
    :pswitch_d
    const/16 v19, 0x6e

    .line 169
    goto/16 :goto_2

    .line 171
    :pswitch_e
    const/16 v19, 0x6f

    .line 172
    goto/16 :goto_2

    .line 174
    :pswitch_f
    const/16 v19, 0x6c

    .line 175
    goto/16 :goto_2

    .line 177
    :pswitch_10
    const/16 v19, 0x7da

    .line 178
    goto/16 :goto_2

    .line 180
    :pswitch_11
    const/16 v19, 0x7db

    .line 181
    goto/16 :goto_2

    .line 183
    :pswitch_12
    const/16 v19, 0x7dc

    .line 184
    goto/16 :goto_2

    .line 186
    :pswitch_13
    const/16 v19, 0x7dd

    .line 187
    goto/16 :goto_2

    .line 189
    :pswitch_14
    const/16 v19, 0x7de

    .line 190
    goto/16 :goto_2

    .line 192
    :pswitch_15
    const/16 v19, 0x7e0

    .line 193
    goto/16 :goto_2

    .line 195
    :pswitch_16
    const/16 v19, 0x7d2

    .line 196
    goto/16 :goto_2

    .line 198
    :pswitch_17
    const/16 v19, 0x7d3

    .line 199
    goto/16 :goto_2

    .line 201
    :pswitch_18
    const/16 v19, 0x7d4

    .line 202
    goto/16 :goto_2

    .line 204
    :pswitch_19
    const/16 v19, 0x7d5

    .line 205
    goto/16 :goto_2

    .line 207
    :pswitch_1a
    const/16 v19, 0x7d6

    .line 208
    goto/16 :goto_2

    .line 210
    :pswitch_1b
    const/16 v19, 0x7d8

    .line 211
    goto/16 :goto_2

    .line 213
    :pswitch_1c
    const/16 v19, 0xbba

    .line 214
    goto/16 :goto_2

    .line 216
    :pswitch_1d
    const/16 v19, 0x5dc

    .line 217
    goto/16 :goto_2

    .line 219
    :pswitch_1e
    const/16 v19, 0xfaf

    .line 220
    goto/16 :goto_2

    .line 222
    :pswitch_1f
    const/16 v19, 0xfa3

    .line 223
    goto/16 :goto_2

    .line 225
    :pswitch_20
    const/16 v19, 0xfb3

    .line 226
    goto/16 :goto_2

    .line 228
    :pswitch_21
    const/16 v19, 0xfb7

    .line 229
    goto/16 :goto_2

    .line 231
    :pswitch_22
    const/16 v19, 0xfbd

    .line 232
    goto/16 :goto_2

    .line 234
    :pswitch_23
    const/16 v19, 0xfb8

    .line 235
    goto/16 :goto_2

    .line 237
    :pswitch_24
    const/16 v19, 0xfbc

    .line 238
    goto/16 :goto_2

    .line 240
    :pswitch_25
    const/16 v19, 0xfb9

    .line 241
    goto/16 :goto_2

    .line 243
    :pswitch_26
    const/16 v19, 0xbdc

    .line 244
    goto/16 :goto_2

    .line 246
    :pswitch_27
    const/16 v19, 0xbca

    .line 247
    goto/16 :goto_2

    .line 249
    :pswitch_28
    const/16 v19, 0xfcd

    .line 250
    goto/16 :goto_2

    .line 252
    :pswitch_29
    const/16 v19, 0xfce

    .line 253
    goto/16 :goto_2

    .line 255
    :pswitch_2a
    const/16 v19, 0xfcf

    .line 256
    goto/16 :goto_2

    .line 258
    :pswitch_2b
    const/16 v19, 0xfd0

    .line 259
    goto/16 :goto_2

    .line 261
    :pswitch_2c
    const/4 v8, 0x1

    .line 262
    const/16 v25, 0x0

    .line 263
    goto/16 :goto_2

    .line 265
    :pswitch_2d
    const/4 v9, 0x1

    .line 266
    const/16 v25, 0x0

    .line 267
    goto/16 :goto_2

    .line 288
    .restart local v16       #dataBegin:I
    .restart local v17       #dataLen:I
    .restart local v29       #strFieldContent:Ljava/lang/String;
    .restart local v31       #unicodeType:I
    :cond_9
    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 296
    :try_start_1
    new-instance v30, Ljava/lang/String;

    const-string v32, "UNICODE"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v29           #strFieldContent:Ljava/lang/String;
    .restart local v30       #strFieldContent:Ljava/lang/String;
    move-object/from16 v29, v30

    .end local v30           #strFieldContent:Ljava/lang/String;
    .restart local v29       #strFieldContent:Ljava/lang/String;
    goto/16 :goto_3

    .line 299
    :cond_a
    new-instance v30, Ljava/lang/String;

    const-string v32, "UNICODE"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v29           #strFieldContent:Ljava/lang/String;
    .restart local v30       #strFieldContent:Ljava/lang/String;
    move-object/from16 v29, v30

    .end local v30           #strFieldContent:Ljava/lang/String;
    .restart local v29       #strFieldContent:Ljava/lang/String;
    goto/16 :goto_3

    .line 303
    .end local v16           #dataBegin:I
    .end local v17           #dataLen:I
    .end local v31           #unicodeType:I
    :cond_b
    new-instance v30, Ljava/lang/String;

    add-int/lit8 v32, v20, -0x1

    const-string v33, "ISO8859-1"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    .end local v29           #strFieldContent:Ljava/lang/String;
    .restart local v30       #strFieldContent:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/futuredial/rim/RIMParser;->ReplaceEAsciiChar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v29

    .end local v30           #strFieldContent:Ljava/lang/String;
    .restart local v29       #strFieldContent:Ljava/lang/String;
    goto/16 :goto_3

    .line 308
    :catch_0
    move-exception v18

    .line 310
    .local v18, e:Ljava/io/UnsupportedEncodingException;
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 311
    const/16 v24, 0x2719

    move/from16 v22, v23

    .end local v23           #iPos:I
    .restart local v22       #iPos:I
    goto/16 :goto_1

    .line 332
    .end local v18           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #iPos:I
    .restart local v23       #iPos:I
    :cond_c
    const/16 v32, 0x7d2

    move/from16 v0, v32

    move/from16 v1, v19

    if-gt v0, v1, :cond_d

    const/16 v32, 0x7d8

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 335
    const/4 v14, 0x1

    .line 336
    new-instance v6, Lcom/futuredial/publicobj/Field;

    invoke-direct {v6}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 337
    .restart local v6       #addProperty:Lcom/futuredial/publicobj/Field;
    move/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 338
    invoke-virtual {v5, v6}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_4

    .line 342
    .end local v6           #addProperty:Lcom/futuredial/publicobj/Field;
    :cond_d
    move-object/from16 v0, v27

    move/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_4

    .line 348
    .end local v19           #iCurFieldID:I
    .end local v20           #iFieldLen:I
    .end local v21           #iFieldType:I
    .end local v23           #iPos:I
    .end local v29           #strFieldContent:Ljava/lang/String;
    .restart local v22       #iPos:I
    :cond_e
    if-eqz v8, :cond_f

    if-eqz v9, :cond_f

    .line 350
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 353
    :cond_f
    if-eqz v14, :cond_10

    .line 355
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 357
    :cond_10
    if-eqz v15, :cond_11

    .line 359
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 362
    :cond_11
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto/16 :goto_1

    .line 308
    .end local v22           #iPos:I
    .restart local v19       #iCurFieldID:I
    .restart local v20       #iFieldLen:I
    .restart local v21       #iFieldType:I
    .restart local v23       #iPos:I
    .restart local v30       #strFieldContent:Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v29, v30

    .end local v30           #strFieldContent:Ljava/lang/String;
    .restart local v29       #strFieldContent:Ljava/lang/String;
    goto :goto_6

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1e
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_1d
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_1c
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch
.end method

.method private ParseRecurRule([BIILcom/futuredial/publicobj/Item;)I
    .locals 31
    .parameter "recvBuffer"
    .parameter "iStart"
    .parameter "idataLen"
    .parameter "item"

    .prologue
    .line 571
    const/4 v12, 0x0

    .line 573
    .local v12, iRet:I
    move/from16 v9, p2

    .line 575
    .local v9, iPos:I
    new-instance v22, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v22 .. v22}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 576
    .local v22, repeatField:Lcom/futuredial/publicobj/Field;
    const/4 v5, 0x0

    .line 577
    .local v5, dayofmonthField:Lcom/futuredial/publicobj/Field;
    const/16 v20, 0x0

    .line 579
    .local v20, monthofyearField:Lcom/futuredial/publicobj/Field;
    aget-byte v25, p1, v9

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 580
    .local v21, recurType:I
    add-int/lit8 v9, v9, 0x2

    .line 582
    add-int/lit8 v25, v9, 0x1

    aget-byte v25, p1, v25

    shl-int/lit8 v25, v25, 0x8

    const v26, 0xff00

    and-int v25, v25, v26

    aget-byte v26, p1, v9

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    or-int v7, v25, v26

    .line 583
    .local v7, iInterval:I
    new-instance v15, Lcom/futuredial/publicobj/Field;

    invoke-direct {v15}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 584
    .local v15, intervalField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd5

    move/from16 v0, v25

    invoke-virtual {v15, v0, v7}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 585
    add-int/lit8 v9, v9, 0x2

    .line 588
    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x18

    shl-long v25, v25, v27

    const-wide v27, 0xff000000L

    and-long v25, v25, v27

    add-int/lit8 v27, v9, 0x2

    aget-byte v27, p1, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x10

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff0000

    and-long v27, v27, v29

    or-long v25, v25, v27

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p1, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x8

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff00

    and-long v27, v27, v29

    or-long v25, v25, v27

    aget-byte v27, p1, v9

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    or-long v16, v25, v27

    .line 592
    .local v16, lMinData:J
    add-int/lit8 v9, v9, 0x4

    .line 593
    const-wide v25, 0xffffffffL

    cmp-long v25, v16, v25

    if-eqz v25, :cond_0

    .line 595
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 604
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 605
    .local v3, date:Ljava/util/Date;
    const-wide v25, -0x20253b59800L

    const-wide/32 v27, 0xea60

    mul-long v27, v27, v16

    add-long v25, v25, v27

    const-wide/32 v27, -0x1b77400

    sub-long v18, v25, v27

    .line 606
    .local v18, lTime:J
    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 607
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 608
    .local v23, strTime:Ljava/lang/String;
    const-string v25, "-"

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ":"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    const-string v27, "T"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 609
    const/16 v25, 0x67

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 611
    new-instance v5, Lcom/futuredial/publicobj/Field;

    .end local v5           #dayofmonthField:Lcom/futuredial/publicobj/Field;
    invoke-direct {v5}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 612
    .restart local v5       #dayofmonthField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd1

    const/16 v26, 0x6

    const/16 v27, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 614
    new-instance v20, Lcom/futuredial/publicobj/Field;

    .end local v20           #monthofyearField:Lcom/futuredial/publicobj/Field;
    invoke-direct/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 615
    .restart local v20       #monthofyearField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd2

    const/16 v26, 0x4

    const/16 v27, 0x6

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 619
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #lTime:J
    .end local v23           #strTime:Ljava/lang/String;
    :cond_0
    add-int/lit8 v25, v9, 0x3

    aget-byte v25, p1, v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    const/16 v27, 0x18

    shl-long v25, v25, v27

    const-wide v27, 0xff000000L

    and-long v25, v25, v27

    add-int/lit8 v27, v9, 0x2

    aget-byte v27, p1, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x10

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff0000

    and-long v27, v27, v29

    or-long v25, v25, v27

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p1, v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x8

    shl-long v27, v27, v29

    const-wide/32 v29, 0xff00

    and-long v27, v27, v29

    or-long v25, v25, v27

    aget-byte v27, p1, v9

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const-wide/16 v29, 0xff

    and-long v27, v27, v29

    or-long v16, v25, v27

    .line 623
    add-int/lit8 v9, v9, 0x4

    .line 624
    const-wide v25, 0xffffffffL

    cmp-long v25, v16, v25

    if-eqz v25, :cond_1

    .line 626
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v4       #dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 636
    .restart local v3       #date:Ljava/util/Date;
    const-wide v25, -0x20253b59800L

    const-wide/32 v27, 0xea60

    mul-long v27, v27, v16

    add-long v25, v25, v27

    const-wide/32 v27, -0x1b77400

    sub-long v18, v25, v27

    .line 637
    .restart local v18       #lTime:J
    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 638
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 639
    .restart local v23       #strTime:Ljava/lang/String;
    const-string v25, "-"

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ":"

    const-string v27, ""

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    const-string v26, " "

    const-string v27, "T"

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 640
    const/16 v25, 0x68

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 644
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #lTime:J
    .end local v23           #strTime:Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v9, 0x1

    .end local v9           #iPos:I
    .local v10, iPos:I
    aget-byte v25, p1, v9

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    .line 645
    .local v6, iDayOfWeek:I
    add-int/lit8 v9, v10, 0x1

    .end local v10           #iPos:I
    .restart local v9       #iPos:I
    aget-byte v25, p1, v10

    move/from16 v0, v25

    and-int/lit16 v13, v0, 0xff

    .line 646
    .local v13, iWeekOfMonth:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #iPos:I
    .restart local v10       #iPos:I
    aget-byte v25, p1, v9

    move/from16 v0, v25

    and-int/lit16 v8, v0, 0xff

    .line 648
    .local v8, iMonthOfYear:I
    packed-switch v21, :pswitch_data_0

    .line 802
    :goto_0
    :pswitch_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 803
    if-eqz v5, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 804
    :cond_2
    if-eqz v20, :cond_3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 806
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 808
    return v12

    .line 651
    :pswitch_1
    const/16 v25, 0xd3

    const/16 v26, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    goto :goto_0

    .line 655
    :pswitch_2
    const/16 v25, 0xd3

    const/16 v26, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 656
    const/4 v11, 0x0

    .line 657
    .local v11, iRecurWeekMask:I
    and-int/lit8 v25, v6, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 659
    or-int/lit8 v11, v11, 0x2

    .line 661
    :cond_4
    and-int/lit8 v25, v6, 0x4

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 663
    or-int/lit8 v11, v11, 0x4

    .line 665
    :cond_5
    and-int/lit8 v25, v6, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 667
    or-int/lit8 v11, v11, 0x8

    .line 669
    :cond_6
    and-int/lit8 v25, v6, 0x10

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 671
    or-int/lit8 v11, v11, 0x10

    .line 673
    :cond_7
    and-int/lit8 v25, v6, 0x20

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 675
    or-int/lit8 v11, v11, 0x20

    .line 677
    :cond_8
    and-int/lit8 v25, v6, 0x40

    const/16 v26, 0x40

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 679
    or-int/lit8 v11, v11, 0x40

    .line 681
    :cond_9
    and-int/lit8 v25, v6, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 683
    or-int/lit8 v11, v11, 0x1

    .line 685
    :cond_a
    new-instance v24, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 686
    .local v24, weekMaskField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 687
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 692
    .end local v11           #iRecurWeekMask:I
    .end local v24           #weekMaskField:Lcom/futuredial/publicobj/Field;
    :pswitch_3
    const/16 v25, 0xd3

    const/16 v26, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 694
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 695
    .local v14, instField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd8

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 696
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 701
    .end local v14           #instField:Lcom/futuredial/publicobj/Field;
    :pswitch_4
    const/16 v25, 0xd3

    const/16 v26, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 703
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 704
    .restart local v14       #instField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd8

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 705
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 707
    const/4 v11, 0x0

    .line 708
    .restart local v11       #iRecurWeekMask:I
    if-nez v6, :cond_c

    .line 710
    const/4 v11, 0x1

    .line 737
    :cond_b
    :goto_1
    new-instance v24, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 738
    .restart local v24       #weekMaskField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 739
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 712
    .end local v24           #weekMaskField:Lcom/futuredial/publicobj/Field;
    :cond_c
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_d

    .line 714
    const/4 v11, 0x2

    goto :goto_1

    .line 716
    :cond_d
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v6, v0, :cond_e

    .line 718
    const/4 v11, 0x4

    goto :goto_1

    .line 720
    :cond_e
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_f

    .line 722
    const/16 v11, 0x8

    goto :goto_1

    .line 724
    :cond_f
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v6, v0, :cond_10

    .line 726
    const/16 v11, 0x10

    goto :goto_1

    .line 728
    :cond_10
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_11

    .line 730
    const/16 v11, 0x20

    goto :goto_1

    .line 732
    :cond_11
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v6, v0, :cond_b

    .line 734
    const/16 v11, 0x40

    goto :goto_1

    .line 745
    .end local v11           #iRecurWeekMask:I
    .end local v14           #instField:Lcom/futuredial/publicobj/Field;
    :pswitch_5
    const/16 v25, 0xd3

    const/16 v26, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 747
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 748
    .restart local v14       #instField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd8

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 749
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 756
    .end local v14           #instField:Lcom/futuredial/publicobj/Field;
    :pswitch_6
    const/16 v25, 0xd3

    const/16 v26, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 758
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 759
    .restart local v14       #instField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd8

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 760
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 762
    const/4 v11, 0x0

    .line 763
    .restart local v11       #iRecurWeekMask:I
    if-nez v6, :cond_13

    .line 765
    const/4 v11, 0x1

    .line 792
    :cond_12
    :goto_2
    new-instance v24, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 793
    .restart local v24       #weekMaskField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd4

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 794
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_0

    .line 767
    .end local v24           #weekMaskField:Lcom/futuredial/publicobj/Field;
    :cond_13
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_14

    .line 769
    const/4 v11, 0x2

    goto :goto_2

    .line 771
    :cond_14
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v6, v0, :cond_15

    .line 773
    const/4 v11, 0x4

    goto :goto_2

    .line 775
    :cond_15
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_16

    .line 777
    const/16 v11, 0x8

    goto :goto_2

    .line 779
    :cond_16
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v6, v0, :cond_17

    .line 781
    const/16 v11, 0x10

    goto :goto_2

    .line 783
    :cond_17
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v6, v0, :cond_18

    .line 785
    const/16 v11, 0x20

    goto :goto_2

    .line 787
    :cond_18
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v6, v0, :cond_12

    .line 789
    const/16 v11, 0x40

    goto :goto_2

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private ParseSMS([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 37
    .parameter "recvBuffer"
    .parameter "iRecvBufLen"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 813
    const/16 v20, 0x0

    .line 815
    .local v20, iRet:I
    new-instance v21, Lcom/futuredial/publicobj/Item;

    invoke-direct/range {v21 .. v21}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 816
    .local v21, item:Lcom/futuredial/publicobj/Item;
    new-instance v24, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 817
    .local v24, numField:Lcom/futuredial/publicobj/Field;
    const/16 v31, 0x3

    const-string v32, ""

    move-object/from16 v0, v24

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 818
    const/4 v5, 0x0

    .line 820
    .local v5, bHaveValidNum:Z
    const/16 v18, 0xe

    .line 822
    .local v18, iPos:I
    const/4 v15, 0x4

    .line 824
    .local v15, iDecoding:I
    const/4 v10, 0x0

    .line 826
    .local v10, contentBuf:[B
    :goto_0
    add-int/lit8 v31, v18, 0x2

    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    .line 829
    add-int/lit8 v31, v18, 0x1

    aget-byte v31, p1, v31

    shl-int/lit8 v31, v31, 0x8

    const v32, 0xff00

    and-int v31, v31, v32

    aget-byte v32, p1, v18

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    or-int v16, v31, v32

    .line 830
    .local v16, iFieldLen:I
    add-int/lit8 v18, v18, 0x2

    .line 831
    add-int v31, v18, v16

    move/from16 v0, v31

    move/from16 v1, p2

    if-lt v0, v1, :cond_0

    .line 833
    const/16 v20, 0x2712

    .line 1009
    .end local v16           #iFieldLen:I
    .end local v20           #iRet:I
    :goto_1
    return v20

    .line 836
    .restart local v16       #iFieldLen:I
    .restart local v20       #iRet:I
    :cond_0
    add-int/lit8 v19, v18, 0x1

    .end local v18           #iPos:I
    .local v19, iPos:I
    aget-byte v31, p1, v18

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 838
    .local v17, iFieldType:I
    const/4 v14, 0x0

    .line 840
    .local v14, iCurFieldID:I
    packed-switch v17, :pswitch_data_0

    .line 970
    :cond_1
    :goto_2
    :pswitch_0
    add-int v18, v19, v16

    .line 972
    .end local v19           #iPos:I
    .restart local v18       #iPos:I
    goto :goto_0

    .line 844
    .end local v18           #iPos:I
    .restart local v19       #iPos:I
    :pswitch_1
    add-int/lit8 v31, v19, 0x5

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v6, v0, 0xff

    .line 845
    .local v6, boxTypeByte1:I
    add-int/lit8 v31, v19, 0x6

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v7, v0, 0xff

    .line 846
    .local v7, boxTypeByte2:I
    add-int/lit8 v31, v19, 0x7

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v8, v0, 0xff

    .line 847
    .local v8, boxTypeByte3:I
    add-int/lit8 v31, v19, 0x8

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v9, v0, 0xff

    .line 849
    .local v9, boxTypeByte4:I
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_3

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v7, v0, :cond_3

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v8, v0, :cond_3

    const/16 v31, 0x7f

    move/from16 v0, v31

    if-ne v9, v0, :cond_3

    .line 854
    const/16 v31, 0x2

    const/16 v32, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 855
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 895
    :cond_2
    :goto_3
    add-int/lit8 v31, v19, 0x14

    aget-byte v31, p1, v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    const/16 v33, 0x38

    shl-long v31, v31, v33

    const-wide/high16 v33, -0x100

    and-long v31, v31, v33

    add-int/lit8 v33, v19, 0x13

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x30

    shl-long v33, v33, v35

    const-wide/high16 v35, 0xff

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0x12

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x28

    shl-long v33, v33, v35

    const-wide v35, 0xff0000000000L

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0x11

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x20

    shl-long v33, v33, v35

    const-wide v35, 0xff00000000L

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0x10

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x18

    shl-long v33, v33, v35

    const-wide v35, 0xff000000L

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0xf

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x10

    shl-long v33, v33, v35

    const-wide/32 v35, 0xff0000

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0xe

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const/16 v35, 0x8

    shl-long v33, v33, v35

    const-wide/32 v35, 0xff00

    and-long v33, v33, v35

    or-long v31, v31, v33

    add-int/lit8 v33, v19, 0xd

    aget-byte v33, p1, v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    const-wide/16 v35, 0xff

    and-long v33, v33, v35

    or-long v22, v31, v33

    .line 904
    .local v22, lMilliSecond:J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v31, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 913
    .local v12, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 915
    .local v11, date:Ljava/util/Date;
    move-wide/from16 v0, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 916
    invoke-virtual {v12, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v30

    .line 917
    .local v30, strTime:Ljava/lang/String;
    const-string v31, "-"

    const-string v32, ""

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, ":"

    const-string v33, ""

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    const-string v32, " "

    const-string v33, "T"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 919
    const/16 v31, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_2

    .line 857
    .end local v11           #date:Ljava/util/Date;
    .end local v12           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v22           #lMilliSecond:J
    .end local v30           #strTime:Ljava/lang/String;
    :cond_3
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_5

    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v7, v0, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 862
    const/16 v31, 0x2

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 863
    add-int/lit8 v31, v19, 0x1

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 865
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_3

    .line 867
    :cond_4
    const/16 v31, 0x1

    aget-byte v31, p1, v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 869
    const/16 v31, 0x1

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_3

    .line 872
    :cond_5
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_6

    const/16 v31, 0x1f

    move/from16 v0, v31

    if-ne v7, v0, :cond_6

    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    :cond_6
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_7

    const/16 v31, 0x3f

    move/from16 v0, v31

    if-ne v7, v0, :cond_7

    if-nez v8, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_9

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v7, v0, :cond_9

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v8, v0, :cond_9

    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v9, v0, :cond_9

    .line 877
    :cond_8
    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 878
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_3

    .line 880
    :cond_9
    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v6, v0, :cond_a

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v7, v0, :cond_a

    const/16 v31, 0xff

    move/from16 v0, v31

    if-ne v8, v0, :cond_a

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v9, v0, :cond_a

    .line 885
    const/16 v31, 0x2

    const/16 v32, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 886
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_3

    .line 891
    :cond_a
    const/16 v31, 0x2

    const/16 v32, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 892
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_3

    .line 924
    .end local v6           #boxTypeByte1:I
    .end local v7           #boxTypeByte2:I
    .end local v8           #boxTypeByte3:I
    .end local v9           #boxTypeByte4:I
    :pswitch_2
    if-lez v16, :cond_1

    .line 928
    :try_start_0
    new-instance v28, Ljava/lang/String;

    add-int/lit8 v31, v19, 0x4

    add-int/lit8 v32, v16, -0x5

    const-string v33, "ISO8859-1"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 929
    .local v28, strNum:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/futuredial/rim/RIMParser;->ReplaceEAsciiChar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 935
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_1

    .line 937
    const/4 v5, 0x1

    .line 938
    new-instance v25, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v25 .. v25}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 939
    .local v25, numFieldPro:Lcom/futuredial/publicobj/Field;
    const/16 v31, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 940
    invoke-virtual/range {v24 .. v25}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_2

    .line 930
    .end local v25           #numFieldPro:Lcom/futuredial/publicobj/Field;
    .end local v28           #strNum:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 932
    .local v13, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 933
    const/16 v20, 0x2719

    move/from16 v18, v19

    .end local v19           #iPos:I
    .restart local v18       #iPos:I
    goto/16 :goto_1

    .line 947
    .end local v13           #e:Ljava/io/UnsupportedEncodingException;
    .end local v18           #iPos:I
    .restart local v19       #iPos:I
    :pswitch_3
    if-lez v16, :cond_1

    .line 949
    move/from16 v0, v16

    new-array v10, v0, [B

    .line 950
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v31

    move/from16 v3, v16

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 956
    :pswitch_4
    aget-byte v15, p1, v19

    .line 958
    goto/16 :goto_2

    .line 974
    .end local v14           #iCurFieldID:I
    .end local v16           #iFieldLen:I
    .end local v17           #iFieldType:I
    .end local v19           #iPos:I
    .restart local v18       #iPos:I
    :cond_b
    if-eqz v10, :cond_c

    .line 976
    const-string v26, ""

    .line 980
    .local v26, strMsg:Ljava/lang/String;
    :try_start_1
    const-string v29, ""

    .line 981
    .local v29, strSMSContent:Ljava/lang/String;
    if-nez v15, :cond_e

    .line 983
    const/16 v31, 0x0

    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v10, v0, v1}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 1000
    :goto_4
    const/16 v31, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v31

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 1003
    .end local v26           #strMsg:Ljava/lang/String;
    .end local v29           #strSMSContent:Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_d

    .line 1005
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 1007
    :cond_d
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto/16 :goto_1

    .line 985
    .restart local v26       #strMsg:Ljava/lang/String;
    .restart local v29       #strSMSContent:Ljava/lang/String;
    :cond_e
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ne v15, v0, :cond_f

    .line 987
    :try_start_2
    new-instance v27, Ljava/lang/String;

    const/16 v31, 0x0

    array-length v0, v10

    move/from16 v32, v0

    const-string v33, "UNICODE"

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v10, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v26           #strMsg:Ljava/lang/String;
    .local v27, strMsg:Ljava/lang/String;
    move-object/from16 v26, v27

    .end local v27           #strMsg:Ljava/lang/String;
    .restart local v26       #strMsg:Ljava/lang/String;
    goto :goto_4

    .line 991
    :cond_f
    new-instance v27, Ljava/lang/String;

    const/16 v31, 0x0

    array-length v0, v10

    move/from16 v32, v0

    const-string v33, "ISO8859-1"

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v10, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 992
    .end local v26           #strMsg:Ljava/lang/String;
    .restart local v27       #strMsg:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/futuredial/rim/RIMParser;->ReplaceEAsciiChar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v26

    .end local v27           #strMsg:Ljava/lang/String;
    .restart local v26       #strMsg:Ljava/lang/String;
    goto :goto_4

    .line 995
    .end local v29           #strSMSContent:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 997
    .restart local v13       #e:Ljava/io/UnsupportedEncodingException;
    :goto_5
    invoke-virtual {v13}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 998
    const/16 v20, 0x2719

    goto/16 :goto_1

    .line 995
    .end local v13           #e:Ljava/io/UnsupportedEncodingException;
    .end local v26           #strMsg:Ljava/lang/String;
    .restart local v27       #strMsg:Ljava/lang/String;
    .restart local v29       #strSMSContent:Ljava/lang/String;
    :catch_2
    move-exception v13

    move-object/from16 v26, v27

    .end local v27           #strMsg:Ljava/lang/String;
    .restart local v26       #strMsg:Ljava/lang/String;
    goto :goto_5

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ReplaceEAsciiChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strFieldContent"

    .prologue
    .line 1179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/rim/RIMParser;->oldStrArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/futuredial/rim/RIMParser;->oldStrArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/futuredial/rim/RIMParser;->newStrArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1184
    :cond_0
    return-object p1
.end method

.method public static SetModuleID(II)V
    .locals 1
    .parameter "hbyte"
    .parameter "lbyte"

    .prologue
    .line 1131
    mul-int/lit16 v0, p0, 0xff

    add-int/2addr v0, p1

    sput v0, Lcom/futuredial/rim/RIMParser;->moduleID:I

    .line 1132
    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 1117
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 2
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1141
    const/4 v0, 0x1

    .line 1143
    .local v0, iRet:I
    if-nez p1, :cond_0

    .line 1145
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/futuredial/rim/RIMParser;->ParsePhoneBook([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    .line 1164
    :goto_0
    return v0

    .line 1147
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 1149
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/futuredial/rim/RIMParser;->ParseCalendar([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 1151
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 1153
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/futuredial/rim/RIMParser;->ParseSMS([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 1155
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p1, :cond_3

    .line 1157
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/futuredial/rim/RIMParser;->ParseBookMark([BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v0

    goto :goto_0

    .line 1161
    :cond_3
    const/16 v0, 0x4e22

    goto :goto_0
.end method
