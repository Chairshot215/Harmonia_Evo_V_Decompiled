.class public final Lcom/htc/android/dmportread/dm/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 374
    invoke-static {p0}, Lcom/htc/android/dmportread/dm/Utility;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 376
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 382
    :cond_1
    return-object v1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 361
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 364
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToInt([B)I
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x3

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, s:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 251
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    .line 252
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 255
    :goto_1
    mul-int/lit16 v1, v1, 0x100

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    goto :goto_1

    .line 257
    :cond_1
    aget-byte v2, p0, v4

    if-ltz v2, :cond_2

    .line 258
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 261
    :goto_2
    return v1

    .line 260
    :cond_2
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v4

    add-int v1, v2, v3

    goto :goto_2
.end method

.method public static countDigits(J)I
    .locals 6
    .parameter "parVal"

    .prologue
    .line 223
    move-wide v2, p0

    .line 224
    .local v2, val:J
    const/4 v0, 0x1

    .line 226
    .local v0, digits:I
    :goto_0
    const-wide/16 v4, 0xa

    :try_start_0
    rem-long v4, v2, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 227
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 232
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 119
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 120
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 122
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 126
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 131
    return-object v2

    .line 128
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 129
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;
    .locals 14
    .parameter "parDwVal"

    .prologue
    const-wide/16 v12, 0x3

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 135
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 137
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 138
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 139
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/dmportread/dm/Utility;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 141
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 143
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 144
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 146
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/dmportread/dm/Utility;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 149
    const-string v4, "%3d%1d%3d"

    new-array v5, v11, [Ljava/lang/Object;

    aget-wide v6, v1, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    aget-wide v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aget-wide v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 150
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 151
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 152
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 150
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static decodeDMString([B)[Ljava/lang/String;
    .locals 37
    .parameter "bytes"

    .prologue
    .line 629
    const/16 v32, 0x11

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 631
    .local v28, rslt:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-byte v32, p0, v32

    if-ltz v32, :cond_1

    const/16 v32, 0x0

    aget-byte v30, p0, v32

    .line 632
    .local v30, tempDigit:I
    :goto_0
    and-int/lit8 v3, v30, 0xf

    .line 633
    .local v3, IMSI_M_CLASS_1bit:I
    and-int/lit8 v3, v3, 0x1

    .line 636
    and-int/lit8 v4, v30, 0xf

    .line 637
    .local v4, IMSI_M_CLASS_3bit:I
    shr-int/lit8 v4, v4, 0x3

    .line 640
    and-int/lit8 v27, v30, 0xf

    .line 641
    .local v27, resetBit:I
    shr-int/lit8 v27, v30, 0x4

    .line 642
    const/16 v32, 0x1

    aget-byte v32, p0, v32

    if-ltz v32, :cond_2

    const/16 v32, 0x1

    aget-byte v30, p0, v32

    .line 643
    :goto_1
    move/from16 v9, v30

    .line 644
    .local v9, MCC_M_10bit:I
    and-int/lit8 v9, v9, 0x3f

    .line 645
    shl-int/lit8 v9, v9, 0x4

    .line 646
    or-int v9, v9, v27

    .line 647
    add-int/lit8 v9, v9, 0x6f

    .line 650
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v9, v0}, Lcom/htc/android/dmportread/dm/Utility;->doBCDDigit(II)I

    move-result v23

    .line 652
    .local v23, decMCC_M_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    .line 653
    shr-int/lit8 v27, v27, 0x6

    .line 654
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    if-ltz v32, :cond_3

    const/16 v32, 0x2

    aget-byte v30, p0, v32

    .line 655
    :goto_2
    and-int/lit8 v2, v30, 0x1f

    .line 656
    .local v2, IMSI_M_11_12_7bit:I
    shl-int/lit8 v2, v2, 0x2

    .line 657
    or-int v2, v2, v27

    .line 658
    add-int/lit8 v2, v2, 0xb

    .line 659
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-static {v2, v0}, Lcom/htc/android/dmportread/dm/Utility;->doBCDDigit(II)I

    move-result v21

    .line 662
    .local v21, decIMSI_M_11_12_7bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 663
    shr-int/lit8 v27, v27, 0x5

    .line 664
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    if-ltz v32, :cond_4

    const/16 v32, 0x3

    aget-byte v30, p0, v32

    .line 665
    :goto_3
    and-int/lit8 v8, v30, 0x7f

    .line 666
    .local v8, IMSI_M_S2_10bit:I
    shl-int/lit8 v8, v8, 0x3

    .line 667
    or-int v8, v8, v27

    .line 668
    add-int/lit8 v8, v8, 0x6f

    .line 669
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v8, v0}, Lcom/htc/android/dmportread/dm/Utility;->doBCDDigit(II)I

    move-result v22

    .line 673
    .local v22, decIMSI_M_S2_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    .line 674
    shr-int/lit8 v27, v27, 0x7

    .line 675
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    if-ltz v32, :cond_5

    const/16 v32, 0x4

    aget-byte v30, p0, v32

    .line 676
    :goto_4
    move/from16 v5, v30

    .line 677
    .local v5, IMSI_M_S1_0_10bit:I
    shl-int/lit8 v5, v5, 0x1

    .line 678
    or-int v5, v5, v27

    .line 679
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    if-ltz v32, :cond_6

    const/16 v32, 0x5

    aget-byte v30, p0, v32

    .line 680
    :goto_5
    and-int/lit8 v31, v30, 0x1

    .line 681
    .local v31, tempNextDigit:I
    shl-int/lit8 v31, v31, 0x9

    .line 682
    or-int v5, v5, v31

    .line 683
    add-int/lit8 v5, v5, 0x6f

    .line 684
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/htc/android/dmportread/dm/Utility;->doBCDDigit(II)I

    move-result v18

    .line 688
    .local v18, deIMSI_M_S1_0_10bit:I
    shr-int/lit8 v6, v30, 0x1

    .line 689
    .local v6, IMSI_M_S1_1_4bit:I
    and-int/lit8 v6, v6, 0xf

    .line 690
    const/16 v32, 0xa

    move/from16 v0, v32

    if-lt v6, v0, :cond_0

    .line 691
    const/4 v6, 0x0

    .line 692
    :cond_0
    and-int/lit8 v19, v6, 0xf

    .line 695
    .local v19, deIMSI_M_S1_1_4bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 696
    shr-int/lit8 v27, v27, 0x5

    .line 697
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    if-ltz v32, :cond_7

    const/16 v32, 0x6

    aget-byte v30, p0, v32

    .line 698
    :goto_6
    and-int/lit8 v7, v30, 0x7f

    .line 699
    .local v7, IMSI_M_S1_2_10bit:I
    shl-int/lit8 v7, v7, 0x3

    .line 700
    or-int v7, v7, v27

    .line 701
    add-int/lit8 v7, v7, 0x6f

    .line 702
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v7, v0}, Lcom/htc/android/dmportread/dm/Utility;->doBCDDigit(II)I

    move-result v20

    .line 706
    .local v20, deIMSI_M_S1_2_10bit:I
    const/16 v32, 0x7

    aget-byte v32, p0, v32

    if-ltz v32, :cond_8

    const/16 v32, 0x7

    aget-byte v32, p0, v32

    :goto_7
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 707
    .local v16, binary8byte:Ljava/lang/String;
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    if-ltz v32, :cond_9

    const/16 v32, 0x6

    aget-byte v32, p0, v32

    :goto_8
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 708
    .local v15, binary7byte:Ljava/lang/String;
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v10, v0, [C

    .line 709
    .local v10, acclocChar:[C
    const/16 v32, 0x3

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 710
    const/16 v32, 0x0

    const/16 v33, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 711
    const/16 v32, 0x1

    const/16 v33, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 712
    const/16 v32, 0x2

    const/16 v33, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 713
    const/16 v32, 0x8

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([C)V

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 715
    const/16 v32, 0x9

    const/16 v33, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 716
    const/16 v32, 0xa

    const/16 v33, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 717
    const/16 v32, 0xb

    const/16 v33, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 718
    const/16 v32, 0xc

    const/16 v33, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 720
    const/16 v32, 0x8

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v25, v0

    .line 721
    .local v25, n_sid_nidChar:[C
    const/16 v32, 0x7

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 723
    const/16 v32, 0x8

    aget-byte v32, p0, v32

    if-ltz v32, :cond_a

    const/16 v32, 0x8

    aget-byte v32, p0, v32

    :goto_9
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 724
    .local v17, binary9byte:Ljava/lang/String;
    const/16 v24, 0x1

    .local v24, i:I
    :goto_a
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_b

    .line 725
    add-int/lit8 v32, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 724
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 631
    .end local v2           #IMSI_M_11_12_7bit:I
    .end local v3           #IMSI_M_CLASS_1bit:I
    .end local v4           #IMSI_M_CLASS_3bit:I
    .end local v5           #IMSI_M_S1_0_10bit:I
    .end local v6           #IMSI_M_S1_1_4bit:I
    .end local v7           #IMSI_M_S1_2_10bit:I
    .end local v8           #IMSI_M_S2_10bit:I
    .end local v9           #MCC_M_10bit:I
    .end local v10           #acclocChar:[C
    .end local v15           #binary7byte:Ljava/lang/String;
    .end local v16           #binary8byte:Ljava/lang/String;
    .end local v17           #binary9byte:Ljava/lang/String;
    .end local v18           #deIMSI_M_S1_0_10bit:I
    .end local v19           #deIMSI_M_S1_1_4bit:I
    .end local v20           #deIMSI_M_S1_2_10bit:I
    .end local v21           #decIMSI_M_11_12_7bit:I
    .end local v22           #decIMSI_M_S2_10bit:I
    .end local v23           #decMCC_M_10bit:I
    .end local v24           #i:I
    .end local v25           #n_sid_nidChar:[C
    .end local v27           #resetBit:I
    .end local v30           #tempDigit:I
    .end local v31           #tempNextDigit:I
    :cond_1
    const/16 v32, 0x0

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_0

    .line 642
    .restart local v3       #IMSI_M_CLASS_1bit:I
    .restart local v4       #IMSI_M_CLASS_3bit:I
    .restart local v27       #resetBit:I
    .restart local v30       #tempDigit:I
    :cond_2
    const/16 v32, 0x1

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_1

    .line 654
    .restart local v9       #MCC_M_10bit:I
    .restart local v23       #decMCC_M_10bit:I
    :cond_3
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_2

    .line 664
    .restart local v2       #IMSI_M_11_12_7bit:I
    .restart local v21       #decIMSI_M_11_12_7bit:I
    :cond_4
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_3

    .line 675
    .restart local v8       #IMSI_M_S2_10bit:I
    .restart local v22       #decIMSI_M_S2_10bit:I
    :cond_5
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_4

    .line 679
    .restart local v5       #IMSI_M_S1_0_10bit:I
    :cond_6
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_5

    .line 697
    .restart local v6       #IMSI_M_S1_1_4bit:I
    .restart local v18       #deIMSI_M_S1_0_10bit:I
    .restart local v19       #deIMSI_M_S1_1_4bit:I
    .restart local v31       #tempNextDigit:I
    :cond_7
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_6

    .line 706
    .restart local v7       #IMSI_M_S1_2_10bit:I
    .restart local v20       #deIMSI_M_S1_2_10bit:I
    :cond_8
    const/16 v32, 0x7

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_7

    .line 707
    .restart local v16       #binary8byte:Ljava/lang/String;
    :cond_9
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_8

    .line 723
    .restart local v10       #acclocChar:[C
    .restart local v15       #binary7byte:Ljava/lang/String;
    .restart local v25       #n_sid_nidChar:[C
    :cond_a
    const/16 v32, 0x8

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_9

    .line 726
    .restart local v17       #binary9byte:Ljava/lang/String;
    .restart local v24       #i:I
    :cond_b
    const/16 v32, 0xd

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 728
    const/16 v32, 0xf

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 729
    .local v29, sidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 731
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    if-ltz v32, :cond_c

    const/16 v32, 0x9

    aget-byte v32, p0, v32

    :goto_b
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 732
    .local v11, binary10byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_c
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_d

    .line 733
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 732
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 731
    .end local v11           #binary10byte:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_b

    .line 735
    .restart local v11       #binary10byte:Ljava/lang/String;
    :cond_d
    const/16 v32, 0xa

    aget-byte v32, p0, v32

    if-ltz v32, :cond_e

    const/16 v32, 0xa

    aget-byte v32, p0, v32

    :goto_d
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 736
    .local v12, binary11byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_e
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_f

    .line 737
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 736
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 735
    .end local v12           #binary11byte:Ljava/lang/String;
    :cond_e
    const/16 v32, 0xa

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_d

    .line 739
    .restart local v12       #binary11byte:Ljava/lang/String;
    :cond_f
    const/16 v32, 0xe

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 741
    const/16 v32, 0x10

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v26, v0

    .line 742
    .local v26, nidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 743
    const/16 v32, 0xf

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 745
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    if-ltz v32, :cond_10

    const/16 v32, 0xb

    aget-byte v32, p0, v32

    :goto_f
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 746
    .local v13, binary12byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_10
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_11

    .line 747
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 746
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 745
    .end local v13           #binary12byte:Ljava/lang/String;
    :cond_10
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_f

    .line 749
    .restart local v13       #binary12byte:Ljava/lang/String;
    :cond_11
    const/16 v32, 0xc

    aget-byte v32, p0, v32

    if-ltz v32, :cond_12

    const/16 v32, 0xc

    aget-byte v32, p0, v32

    :goto_11
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 750
    .local v14, binary13byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_12
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_13

    .line 751
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 750
    add-int/lit8 v24, v24, 0x1

    goto :goto_12

    .line 749
    .end local v14           #binary13byte:Ljava/lang/String;
    :cond_12
    const/16 v32, 0xc

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_11

    .line 752
    .restart local v14       #binary13byte:Ljava/lang/String;
    :cond_13
    const/16 v32, 0xf

    new-instance v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 754
    const/16 v32, 0x10

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 757
    const/16 v32, 0x0

    const-string v33, "%01d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 758
    const/16 v32, 0x1

    const-string v33, "%01d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 759
    const/16 v32, 0x2

    const-string v33, "%03d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 760
    const/16 v32, 0x3

    const-string v33, "%02d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 761
    const/16 v32, 0x4

    const-string v33, "%03d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 762
    const/16 v32, 0x5

    const-string v33, "%03d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 763
    const/16 v32, 0x6

    const-string v33, "%d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 764
    const/16 v32, 0x7

    const-string v33, "%03d"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 766
    return-object v28
.end method

.method public static decrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "hex"

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 803
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 804
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 805
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/android/dmportread/dm/Utility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 815
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v1}, Lcom/htc/android/dmportread/dm/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 809
    :catch_0
    move-exception v2

    .line 811
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    .local v2, len:I
    const-string v3, ""

    .line 86
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 92
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0           #c:I
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static doBCDDigit(II)I
    .locals 10
    .parameter "parInput"
    .parameter "len"

    .prologue
    const-wide/high16 v8, 0x4024

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, module:I
    const/4 v0, 0x0

    .line 441
    .local v0, digit:I
    const/4 v5, 0x0

    .line 442
    .local v5, totalRet:I
    const/4 v4, 0x0

    .line 443
    .local v4, multiply:I
    move v2, p0

    .line 444
    .local v2, input:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 446
    int-to-double v6, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 447
    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v4, v6

    .line 448
    rem-int v0, v2, v3

    .line 449
    if-nez v0, :cond_0

    .line 451
    sub-int/2addr v2, v3

    .line 460
    :goto_1
    mul-int v6, v0, v4

    add-int/2addr v5, v6

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_0
    div-int/2addr v0, v4

    .line 456
    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 457
    const/4 v0, 0x0

    .line 458
    :cond_1
    sub-int/2addr v2, v0

    goto :goto_1

    .line 463
    :cond_2
    return v5
.end method

.method public static doDecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 422
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 423
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 425
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 427
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 429
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 434
    return-object v2

    .line 431
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 432
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static doEncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 406
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, i:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwRet:Ljava/lang/Long;
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 407
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 409
    .local v3, dwVal:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 412
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 414
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 419
    return-object v2

    .line 416
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 417
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static doReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 403
    .end local p0
    :goto_0
    return-object p0

    .line 395
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 396
    .local v2, length:I
    const-string v3, ""

    .line 397
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 398
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 399
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 400
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 403
    goto :goto_0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 37
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 38
    .local v2, j:I
    const-string v4, ""

    .line 40
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, tmp:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 43
    move v1, v2

    .line 44
    add-int/lit8 v2, v2, 0x2

    .line 45
    goto :goto_0

    .line 46
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static doStringToASCII(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "isNullTerminate"

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 59
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x2

    .line 60
    .local v3, j:I
    const-string v5, ""

    .line 62
    .local v5, result:Ljava/lang/String;
    :goto_0
    if-gt v3, v4, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, tmp:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, hex:I
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    if-nez v1, :cond_1

    .line 75
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 68
    .restart local v1       #hex:I
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 69
    move v2, v3

    .line 70
    add-int/lit8 v3, v3, 0x2

    .line 71
    goto :goto_0

    .line 72
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 12
    .parameter "parDwVal"
    .parameter "parDwDigits"

    .prologue
    .line 157
    move-object v4, p0

    .line 158
    .local v4, dwVal:Ljava/lang/Long;
    move-object v2, p1

    .line 159
    .local v2, dwDigits:Ljava/lang/Long;
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .local v5, i:Ljava/lang/Long;
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, dwRet:Ljava/lang/Long;
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, dwBase:Ljava/lang/Long;
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 161
    .local v0, dwBCD:Ljava/lang/Long;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 164
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 166
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 171
    return-object v3

    .line 168
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 169
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static encodeBCDMin1([C)Ljava/lang/Long;
    .locals 13
    .parameter "pbsVal"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 174
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 175
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 176
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 177
    .local v0, bsDat:[C
    if-eqz p0, :cond_0

    .line 178
    move-object v1, p0

    .line 179
    :cond_0
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 182
    :cond_1
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 185
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/dmportread/dm/Utility;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 188
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 189
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_2

    .line 193
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 194
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 197
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 198
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 199
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 201
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 202
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/dmportread/dm/Utility;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 204
    return-object v2
.end method

.method public static encodeDMString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .parameter "IMSI_M_CLASS"
    .parameter "IMSI_ADDR_NUM"
    .parameter "MCC_M"
    .parameter "IMSI_M_11_12"
    .parameter "IMSI_M_S2"
    .parameter "IMSI_M_S1_0"
    .parameter "IMSI_M_S1_1"
    .parameter "IMSI_MI_S1_2"
    .parameter "ACCOLC"
    .parameter "LOCAL_CONTROL"
    .parameter "MOB_HOME"
    .parameter "MOB_SID"
    .parameter "MOB_NID"
    .parameter "N_SID_NID"
    .parameter "SID"
    .parameter "NID"
    .parameter "Reserved"

    .prologue
    .line 471
    const/16 v27, 0x68

    move/from16 v0, v27

    new-array v3, v0, [C

    .line 473
    .local v3, binaryChar:[C
    const/16 v27, 0x7

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 476
    new-instance v27, Ljava/math/BigInteger;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 477
    .local v15, imsi_addr_num:Ljava/lang/String;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-static {v15, v0}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 478
    const/16 v27, 0x6

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 479
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 480
    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 483
    const/16 v27, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v11

    .line 484
    .local v11, i_mcc_m:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 485
    .local v17, mcc_m:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 486
    const/16 v27, 0x0

    const/16 v28, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 487
    const/16 v27, 0x1

    const/16 v28, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 488
    const/16 v27, 0x2

    const/16 v28, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 489
    const/16 v27, 0x3

    const/16 v28, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 490
    const/16 v27, 0xa

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 491
    const/16 v27, 0xb

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 492
    const/16 v27, 0xc

    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 493
    const/16 v27, 0xd

    const/16 v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 494
    const/16 v27, 0xe

    const/16 v28, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 495
    const/16 v27, 0xf

    const/16 v28, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 498
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v6

    .line 499
    .local v6, i_imsi_m_11_12:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 500
    .local v16, imsi_m_11_12:Ljava/lang/String;
    const/16 v27, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 501
    const/16 v27, 0x8

    const/16 v28, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 502
    const/16 v27, 0x9

    const/16 v28, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 503
    const/16 v27, 0x13

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 504
    const/16 v27, 0x14

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 505
    const/16 v27, 0x15

    const/16 v28, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 506
    const/16 v27, 0x16

    const/16 v28, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 507
    const/16 v27, 0x17

    const/16 v28, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 510
    const/16 v27, 0x3

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v10

    .line 511
    .local v10, i_imsi_m_s2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 512
    .local v21, msi_m_s2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 513
    const/16 v27, 0x10

    const/16 v28, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 514
    const/16 v27, 0x11

    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 515
    const/16 v27, 0x12

    const/16 v28, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 516
    const/16 v27, 0x19

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 517
    const/16 v27, 0x1a

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 518
    const/16 v27, 0x1b

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 519
    const/16 v27, 0x1c

    const/16 v28, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 520
    const/16 v27, 0x1d

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 521
    const/16 v27, 0x1e

    const/16 v28, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 522
    const/16 v27, 0x1f

    const/16 v28, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 525
    const/16 v27, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v7

    .line 526
    .local v7, i_imsi_m_s1_0:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 527
    .local v18, msi_m_s1_0:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 528
    const/16 v27, 0x18

    const/16 v28, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 529
    const/16 v27, 0x20

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 530
    const/16 v27, 0x21

    const/16 v28, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 531
    const/16 v27, 0x22

    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 532
    const/16 v27, 0x23

    const/16 v28, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 533
    const/16 v27, 0x24

    const/16 v28, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 534
    const/16 v27, 0x25

    const/16 v28, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 535
    const/16 v27, 0x26

    const/16 v28, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 536
    const/16 v27, 0x27

    const/16 v28, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 537
    const/16 v27, 0x2f

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 540
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 541
    .local v8, i_imsi_m_s1_1:I
    if-nez v8, :cond_0

    .line 542
    const/16 v8, 0xa

    .line 543
    :cond_0
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 544
    .local v19, msi_m_s1_1:Ljava/lang/String;
    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 545
    const/16 v27, 0x2b

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 546
    const/16 v27, 0x2c

    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 547
    const/16 v27, 0x2d

    const/16 v28, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 548
    const/16 v27, 0x2e

    const/16 v28, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 551
    const/16 v27, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v9

    .line 552
    .local v9, i_imsi_m_s1_2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, msi_m_s1_2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 554
    const/16 v27, 0x28

    const/16 v28, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 555
    const/16 v27, 0x29

    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 556
    const/16 v27, 0x2a

    const/16 v28, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 557
    const/16 v27, 0x31

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 558
    const/16 v27, 0x32

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 559
    const/16 v27, 0x33

    const/16 v28, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 560
    const/16 v27, 0x34

    const/16 v28, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 561
    const/16 v27, 0x35

    const/16 v28, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 562
    const/16 v27, 0x36

    const/16 v28, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 563
    const/16 v27, 0x37

    const/16 v28, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 565
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 566
    .local v5, i_accloc:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, accloc:Ljava/lang/String;
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-static {v2, v0}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 568
    const/16 v27, 0x30

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 569
    const/16 v27, 0x3d

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 570
    const/16 v27, 0x3e

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 571
    const/16 v27, 0x3f

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 574
    const/16 v27, 0x3c

    const/16 v28, 0x0

    move-object/from16 v0, p9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 576
    const/16 v27, 0x3b

    const/16 v28, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 578
    const/16 v27, 0x3a

    const/16 v28, 0x0

    move-object/from16 v0, p11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 580
    const/16 v27, 0x39

    const/16 v28, 0x0

    move-object/from16 v0, p12

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 583
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 584
    .local v12, i_n_sid_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 585
    .local v22, n_sid_nid:Ljava/lang/String;
    const/16 v27, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 586
    const/16 v27, 0x38

    const/16 v28, 0x7

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 587
    const/16 v4, 0x41

    .local v4, i:I
    :goto_0
    const/16 v27, 0x47

    move/from16 v0, v27

    if-gt v4, v0, :cond_1

    .line 588
    add-int/lit8 v27, v4, -0x41

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 587
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 592
    .local v14, i_sid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 593
    .local v25, sid:Ljava/lang/String;
    const/16 v27, 0xf

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 594
    const/16 v4, 0x48

    :goto_1
    const/16 v27, 0x4f

    move/from16 v0, v27

    if-gt v4, v0, :cond_2

    .line 595
    add-int/lit8 v27, v4, -0x42

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 596
    :cond_2
    const/16 v4, 0x52

    :goto_2
    const/16 v27, 0x57

    move/from16 v0, v27

    if-gt v4, v0, :cond_3

    .line 597
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 596
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 598
    :cond_3
    const/16 v27, 0x40

    const/16 v28, 0xe

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 601
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 602
    .local v13, i_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 603
    .local v23, nid:Ljava/lang/String;
    const/16 v27, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/htc/android/dmportread/dm/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 604
    const/16 v27, 0x50

    const/16 v28, 0xe

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 605
    const/16 v27, 0x51

    const/16 v28, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 606
    const/16 v4, 0x58

    :goto_3
    const/16 v27, 0x5f

    move/from16 v0, v27

    if-gt v4, v0, :cond_4

    .line 607
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 606
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 608
    :cond_4
    const/16 v4, 0x62

    :goto_4
    const/16 v27, 0x67

    move/from16 v0, v27

    if-gt v4, v0, :cond_5

    .line 609
    add-int/lit8 v27, v4, -0x62

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 612
    :cond_5
    const/16 v27, 0x60

    const/16 v28, 0x0

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 613
    const/16 v27, 0x61

    const/16 v28, 0x1

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 615
    const-string v26, ""

    .line 616
    .local v26, str:Ljava/lang/String;
    const-string v24, ""

    .line 617
    .local v24, rslt:Ljava/lang/String;
    const/4 v4, 0x1

    :goto_5
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    if-ge v4, v0, :cond_7

    .line 618
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v4, -0x1

    aget-char v28, v3, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 619
    rem-int/lit8 v27, v4, 0x4

    if-nez v27, :cond_6

    .line 620
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 621
    const-string v26, ""

    .line 617
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 624
    :cond_7
    return-object v24
.end method

.method public static encrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 784
    const/4 v2, 0x0

    .line 786
    .local v2, encrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 787
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 788
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 790
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/htc/android/dmportread/dm/Utility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 796
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v2}, Lcom/htc/android/dmportread/dm/Utility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v5, "ABCDEF"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 351
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 353
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 354
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 355
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 356
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 348
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 358
    .restart local v0       #bytes:[B
    .restart local v1       #digital:Ljava/lang/String;
    .restart local v2       #hex2char:[C
    .restart local v3       #i:I
    :cond_1
    return-object v0
.end method

.method public static intToByte(I)[B
    .locals 4
    .parameter "number"

    .prologue
    .line 239
    move v2, p0

    .line 240
    .local v2, temp:I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 241
    .local v0, b:[B
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 242
    and-int/lit16 v3, v2, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 243
    shr-int/lit8 v2, v2, 0x8

    .line 241
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 7
    .parameter "parStr"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, begin:I
    move-object v2, p0

    .line 267
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 270
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 271
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :cond_3
    move v1, v0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 279
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 283
    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 208
    move-object v0, p0

    .line 209
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_0
    return-object v0
.end method

.method public static pendZeroInRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 215
    move-object v0, p0

    .line 216
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    return-object v0
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 115
    .end local p0
    :goto_0
    return-object p0

    .line 107
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 108
    .local v2, length:I
    const-string v3, ""

    .line 109
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 110
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 111
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .local v1, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 115
    goto :goto_0
.end method

.method public static revertBCDDigit(Ljava/lang/String;I)I
    .locals 5
    .parameter "inputStr"
    .parameter "len"

    .prologue
    .line 770
    const-string v2, ""

    .line 771
    .local v2, rsltStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 772
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 773
    .local v0, digit:I
    add-int/lit8 v3, v0, -0x1

    .line 774
    .local v3, tmp:I
    if-gez v3, :cond_0

    .line 775
    add-int/lit8 v3, v3, 0xa

    .line 776
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v0           #digit:I
    .end local v3           #tmp:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method
