.class public final Lcom/android/phone/HtcCdmaUtility;
.super Ljava/lang/Object;
.source "HtcCdmaUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static byteToBigHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 318
    invoke-static {p0}, Lcom/android/phone/HtcCdmaUtility;->byteToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, tmp:Ljava/lang/String;
    const-string v1, ""

    .line 320
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 321
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    .line 322
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

    .line 320
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
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

    .line 326
    :cond_1
    return-object v1
.end method

.method public static byteToHexString([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x1

    .line 305
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v1, rslt:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 308
    aget-byte v3, p0, v0

    if-ltz v3, :cond_1

    aget-byte v3, p0, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 314
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

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, s:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 247
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    .line 248
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    .line 251
    :goto_1
    mul-int/lit16 v1, v1, 0x100

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    add-int/lit16 v2, v1, 0x100

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    goto :goto_1

    .line 253
    :cond_1
    aget-byte v2, p0, v4

    if-ltz v2, :cond_2

    .line 254
    aget-byte v2, p0, v4

    add-int/2addr v1, v2

    .line 257
    :goto_2
    return v1

    .line 256
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
    .line 219
    move-wide v2, p0

    .line 220
    .local v2, val:J
    const/4 v0, 0x1

    .line 222
    .local v0, digits:I
    :goto_0
    const-wide/16 v4, 0xa

    :try_start_0
    rem-long v4, v2, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 223
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method public static decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 115
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

    .line 116
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 118
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

    .line 119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 120
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

    .line 122
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

    .line 127
    return-object v2

    .line 124
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 125
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

    .line 131
    const/16 v4, 0x8

    new-array v0, v4, [C

    .line 133
    .local v0, bsMin1:[C
    move-object v2, p0

    .line 134
    .local v2, dwVal:Ljava/lang/Long;
    new-array v1, v11, [J

    .line 135
    .local v1, dwMin1:[J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/HtcCdmaUtility;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v9

    .line 137
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    aput-wide v4, v1, v8

    .line 139
    aget-wide v4, v1, v8

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 140
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v8

    .line 142
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/HtcCdmaUtility;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v10

    .line 145
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

    .line 146
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 147
    aget-char v4, v0, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 148
    const/16 v4, 0x30

    aput-char v4, v0, v3

    .line 146
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static decodeDMString([B)[Ljava/lang/String;
    .locals 37
    .parameter "bytes"

    .prologue
    .line 569
    const/16 v32, 0x11

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 571
    .local v28, rslt:[Ljava/lang/String;
    const/16 v32, 0x0

    aget-byte v32, p0, v32

    if-ltz v32, :cond_1

    const/16 v32, 0x0

    aget-byte v30, p0, v32

    .line 572
    .local v30, tempDigit:I
    :goto_0
    and-int/lit8 v3, v30, 0xf

    .line 573
    .local v3, IMSI_M_CLASS_1bit:I
    and-int/lit8 v3, v3, 0x1

    .line 576
    and-int/lit8 v4, v30, 0xf

    .line 577
    .local v4, IMSI_M_CLASS_3bit:I
    shr-int/lit8 v4, v4, 0x3

    .line 580
    and-int/lit8 v27, v30, 0xf

    .line 581
    .local v27, resetBit:I
    shr-int/lit8 v27, v30, 0x4

    .line 582
    const/16 v32, 0x1

    aget-byte v32, p0, v32

    if-ltz v32, :cond_2

    const/16 v32, 0x1

    aget-byte v30, p0, v32

    .line 583
    :goto_1
    move/from16 v9, v30

    .line 584
    .local v9, MCC_M_10bit:I
    and-int/lit8 v9, v9, 0x3f

    .line 585
    shl-int/lit8 v9, v9, 0x4

    .line 586
    or-int v9, v9, v27

    .line 587
    add-int/lit8 v9, v9, 0x6f

    .line 590
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v9, v0}, Lcom/android/phone/HtcCdmaUtility;->doBCDDigit(II)I

    move-result v23

    .line 592
    .local v23, decMCC_M_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xc0

    move/from16 v27, v0

    .line 593
    shr-int/lit8 v27, v27, 0x6

    .line 594
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    if-ltz v32, :cond_3

    const/16 v32, 0x2

    aget-byte v30, p0, v32

    .line 595
    :goto_2
    and-int/lit8 v2, v30, 0x1f

    .line 596
    .local v2, IMSI_M_11_12_7bit:I
    shl-int/lit8 v2, v2, 0x2

    .line 597
    or-int v2, v2, v27

    .line 598
    add-int/lit8 v2, v2, 0xb

    .line 599
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-static {v2, v0}, Lcom/android/phone/HtcCdmaUtility;->doBCDDigit(II)I

    move-result v21

    .line 602
    .local v21, decIMSI_M_11_12_7bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 603
    shr-int/lit8 v27, v27, 0x5

    .line 604
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    if-ltz v32, :cond_4

    const/16 v32, 0x3

    aget-byte v30, p0, v32

    .line 605
    :goto_3
    and-int/lit8 v8, v30, 0x7f

    .line 606
    .local v8, IMSI_M_S2_10bit:I
    shl-int/lit8 v8, v8, 0x3

    .line 607
    or-int v8, v8, v27

    .line 608
    add-int/lit8 v8, v8, 0x6f

    .line 609
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v8, v0}, Lcom/android/phone/HtcCdmaUtility;->doBCDDigit(II)I

    move-result v22

    .line 613
    .local v22, decIMSI_M_S2_10bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0x80

    move/from16 v27, v0

    .line 614
    shr-int/lit8 v27, v27, 0x7

    .line 615
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    if-ltz v32, :cond_5

    const/16 v32, 0x4

    aget-byte v30, p0, v32

    .line 616
    :goto_4
    move/from16 v5, v30

    .line 617
    .local v5, IMSI_M_S1_0_10bit:I
    shl-int/lit8 v5, v5, 0x1

    .line 618
    or-int v5, v5, v27

    .line 619
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    if-ltz v32, :cond_6

    const/16 v32, 0x5

    aget-byte v30, p0, v32

    .line 620
    :goto_5
    and-int/lit8 v31, v30, 0x1

    .line 621
    .local v31, tempNextDigit:I
    shl-int/lit8 v31, v31, 0x9

    .line 622
    or-int v5, v5, v31

    .line 623
    add-int/lit8 v5, v5, 0x6f

    .line 624
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/android/phone/HtcCdmaUtility;->doBCDDigit(II)I

    move-result v18

    .line 628
    .local v18, deIMSI_M_S1_0_10bit:I
    shr-int/lit8 v6, v30, 0x1

    .line 629
    .local v6, IMSI_M_S1_1_4bit:I
    and-int/lit8 v6, v6, 0xf

    .line 630
    const/16 v32, 0xa

    move/from16 v0, v32

    if-lt v6, v0, :cond_0

    .line 631
    const/4 v6, 0x0

    .line 632
    :cond_0
    and-int/lit8 v19, v6, 0xf

    .line 635
    .local v19, deIMSI_M_S1_1_4bit:I
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xe0

    move/from16 v27, v0

    .line 636
    shr-int/lit8 v27, v27, 0x5

    .line 637
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    if-ltz v32, :cond_7

    const/16 v32, 0x6

    aget-byte v30, p0, v32

    .line 638
    :goto_6
    and-int/lit8 v7, v30, 0x7f

    .line 639
    .local v7, IMSI_M_S1_2_10bit:I
    shl-int/lit8 v7, v7, 0x3

    .line 640
    or-int v7, v7, v27

    .line 641
    add-int/lit8 v7, v7, 0x6f

    .line 642
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-static {v7, v0}, Lcom/android/phone/HtcCdmaUtility;->doBCDDigit(II)I

    move-result v20

    .line 646
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

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 647
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

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 648
    .local v15, binary7byte:Ljava/lang/String;
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v10, v0, [C

    .line 649
    .local v10, acclocChar:[C
    const/16 v32, 0x3

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 650
    const/16 v32, 0x0

    const/16 v33, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 651
    const/16 v32, 0x1

    const/16 v33, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 652
    const/16 v32, 0x2

    const/16 v33, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v10, v32

    .line 653
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 655
    const/16 v32, 0x9

    const/16 v33, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 656
    const/16 v32, 0xa

    const/16 v33, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 657
    const/16 v32, 0xb

    const/16 v33, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 658
    const/16 v32, 0xc

    const/16 v33, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 660
    const/16 v32, 0x8

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v25, v0

    .line 661
    .local v25, n_sid_nidChar:[C
    const/16 v32, 0x7

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 663
    const/16 v32, 0x8

    aget-byte v32, p0, v32

    if-ltz v32, :cond_a

    const/16 v32, 0x8

    aget-byte v32, p0, v32

    :goto_9
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 664
    .local v17, binary9byte:Ljava/lang/String;
    const/16 v24, 0x1

    .local v24, i:I
    :goto_a
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_b

    .line 665
    add-int/lit8 v32, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v25, v32

    .line 664
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 571
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

    .line 582
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

    .line 594
    .restart local v9       #MCC_M_10bit:I
    .restart local v23       #decMCC_M_10bit:I
    :cond_3
    const/16 v32, 0x2

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_2

    .line 604
    .restart local v2       #IMSI_M_11_12_7bit:I
    .restart local v21       #decIMSI_M_11_12_7bit:I
    :cond_4
    const/16 v32, 0x3

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_3

    .line 615
    .restart local v8       #IMSI_M_S2_10bit:I
    .restart local v22       #decIMSI_M_S2_10bit:I
    :cond_5
    const/16 v32, 0x4

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_4

    .line 619
    .restart local v5       #IMSI_M_S1_0_10bit:I
    :cond_6
    const/16 v32, 0x5

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v30, v0

    goto/16 :goto_5

    .line 637
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

    .line 646
    .restart local v7       #IMSI_M_S1_2_10bit:I
    .restart local v20       #deIMSI_M_S1_2_10bit:I
    :cond_8
    const/16 v32, 0x7

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_7

    .line 647
    .restart local v16       #binary8byte:Ljava/lang/String;
    :cond_9
    const/16 v32, 0x6

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto/16 :goto_8

    .line 663
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

    .line 666
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

    .line 668
    const/16 v32, 0xf

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 669
    .local v29, sidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 671
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    if-ltz v32, :cond_c

    const/16 v32, 0x9

    aget-byte v32, p0, v32

    :goto_b
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, binary10byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_c
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_d

    .line 673
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 672
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 671
    .end local v11           #binary10byte:Ljava/lang/String;
    :cond_c
    const/16 v32, 0x9

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_b

    .line 675
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

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 676
    .local v12, binary11byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_e
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_f

    .line 677
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v29, v32

    .line 676
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 675
    .end local v12           #binary11byte:Ljava/lang/String;
    :cond_e
    const/16 v32, 0xa

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_d

    .line 679
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

    .line 681
    const/16 v32, 0x10

    move/from16 v0, v32

    new-array v0, v0, [C

    move-object/from16 v26, v0

    .line 682
    .local v26, nidChar:[C
    const/16 v32, 0xe

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 683
    const/16 v32, 0xf

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 685
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    if-ltz v32, :cond_10

    const/16 v32, 0xb

    aget-byte v32, p0, v32

    :goto_f
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x8

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 686
    .local v13, binary12byte:Ljava/lang/String;
    const/16 v24, 0x0

    :goto_10
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_11

    .line 687
    add-int/lit8 v32, v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 686
    add-int/lit8 v24, v24, 0x1

    goto :goto_10

    .line 685
    .end local v13           #binary12byte:Ljava/lang/String;
    :cond_10
    const/16 v32, 0xb

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_f

    .line 689
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

    invoke-static/range {v32 .. v33}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 690
    .local v14, binary13byte:Ljava/lang/String;
    const/16 v24, 0x2

    :goto_12
    const/16 v32, 0x7

    move/from16 v0, v24

    move/from16 v1, v32

    if-gt v0, v1, :cond_13

    .line 691
    add-int/lit8 v32, v24, -0x2

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v33

    aput-char v33, v26, v32

    .line 690
    add-int/lit8 v24, v24, 0x1

    goto :goto_12

    .line 689
    .end local v14           #binary13byte:Ljava/lang/String;
    :cond_12
    const/16 v32, 0xc

    aget-byte v32, p0, v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x100

    move/from16 v32, v0

    goto :goto_11

    .line 692
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

    .line 694
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

    .line 697
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

    .line 698
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

    .line 699
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 700
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 701
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 702
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 703
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

    .line 704
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

    invoke-static/range {v33 .. v34}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v28, v32

    .line 706
    return-object v28
.end method

.method public static decrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "hex"

    .prologue
    .line 738
    const/4 v1, 0x0

    .line 740
    .local v1, decrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 741
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 742
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 743
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/phone/HtcCdmaUtility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 752
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v1}, Lcom/android/phone/HtcCdmaUtility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static doASCIIToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 81
    .local v2, len:I
    const-string v3, ""

    .line 82
    .local v3, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, c:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 86
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

    .line 88
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
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

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, module:I
    const/4 v0, 0x0

    .line 384
    .local v0, digit:I
    const/4 v5, 0x0

    .line 385
    .local v5, totalRet:I
    const/4 v4, 0x0

    .line 386
    .local v4, multiply:I
    move v2, p0

    .line 387
    .local v2, input:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 388
    int-to-double v6, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .line 389
    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v4, v6

    .line 390
    rem-int v0, v2, v3

    .line 391
    if-nez v0, :cond_0

    .line 392
    sub-int/2addr v2, v3

    .line 400
    :goto_1
    mul-int v6, v0, v4

    add-int/2addr v5, v6

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_0
    div-int/2addr v0, v4

    .line 396
    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 398
    :cond_1
    sub-int/2addr v2, v0

    goto :goto_1

    .line 403
    :cond_2
    return v5
.end method

.method public static doDecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 11
    .parameter "parDwVal"
    .parameter "dwDigits"

    .prologue
    .line 366
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

    .line 367
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 369
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

    .line 370
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 371
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

    .line 373
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

    .line 378
    return-object v2

    .line 375
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 376
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
    .line 350
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

    .line 351
    .local v0, dwBCD:Ljava/lang/Long;
    move-object v3, p0

    .line 353
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

    .line 354
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 355
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 356
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

    .line 358
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

    .line 363
    return-object v2

    .line 360
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 361
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
    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 347
    .end local p0
    :goto_0
    return-object p0

    .line 339
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 340
    .local v2, length:I
    const-string v3, ""

    .line 341
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 342
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 343
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 344
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

    .line 345
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 347
    goto :goto_0
.end method

.method public static doStringToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 33
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x2

    .line 34
    .local v2, j:I
    const-string v4, ""

    .line 36
    .local v4, result:Ljava/lang/String;
    :goto_0
    if-gt v2, v3, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 38
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

    .line 39
    move v1, v2

    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    goto :goto_0

    .line 42
    .end local v5           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static doStringToASCII(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "str"
    .parameter "isNullTerminate"

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 55
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x2

    .line 56
    .local v3, j:I
    const-string v5, ""

    .line 58
    .local v5, result:Ljava/lang/String;
    :goto_0
    if-gt v3, v4, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, tmp:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, hex:I
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    if-nez v1, :cond_1

    .line 71
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 64
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

    .line 65
    move v2, v3

    .line 66
    add-int/lit8 v3, v3, 0x2

    .line 67
    goto :goto_0

    .line 68
    .end local v1           #hex:I
    .end local v6           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 12
    .parameter "parDwVal"
    .parameter "parDwDigits"

    .prologue
    .line 153
    move-object v4, p0

    .line 154
    .local v4, dwVal:Ljava/lang/Long;
    move-object v2, p1

    .line 155
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

    .line 157
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

    .line 158
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 160
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

    .line 162
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

    .line 167
    return-object v3

    .line 164
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 165
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

    .line 170
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, dwVal:Ljava/lang/Long;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 171
    .local v3, dwVal1:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 172
    .local v1, bsMin1:[C
    new-array v0, v7, [C

    .line 173
    .local v0, bsDat:[C
    if-eqz p0, :cond_0

    .line 174
    move-object v1, p0

    .line 175
    :cond_0
    array-length v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 176
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

    .line 178
    :cond_1
    invoke-static {v1, v8, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 180
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 181
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/HtcCdmaUtility;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 184
    const/16 v4, 0x30

    aput-char v4, v0, v11

    aput-char v4, v0, v8

    .line 185
    aget-char v4, v1, v7

    aput-char v4, v0, v12

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-nez v4, :cond_2

    .line 189
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 190
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 193
    const/4 v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v8

    .line 194
    const/4 v4, 0x5

    aget-char v4, v1, v4

    aput-char v4, v0, v11

    .line 195
    const/4 v4, 0x6

    aget-char v4, v1, v4

    aput-char v4, v0, v12

    .line 197
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 198
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/HtcCdmaUtility;->encodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 200
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
    .line 411
    const/16 v27, 0x68

    move/from16 v0, v27

    new-array v3, v0, [C

    .line 413
    .local v3, binaryChar:[C
    const/16 v27, 0x7

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 416
    new-instance v27, Ljava/math/BigInteger;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 417
    .local v15, imsi_addr_num:Ljava/lang/String;
    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-static {v15, v0}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 418
    const/16 v27, 0x6

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 419
    const/16 v27, 0x5

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 420
    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 423
    const/16 v27, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v11

    .line 424
    .local v11, i_mcc_m:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 425
    .local v17, mcc_m:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 426
    const/16 v27, 0x0

    const/16 v28, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 427
    const/16 v27, 0x1

    const/16 v28, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 428
    const/16 v27, 0x2

    const/16 v28, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 429
    const/16 v27, 0x3

    const/16 v28, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 430
    const/16 v27, 0xa

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 431
    const/16 v27, 0xb

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 432
    const/16 v27, 0xc

    const/16 v28, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 433
    const/16 v27, 0xd

    const/16 v28, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 434
    const/16 v27, 0xe

    const/16 v28, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 435
    const/16 v27, 0xf

    const/16 v28, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 438
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v6

    .line 439
    .local v6, i_imsi_m_11_12:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, imsi_m_11_12:Ljava/lang/String;
    const/16 v27, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 441
    const/16 v27, 0x8

    const/16 v28, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 442
    const/16 v27, 0x9

    const/16 v28, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 443
    const/16 v27, 0x13

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 444
    const/16 v27, 0x14

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 445
    const/16 v27, 0x15

    const/16 v28, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 446
    const/16 v27, 0x16

    const/16 v28, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 447
    const/16 v27, 0x17

    const/16 v28, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 450
    const/16 v27, 0x3

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v10

    .line 451
    .local v10, i_imsi_m_s2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 452
    .local v21, msi_m_s2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 453
    const/16 v27, 0x10

    const/16 v28, 0x7

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 454
    const/16 v27, 0x11

    const/16 v28, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 455
    const/16 v27, 0x12

    const/16 v28, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 456
    const/16 v27, 0x19

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 457
    const/16 v27, 0x1a

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 458
    const/16 v27, 0x1b

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 459
    const/16 v27, 0x1c

    const/16 v28, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 460
    const/16 v27, 0x1d

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 461
    const/16 v27, 0x1e

    const/16 v28, 0x5

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 462
    const/16 v27, 0x1f

    const/16 v28, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 465
    const/16 v27, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v7

    .line 466
    .local v7, i_imsi_m_s1_0:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 467
    .local v18, msi_m_s1_0:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 468
    const/16 v27, 0x18

    const/16 v28, 0x9

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 469
    const/16 v27, 0x20

    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 470
    const/16 v27, 0x21

    const/16 v28, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 471
    const/16 v27, 0x22

    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 472
    const/16 v27, 0x23

    const/16 v28, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 473
    const/16 v27, 0x24

    const/16 v28, 0x5

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 474
    const/16 v27, 0x25

    const/16 v28, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 475
    const/16 v27, 0x26

    const/16 v28, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 476
    const/16 v27, 0x27

    const/16 v28, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 477
    const/16 v27, 0x2f

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 480
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 481
    .local v8, i_imsi_m_s1_1:I
    if-nez v8, :cond_0

    .line 482
    const/16 v8, 0xa

    .line 483
    :cond_0
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 484
    .local v19, msi_m_s1_1:Ljava/lang/String;
    const/16 v27, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 485
    const/16 v27, 0x2b

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 486
    const/16 v27, 0x2c

    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 487
    const/16 v27, 0x2d

    const/16 v28, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 488
    const/16 v27, 0x2e

    const/16 v28, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 491
    const/16 v27, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->revertBCDDigit(Ljava/lang/String;I)I

    move-result v9

    .line 492
    .local v9, i_imsi_m_s1_2:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 493
    .local v20, msi_m_s1_2:Ljava/lang/String;
    const/16 v27, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 494
    const/16 v27, 0x28

    const/16 v28, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 495
    const/16 v27, 0x29

    const/16 v28, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 496
    const/16 v27, 0x2a

    const/16 v28, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 497
    const/16 v27, 0x31

    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 498
    const/16 v27, 0x32

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 499
    const/16 v27, 0x33

    const/16 v28, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 500
    const/16 v27, 0x34

    const/16 v28, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 501
    const/16 v27, 0x35

    const/16 v28, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 502
    const/16 v27, 0x36

    const/16 v28, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 503
    const/16 v27, 0x37

    const/16 v28, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 505
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 506
    .local v5, i_accloc:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, accloc:Ljava/lang/String;
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-static {v2, v0}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 508
    const/16 v27, 0x30

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 509
    const/16 v27, 0x3d

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 510
    const/16 v27, 0x3e

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 511
    const/16 v27, 0x3f

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 514
    const/16 v27, 0x3c

    const/16 v28, 0x0

    move-object/from16 v0, p9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 516
    const/16 v27, 0x3b

    const/16 v28, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 518
    const/16 v27, 0x3a

    const/16 v28, 0x0

    move-object/from16 v0, p11

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 520
    const/16 v27, 0x39

    const/16 v28, 0x0

    move-object/from16 v0, p12

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 523
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 524
    .local v12, i_n_sid_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 525
    .local v22, n_sid_nid:Ljava/lang/String;
    const/16 v27, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 526
    const/16 v27, 0x38

    const/16 v28, 0x7

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 527
    const/16 v4, 0x41

    .local v4, i:I
    :goto_0
    const/16 v27, 0x47

    move/from16 v0, v27

    if-gt v4, v0, :cond_1

    .line 528
    add-int/lit8 v27, v4, -0x41

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 532
    .local v14, i_sid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 533
    .local v25, sid:Ljava/lang/String;
    const/16 v27, 0xf

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 534
    const/16 v4, 0x48

    :goto_1
    const/16 v27, 0x4f

    move/from16 v0, v27

    if-gt v4, v0, :cond_2

    .line 535
    add-int/lit8 v27, v4, -0x42

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 534
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 536
    :cond_2
    const/16 v4, 0x52

    :goto_2
    const/16 v27, 0x57

    move/from16 v0, v27

    if-gt v4, v0, :cond_3

    .line 537
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 538
    :cond_3
    const/16 v27, 0x40

    const/16 v28, 0xe

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 541
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 542
    .local v13, i_nid:I
    new-instance v27, Ljava/math/BigInteger;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 543
    .local v23, nid:Ljava/lang/String;
    const/16 v27, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaUtility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 544
    const/16 v27, 0x50

    const/16 v28, 0xe

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 545
    const/16 v27, 0x51

    const/16 v28, 0xd

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 546
    const/16 v4, 0x58

    :goto_3
    const/16 v27, 0x5f

    move/from16 v0, v27

    if-gt v4, v0, :cond_4

    .line 547
    add-int/lit8 v27, v4, -0x52

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 548
    :cond_4
    const/16 v4, 0x62

    :goto_4
    const/16 v27, 0x67

    move/from16 v0, v27

    if-gt v4, v0, :cond_5

    .line 549
    add-int/lit8 v27, v4, -0x62

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    aput-char v27, v3, v4

    .line 548
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 552
    :cond_5
    const/16 v27, 0x60

    const/16 v28, 0x0

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 553
    const/16 v27, 0x61

    const/16 v28, 0x1

    move-object/from16 v0, p16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    aput-char v28, v3, v27

    .line 555
    const-string v26, ""

    .line 556
    .local v26, str:Ljava/lang/String;
    const-string v24, ""

    .line 557
    .local v24, rslt:Ljava/lang/String;
    const/4 v4, 0x1

    :goto_5
    array-length v0, v3

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    if-ge v4, v0, :cond_7

    .line 558
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

    .line 559
    rem-int/lit8 v27, v4, 0x4

    if-nez v27, :cond_6

    .line 560
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

    .line 561
    const-string v26, ""

    .line 557
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 564
    :cond_7
    return-object v24
.end method

.method public static encrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 723
    const/4 v2, 0x0

    .line 725
    .local v2, encrypted:[B
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 726
    .local v3, secret:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 727
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 729
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/phone/HtcCdmaUtility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 734
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-static {v2}, Lcom/android/phone/HtcCdmaUtility;->byteToBigHexString([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 730
    :catch_0
    move-exception v1

    .line 731
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByte(Ljava/lang/String;Z)[B
    .locals 7
    .parameter "input"
    .parameter "lowercase"

    .prologue
    .line 292
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

    .line 294
    .local v1, digital:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 295
    .local v2, hex2char:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 297
    .local v0, bytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 298
    mul-int/lit8 v5, v3, 0x2

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    mul-int/lit8 v4, v5, 0x10

    .line 299
    .local v4, temp:I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v5, v2, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 300
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    .end local v0           #bytes:[B
    .end local v1           #digital:Ljava/lang/String;
    .end local v2           #hex2char:[C
    .end local v3           #i:I
    .end local v4           #temp:I
    :cond_0
    const-string v5, "abcdef"

    goto :goto_0

    .line 302
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
    .line 235
    move v2, p0

    .line 236
    .local v2, temp:I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 237
    .local v0, b:[B
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 238
    and-int/lit16 v3, v2, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 239
    shr-int/lit8 v2, v2, 0x8

    .line 237
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 241
    :cond_0
    return-object v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 7
    .parameter "parStr"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, begin:I
    move-object v2, p0

    .line 263
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 267
    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :cond_3
    move v1, v0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 279
    goto :goto_0
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 204
    move-object v0, p0

    .line 205
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 206
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

    .line 208
    :cond_0
    return-object v0
.end method

.method public static pendZeroInRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "cmd"
    .parameter "digits"

    .prologue
    .line 211
    move-object v0, p0

    .line 212
    .local v0, reslt:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 213
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

    .line 215
    :cond_0
    return-object v0
.end method

.method public static reverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "val"

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 111
    .end local p0
    :goto_0
    return-object p0

    .line 103
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 104
    .local v2, length:I
    const-string v3, ""

    .line 105
    .local v3, reverse:Ljava/lang/String;
    move-object v4, p0

    .line 106
    .local v4, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 108
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

    .line 109
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #len:I
    :cond_1
    move-object p0, v3

    .line 111
    goto :goto_0
.end method

.method public static revertBCDDigit(Ljava/lang/String;I)I
    .locals 5
    .parameter "inputStr"
    .parameter "len"

    .prologue
    .line 709
    const-string v2, ""

    .line 710
    .local v2, rsltStr:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 711
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 712
    .local v0, digit:I
    add-int/lit8 v3, v0, -0x1

    .line 713
    .local v3, tmp:I
    if-gez v3, :cond_0

    .line 714
    add-int/lit8 v3, v3, 0xa

    .line 715
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .end local v0           #digit:I
    .end local v3           #tmp:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method
